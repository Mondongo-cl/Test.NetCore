using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            TodoListService.UselessClass c = new TodoListService.UselessClass();
            c.Valor = 1;
            Assert.AreEqual(1, c.Valor);
            Assert.AreEqual("1", c.ToString());
        }

    }
}
