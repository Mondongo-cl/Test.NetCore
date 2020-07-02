using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using TodoList.Domain;

namespace TodoList.WebApi
{
    public class Startup
    {

        private const string backEndServiceURL = "fabric:/Test.NetCore/TodoListService";

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();
            services.AddTransient<ITaskItemService, ITaskItemService>((a)=>
                {
                    var factory = new Microsoft.ServiceFabric.Services.Remoting.Client.ServiceProxyFactory(c => 
                    new Microsoft.ServiceFabric.Services.Remoting.V2.FabricTransport.Client.FabricTransportServiceRemotingClientFactory(null)
                    );

                  var instance = factory.CreateServiceProxy<ITaskItemService>(
                    new Uri(backEndServiceURL),
                    new Microsoft.ServiceFabric.Services.Client.ServicePartitionKey(0)
                    );
                    return instance;
                }
                );

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            app.UseAuthorization();


            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
