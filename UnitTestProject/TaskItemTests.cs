using Microsoft.VisualStudio.TestTools.UnitTesting;
using TodoList.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace TodoList.Domain.Tests
{
    [TestClass()]
    public class TaskItemTests
    {
        [TestMethod()]
        public void TaskItemTest()
        {
            TaskItem t = new TaskItem {
                Description=null,
                Id=Guid.Empty,
                Name=null,
                Status=0
            };

            Assert.IsNotNull(t);
        }
    }
}