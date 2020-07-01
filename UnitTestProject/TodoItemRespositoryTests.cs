using Microsoft.VisualStudio.TestTools.UnitTesting;
using TodoListService;
using System;
using System.Collections.Generic;
using System.Text;
using ServiceFabric.Mocks;
using System.Linq;

namespace TodoListService.Tests
{
    [TestClass()]
    public class TodoItemRespositoryTests
    {
        [TestMethod()]
        public void AddTaskItemTest()
        {
            MockReliableStateManager manager = new MockReliableStateManager();
            
            TodoItemRespository repo = new TodoItemRespository(manager);

            TodoList.Domain.TaskItem myItem = new TodoList.Domain.TaskItem
            {
                Id = Guid.NewGuid(),
                Description = "",
                Name = "",
                Status = TodoList.Domain.TaskItemStatus.InProgress
            };
            var t = repo.AddTaskItem(myItem).GetAwaiter();

            t.GetResult();

            Assert.IsNotNull(repo.GetAllTaskItems().Result);
            var otherItem = repo.GetAllTaskItems().Result.FirstOrDefault();
            Assert.AreSame(otherItem, myItem);

        }

        [TestMethod()]
        public void GetAllTaskItemsTest()
        {
            MockReliableStateManager manager = new MockReliableStateManager();
            TodoItemRespository repo = new TodoItemRespository(manager);

            TodoList.Domain.TaskItem myItem = new TodoList.Domain.TaskItem
            {
                Id = Guid.NewGuid(),
                Description = "",
                Name = "",
                Status = TodoList.Domain.TaskItemStatus.InProgress
            };

            var t = repo
                .AddTaskItem(myItem)
                .ContinueWith(
                (ct) => {
                    myItem.Id = Guid.NewGuid();
                    repo.AddTaskItem(myItem).GetAwaiter().GetResult();
                });

            Assert.IsNotNull(repo.GetAllTaskItems().Result);
            var otherItem = repo.GetAllTaskItems().Result;
            Assert.IsTrue(otherItem.Count() > 0);
            Assert.IsTrue(otherItem.Contains(myItem));
        }
    }
}