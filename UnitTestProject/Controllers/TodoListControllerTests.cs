﻿using Microsoft.ServiceFabric.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ServiceFabric.Mocks;
using System;
using System.Fabric;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using TodoList.Domain;

namespace TodoList.WebApi.Controllers.Tests
{
    [TestClass()]
    public class TodoListControllerTests
    {
        StatefulServiceContext _context = null;
        IReliableStateManagerReplica _stateManager = null;
        ITaskItemService _service = null;
        TestContext _testContext;
        CancellationTokenSource _cancelationTokenSource;

        public TestContext TestContext
        {
            get { return _testContext; }
            set {_testContext = value; }
        }


        [TestCleanup]
        public void finalize()
        {
            if(_cancelationTokenSource != null)
            {
                if(!_cancelationTokenSource.IsCancellationRequested)
                {
                    _cancelationTokenSource.Cancel();
                }
            }
        }

        [TestInitialize]
        public void init()
        {
            _context = MockStatefulServiceContextFactory.Default;
            _stateManager = (IReliableStateManagerReplica)new MockReliableStateManager();
            _service = new TodoListService.TodoListService(_context, _stateManager);
            _cancelationTokenSource = new CancellationTokenSource();
            ((TodoListService.TodoListService)_service).InvokeRunAsync(_cancelationTokenSource.Token);
        }

        [TestMethod()]
        public void GetAllTest()
        {
            TodoListController c = new TodoListController(_service);
            TaskItem newTaskItem = new TaskItem
            {
                Description = "GetAllTest",
                Id = Guid.NewGuid(),
                Name = "Task GetAllTest",
                Status = Domain.TaskItemStatus.Complete
            };
            c.Post(newTaskItem);

            var data = c.Get();
            System.Collections.Generic.IAsyncEnumerator<TaskItem> currentEnumerator = data.GetAsyncEnumerator();
            Assert.IsNotNull(currentEnumerator);
            Assert.IsTrue(currentEnumerator.MoveNextAsync().Result);
            Assert.IsNotNull(currentEnumerator.Current);
        }

        [TestMethod]
        public void AddNewItem()
        {
            TodoListController c = new TodoListController(_service);
            Guid elementId = Guid.NewGuid();
            TaskItem newTaskItem = new TaskItem
            {
                Description = "Unit Test",
                Id = elementId,
                Name = "My Task Name",
                Status = Domain.TaskItemStatus.Caceled
            };
            c.Post(newTaskItem).Wait();

            var data = c.Get();

            System.Collections.Generic.IAsyncEnumerator<TaskItem> asyncEnumerator = data.GetAsyncEnumerator();
            Assert.IsTrue(asyncEnumerator.MoveNextAsync().Result);
            Assert.IsTrue(elementId == asyncEnumerator.Current.Id);
            var i = asyncEnumerator.Current;
            TestContext.WriteLine($"TaskName ={i.Name}\nTask Description={i.Description}\nTask Id = {i.Id}\nTask Status = {i.Status}");

            Microsoft.ServiceFabric.Data.Collections.IReliableDictionary<Guid, TodoList.Domain.TaskItem> _list =
                _stateManager.GetOrAddAsync<Microsoft.ServiceFabric.Data.Collections.IReliableDictionary<Guid, TodoList.Domain.TaskItem>>("todo-list").Result;

            using (var trx = _stateManager.CreateTransaction())
            {
                var fi = _list.TryGetValueAsync(trx, elementId);
                Assert.AreEqual(fi.Result.Value.Id, elementId);
            }


        }
    }
}