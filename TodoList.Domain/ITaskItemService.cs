using Microsoft.ServiceFabric.Services.Remoting;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace TodoList.Domain
{
    public interface ITaskItemService: IService
    {
        Task<TaskItem[]> GetAllTaskItemsAsync();

        Task AddTaskItemAsync(TaskItem item);
    }
}
