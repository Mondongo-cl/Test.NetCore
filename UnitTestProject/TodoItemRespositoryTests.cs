using Microsoft.VisualStudio.TestTools.UnitTesting;
using TodoListService;
using System;
using ServiceFabric.Mocks;
using ServiceFabric.Mocks.ReplicaSet;

using System.Linq;
using System.Fabric;
using Microsoft.ServiceFabric.Data;
using Microsoft.ServiceFabric.Data.Collections;
using TodoList.Domain;
// using Microsoft.ServiceFabric.Data;
// using System.Fabric;



namespace TodoListService.Tests
{


    //[TestClass()]
    //public class TodoItemRespositoryTests
    //{


    //    [TestMethod()]
    //    public async System.Threading.Tasks.Task AddTaskItemTest()
    //    {

    //        var context = MockStatefulServiceContextFactory.Default;
    //        var stateManager = new MockReliableStateManager();
    //        var service = new TodoListService(context, stateManager);

    //        //get state
    //        var payloads = await stateManager.TryGetAsync<IReliableDictionary<string, TaskItem>>("todo-list");







    //        //Func<StatefulServiceContext, IReliableStateManagerReplica2, TodoListService> 
    //        ////var 
    //        //    CreateStatefulService = 
    //        //    (context,stateManager) => new TodoListService(context);

    //        //Func<StatefulServiceContext, ServiceFabric.Mocks.ReliableCollections.TransactedConcurrentDictionary<Uri, IReliableState>, IReliableStateManagerReplica2> 
    //        ////var
    //        //    stateManager 
    //        //    = (context,serviceURL) => { 
    //        //        return new MockReliableStateManager(serviceURL); 
    //        //    };

    //        // var replicaSet = new MockStatefulServiceReplicaSet<TodoListService>(CreateStatefulService, stateManager);


            
    //        //await replicaSet.AddReplicaAsync(ReplicaRole.Primary, 1);
    //        //await replicaSet.AddReplicaAsync(ReplicaRole.ActiveSecondary, 2);
    //        //await replicaSet.AddReplicaAsync(ReplicaRole.ActiveSecondary, 3);

    //        TodoList.Domain.TaskItem myItem = new TodoList.Domain.TaskItem
    //        {
    //            Id = Guid.NewGuid(),
    //            Description = "",
    //            Name = "",
    //            Status = TodoList.Domain.TaskItemStatus.InProgress
    //        };


            
    //        await service.AddTaskItemAsync(myItem);

    //        //Assert.IsTrue(payloads == 1);
    //        // Assert.IsTrue(payloads[0].Id != Guid.Empty);

    //        //verify the data was saved against the reliable dictionary
    //        // var dictionary = await stateManager.GetOrAddAsync<IReliableDictionary<string, Payload>>(MyStatefulService.StateManagerDictionaryKey);
    //        //using (var tx = ((IReliableStateManager)stateManager).CreateTransaction())
    //        //{
    //        //    var payload = await dictionary.TryGetValue(stateName);
    //        //    Assert.IsTrue(payload.HasValue);
    //        //    Assert.IsTrue(payload.Value.Content == payload.Content);
    //        //}


    //        //MockReliableStateManager manager = new MockReliableStateManager();
    //        //TodoItemRespository repo = new TodoItemRespository(manager);

    //        //TodoList.Domain.TaskItem myItem = new TodoList.Domain.TaskItem
    //        //{
    //        //    Id = Guid.NewGuid(),
    //        //    Description = "",
    //        //    Name = "",
    //        //    Status = TodoList.Domain.TaskItemStatus.InProgress
    //        //};
    //        //var t = repo.AddTaskItem(myItem).GetAwaiter();

    //        //t.GetResult();

    //        //Assert.IsNotNull(repo.GetAllTaskItems().Result);
    //        //var otherItem = repo.GetAllTaskItems().Result.FirstOrDefault();
    //        //Assert.AreSame(otherItem, myItem);

    //    }

    //    [TestMethod()]
    //    public void GetAllTaskItemsTest()
    //    {
    //        MockReliableStateManager manager = new MockReliableStateManager();
    //        TodoItemRespository repo = new TodoItemRespository(manager);

    //        TodoList.Domain.TaskItem myItem = new TodoList.Domain.TaskItem
    //        {
    //            Id = Guid.NewGuid(),
    //            Description = "",
    //            Name = "",
    //            Status = TodoList.Domain.TaskItemStatus.InProgress
    //        };

    //        var t = repo
    //            .AddTaskItem(myItem)
    //            .ContinueWith(
    //            (ct) => {
    //                myItem.Id = Guid.NewGuid();
    //                repo.AddTaskItem(myItem).GetAwaiter().GetResult();
    //            });

    //        Assert.IsNotNull(repo.GetAllTaskItems().Result);
    //        var otherItem = repo.GetAllTaskItems().Result;
    //        Assert.IsTrue(otherItem.Count() > 0);
    //        Assert.IsTrue(otherItem.Contains(myItem));
    //    }
    //}
}