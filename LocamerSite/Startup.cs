using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LocamerSite.Startup))]
namespace LocamerSite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
