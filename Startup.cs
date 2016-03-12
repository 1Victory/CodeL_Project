using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CodeL1.Startup))]
namespace CodeL1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
