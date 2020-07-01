using Microsoft.VisualStudio.TestTools.UnitTesting;
using TodoList.WebApi.Controllers;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace TodoList.WebApi.Controllers.Tests
{
    [TestClass()]
    public class TodoListControllerTests
    {
        [TestMethod()]
        public void GetAllTest()
        {
            TodoListController c = new TodoListController();
            var data = c.Get();
            Assert.IsNotNull(data.ToArray());
            Assert.AreNotSame(0, data.Count());
        }

        [TestMethod]
        public void AddNewItem()
        {
            TodoListController c = new TodoListController();
            c.Post(new TaskItem {
                Description="Unit Test",
                Id = Guid.NewGuid(),
                Name="My Task Name",
                Status= Domain.TaskItemStatus.Caceled
            }).Wait();

            var data = c.Get();

            Assert.IsNotNull(data.ToArray());
            Assert.AreSame(1, data.Count());

        }
    }
}