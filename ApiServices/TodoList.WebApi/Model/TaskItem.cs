using Newtonsoft.Json;
using System;
using TodoList.Domain;

namespace TodoList.WebApi
{
    public class TaskItem
    {
        [JsonProperty("id")]
        public Guid Id { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("description")]
        public string Description { get; set; }
        [JsonProperty("status")]
        public TaskItemStatus Status { get; set; }

    }
}
