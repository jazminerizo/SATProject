using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JazAndSeanSATProject.UI.MVC.Startup))]
namespace JazAndSeanSATProject.UI.MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
