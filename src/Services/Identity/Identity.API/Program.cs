using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using System.IO;

namespace eShopOnContainers.Identity
{
 
    public class Program
    {
        public static void Main(string[] args)
        {
            BuildWebHost(args).Run();
        }

        public static IWebHost BuildWebHost(string[] args)
        {
            var builder = WebHost.CreateDefaultBuilder(args)
                                .ConfigureAppConfiguration(ConfigureAppDefaultConfiguration)
                                .UseStartup<Startup>()
                                .UseHealthChecks("/hc")
                                .UseContentRoot(Directory.GetCurrentDirectory())
                                .Build();

            return builder;
        }

        private static void ConfigureAppDefaultConfiguration(WebHostBuilderContext hostingContext, IConfigurationBuilder builder)
        {
            var env = hostingContext.HostingEnvironment;

            if (env.IsDevelopment())
            {
                // For more details on using the user secret store see http://go.microsoft.com/fwlink/?LinkID=532709
                builder.AddUserSecrets<Startup>();
            }

            //builder.AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
            //    .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true, reloadOnChange: true);

            //builder.AddEnvironmentVariables();
        }
    }
}
