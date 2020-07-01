using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.ServiceFabric.Services.Client;
using Microsoft.ServiceFabric.Services.Remoting.Client;
using Microsoft.ServiceFabric.Services.Remoting.V2.FabricTransport.Client;
using TodoList.Domain;
using TodoListService;

namespace TodoList.WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TodoListController : ControllerBase
    {

        
        private readonly ITaskItemService _service;

        public TodoListController(ITaskItemService service)
        {
            _service = service;                
        }

        [HttpGet]
        public IEnumerable<TaskItem> Get()
        {
            var Items =
                _service
                .GetAllTaskItemsAsync()
                .GetAwaiter()
                .GetResult();

            return Items.Select(o =>
                            new TaskItem 
                            { 
                                Description = o.Description, 
                                Id = o.Id, 
                                Name = o.Name, 
                                Status = o.Status 
                            }
              );
        }

        [HttpPost]
        public Task Post(TaskItem item)
        {
            TodoList.Domain.TaskItem currentItem = new Domain.TaskItem
            {
                Description = item.Description,
                Id = item.Id == Guid.Empty ? Guid.NewGuid() : item.Id,
                Name = item.Name,
                Status = item.Status
            };
            return _service.AddTaskItemAsync(currentItem);
        }
    }
}
