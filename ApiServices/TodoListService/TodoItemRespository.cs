using Microsoft.ServiceFabric.Data;
using Microsoft.ServiceFabric.Data.Collections;
using Microsoft.ServiceFabric.ReliableCollection.Common;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using TodoList.Domain;

namespace TodoListService
{
    public class TodoItemRespository : ITaskItemRepository
    {
        private readonly IReliableStateManager _stateManager;

        public TodoItemRespository(IReliableStateManager stateManager) {
            _stateManager = stateManager;
        }
        public async Task AddTaskItem(TaskItem item)
        {
            IReliableDictionary<Guid, TaskItem> todoList =
                await _stateManager.GetOrAddAsync<IReliableDictionary<Guid, TaskItem>>("todo-list");

            using (var trx = _stateManager.CreateTransaction())
            {
                await todoList.AddOrUpdateAsync(trx, item.Id, item, (id,value) => item);
                await trx.CommitAsync();
            }

        }

        public async Task<IEnumerable<TaskItem>> GetAllTaskItems()
        {
            IReliableDictionary<Guid, TaskItem> todoList =
                await _stateManager.GetOrAddAsync<IReliableDictionary<Guid, TaskItem>>("todo-list");
            List<TaskItem> result = new List<TaskItem>();
            using (var trx = _stateManager.CreateTransaction())
            {
                Microsoft.ServiceFabric.Data.IAsyncEnumerable<KeyValuePair<Guid, TaskItem>> allItems =
                    await todoList.CreateEnumerableAsync(trx, enumerationMode: EnumerationMode.Unordered);
                using (var enumerator = allItems.GetAsyncEnumerator()) {
                    while (await enumerator.MoveNextAsync(CancellationToken.None)) { 
                    var current = enumerator.Current;
                    Trace.WriteLine($"Reading .. key-value = {current.Key}");
                    result.Add(current.Value);
                    }
                }               
            }
            return result;
        }
    }
}
