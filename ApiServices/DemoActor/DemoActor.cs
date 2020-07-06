using DemoActor.Interfaces;
using Microsoft.ServiceFabric.Actors;
using Microsoft.ServiceFabric.Actors.Runtime;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;

namespace DemoActor
{
    /// <remarks>
    /// This class represents an actor.
    /// Every ActorID maps to an instance of this class.
    /// The StatePersistence attribute determines persistence and replication of actor state:
    ///  - Persisted: State is written to disk and replicated.
    ///  - Volatile: State is kept in memory only and replicated.
    ///  - None: State is kept in memory only and not replicated.
    /// </remarks>
    [StatePersistence(StatePersistence.Persisted)]
    internal class DemoActor : Actor, IDemoActor
    {
        /// <summary>
        /// Initializes a new instance of DemoActor
        /// </summary>
        /// <param name="actorService">The Microsoft.ServiceFabric.Actors.Runtime.ActorService that will host this actor instance.</param>
        /// <param name="actorId">The Microsoft.ServiceFabric.Actors.ActorId for this actor instance.</param>
        public DemoActor(ActorService actorService, ActorId actorId) 
            : base(actorService, actorId)
        {
        }

        public async Task AddItem(Guid itemId, String name)
        {
            await StateManager.AddOrUpdateStateAsync(itemId.ToString(), name, (id, oldname) =>
            {
                return name;
            });
        }

        public async Task ClearList()
        {
            IEnumerable<String> itemIds = await StateManager.GetStateNamesAsync();
            foreach(String i in itemIds)
            {
                await StateManager.RemoveStateAsync(i);
            }
        }

        public async Task<string[]> GetItems()
        {
            List<string> result = new List<string>();
            IEnumerable<String> itemIds = await StateManager.GetStateNamesAsync();
            foreach (String i in itemIds)
            {
                var value = await StateManager.GetStateAsync<Object>(i);

                result.Add(value.ToString());
            }
            return result.ToArray();
        }

        /// <summary>
        /// This method is called whenever an actor is activated.
        /// An actor is activated the first time any of its methods are invoked.
        /// </summary>
        protected override Task OnActivateAsync()
        {
            ActorEventSource.Current.ActorMessage(this, "Actor activated.");
            return Task.CompletedTask;
            //// The StateManager is this actor's private state store.
            //// Data stored in the StateManager will be replicated for high-availability for actors that use volatile or persisted state storage.
            //// Any serializable object can be saved in the StateManager.
            //// For more information, see https://aka.ms/servicefabricactorsstateserialization

           // return this.StateManager.TryAddStateAsync("count", 0);
        }
    }
}
