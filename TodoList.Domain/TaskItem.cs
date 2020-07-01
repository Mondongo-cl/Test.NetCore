using System;

namespace TodoList.Domain
{
    public class TaskItem
    {
        public Guid Id { get; set;}
        public string Name { get; set; }
        public string Description { get; set; }
        public TaskItemStatus Status { get; set; } 

    }
}
