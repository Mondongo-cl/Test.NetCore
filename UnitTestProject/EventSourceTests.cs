using Microsoft.VisualStudio.TestTools.UnitTesting;
using ServiceFabric.Mocks;
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
        public void TestServiceMessage()
        {

            var c =
                ServiceEventSource.Current;
            Assert.IsNotNull(c);
            var f = MockStatefulServiceContextFactory.Default;
            c.ServiceMessage(f, "Send Message", null);
        }

        [TestMethod]
        public void TestServiceRequestStartStop()
        {

            var c =
                ServiceEventSource.Current;
            Assert.IsNotNull(c);
            var f = MockStatefulServiceContextFactory.Default;
            c.ServiceRequestStart("Start Unit Test");
            
            c.ServiceRequestStop("Start Unit Test");
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
