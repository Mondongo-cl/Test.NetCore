using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace TodoList.Domain
{
    public interface ITaskItemRepository
    {
        Task<IEnumerable<TaskItem>> GetAllTaskItems();

        Task AddTaskItem(TaskItem item);
    }
}
