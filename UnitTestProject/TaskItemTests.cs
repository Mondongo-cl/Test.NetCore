﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace TodoList.Domain.Tests
{
    [TestClass()]
    public class TaskItemTests
    {

        [TestMethod]
        public void TestEnum()
        {
            String value = "Created";
            object r = null;
            Enum.TryParse(typeof(TaskItemStatus), value, out r);
            Assert.IsNotNull(r);
        }
        
        [TestMethod()]
        public void TaskItemTest()
        {

            TaskItem t = new TaskItem
            {
                Description = null,
                Id = Guid.Empty,
                Name = null,
                Status = TaskItemStatus.Created
            };

            Assert.IsNotNull(t);
        }

        [TestMethod()]
        public void TaskItemTestDesc()
        {

            TaskItem t = new TaskItem
            {
                Description = "Test",
                Id = Guid.Empty,
                Name = null,
                Status = 0
            };

            Assert.IsNotNull(t);
            Assert.AreSame("Test",t.Description);
        }


        [TestMethod()]
        public void TaskItemTestGuid()
        {
            Guid g = Guid.NewGuid();
            TaskItem t = new TaskItem
            {
                Description = null,
                Id = g,
                Name = null,
                Status = 0
            };

            Assert.IsNotNull(t);
            Assert.AreEqual(g, t.Id);
        }


        [TestMethod()]
        public void TaskItemTestName()
        {

            TaskItem t = new TaskItem
            {
                Description = null,
                Id = Guid.Empty,
                Name = "Name",
                Status = 0
            };

            Assert.IsNotNull(t);
            Assert.AreEqual("Name", t.Name);
        }

        [TestMethod()]
        public void TaskItemTestStatus()
        {

            TaskItem t = new TaskItem
            {
                Description = null,
                Id = Guid.Empty,
                Name = null,
                Status = TaskItemStatus.Delayed
            };

            Assert.IsNotNull(t);
            Assert.AreEqual(TaskItemStatus.Delayed, t.Status);
        }

    }
}