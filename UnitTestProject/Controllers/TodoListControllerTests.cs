using Microsoft.ServiceFabric.Data;
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
        StatefulServiceContext context = null;
        IReliableStateManagerReplica stateManager = null;
        ITaskItemService _service = null;
        [TestInitialize]
        public void init()
        {
            context = MockStatefulServiceContextFactory.Default;
            stateManager = (IReliableStateManagerReplica)new MockReliableStateManager();
            _service = new TodoListService.TodoListService(context, stateManager);
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
            c.Post(new TaskItem
            {
                Description = "Unit Test",
                Id = Guid.NewGuid(),
                Name = "My Task Name",
                Status = Domain.TaskItemStatus.Caceled
            }).Wait();

            var data = c.Get();

            Assert.IsNotNull(data.ToArray());
            Assert.IsTrue(0 < data.Count());

        }
    }
}