using Microsoft.VisualStudio.TestTools.UnitTesting;
using TodoListService;

namespace UnitTestProject
{
    [TestClass]
    public class EventSourceTests
    {
        [TestMethod]
        public void TestMessage()
        {

            var c =
                ServiceEventSource.Current;
            Assert.IsNotNull(c);
            c.Message("Send Message");
        }

        [TestMethod]
        public void TestWrite()
        {

            var c =
                ServiceEventSource.Current;
            Assert.IsNotNull(c);
            c.Write("Dummy Event");
        }
    }
}
