using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DemoActor.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.ServiceFabric.Actors.Client;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TodoList.WebApi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ItemsBagController : ControllerBase
    {

        private IDemoActor GetActor (string id)
        {

            // fabric:/Test.NetCore/TodoListService

            return ActorProxy.Create<IDemoActor>(
                new Microsoft.ServiceFabric.Actors.ActorId(id),
                new Uri("fabric:/Test.NetCore/DemoActorService"));
        }

        // GET api/<ItemsBagController>/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<string>> GetAsync(string id)
        {
            var actor = GetActor(id);
            var data = await actor.GetItems();
            return data;
        }

        // POST api/<ItemsBagController>
        [HttpPost("{id}")]
        public async Task PostAsync([FromRoute]string id,[FromBody] string value)
        {
            var actor = GetActor(id);
            await actor.AddItem(Guid.Parse(id), value);
        }

        // DELETE api/<ItemsBagController>/5
        [HttpDelete("{id}")]
        public async Task DeleteAsync(string id)
        {
            var actor = GetActor(id);
            await actor.ClearList();
        }
    }
}
