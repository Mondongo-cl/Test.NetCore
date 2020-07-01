
using Microsoft.ServiceFabric.Data;
using Microsoft.ServiceFabric.Services.Communication.Runtime;
using Microsoft.ServiceFabric.Services.Runtime;
using System;
using System.Collections.Generic;
using System.Fabric;
using System.Linq;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;
using System.Threading;
using System.Threading.Tasks;
using TodoList.Domain;

namespace TodoListService
{
    /// <summary>
    /// An instance of this class is created for each service replica by the Service Fabric runtime.
    /// </summary>
    public sealed class TodoListService : StatefulService, ITaskItemService
    {
        private ITaskItemRepository _repository;

        public TodoListService(StatefulServiceContext context)
            : base(context)
        { }

        public TodoListService(StatefulServiceContext context, IReliableStateManagerReplica reliableStateManagerReplica)
        : base(context, reliableStateManagerReplica) { }


        /// <summary>
        /// Optional override to create listeners (e.g., HTTP, Service Remoting, WCF, etc.) for this service replica to handle client or user requests.
        /// </summary>
        /// <remarks>
        /// For more information on service communication, see https://aka.ms/servicefabricservicecommunication
        /// </remarks>
        /// <returns>A collection of listeners.</returns>
        protected override IEnumerable<ServiceReplicaListener> CreateServiceReplicaListeners()
        {
            return new[] { new ServiceReplicaListener(c => new Microsoft.ServiceFabric.Services.Remoting.V2.FabricTransport.Runtime.FabricTransportServiceRemotingListener(c,this))};
        }

        public async Task<TaskItem[]> GetAllTaskItemsAsync()
        {
            return (await _repository.GetAllTaskItems()).ToArray();
        }
        public async Task AddTaskItemAsync(TaskItem item)
        {

            await _repository.AddTaskItem(item);
        }

        /// <summary>
        /// This is the main entry point for your service replica.
        /// This method executes when this replica of your service becomes primary and has write status.
        /// </summary>
        /// <param name="cancellationToken">Canceled when Service Fabric needs to shut down this service replica.</param>
        protected override async Task RunAsync(CancellationToken cancellationToken)
        {
            _repository = new TodoItemRespository(this.StateManager);
             await base.RunAsync(cancellationToken);           

        }
    }
}
