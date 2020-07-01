﻿using Microsoft.ServiceFabric.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ServiceFabric.Mocks;
using System;
using System.Fabric;
using System.Linq;
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

        TestContext TestContext
        {
            get;
            set;
        }

        [TestInitialize]
        public void init()
        {
            _context = MockStatefulServiceContextFactory.Default;
            _stateManager = (IReliableStateManagerReplica)new MockReliableStateManager();
            _service = new TodoListService.TodoListService(_context, _stateManager);
            ((TodoListService.TodoListService)_service).InvokeRunAsync(CancellationToken.None);
        }

        [TestMethod()]
        public void GetAllTest()
        {
            TodoListController c = new TodoListController(_service);
            var data = c.Get();
            Assert.IsNotNull(data.ToArray());
            Assert.AreNotSame(0, data.Count());
        }

        [TestMethod]
        public void AddNewItem()
        {
            TodoListController c = new TodoListController(_service);
            Guid elementId = Guid.NewGuid();
            c.Post(new TaskItem
            {
                Description = "Unit Test",
                Id = elementId,
                Name = "My Task Name",
                Status = Domain.TaskItemStatus.Caceled
            }).Wait();

            var data = c.Get();

            Assert.IsNotNull(data.ToArray());
            Assert.IsTrue(1 == data.Count());
            foreach(var i in data)
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