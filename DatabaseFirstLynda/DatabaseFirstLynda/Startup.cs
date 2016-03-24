using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DatabaseFirstLynda.Startup))]
namespace DatabaseFirstLynda
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
