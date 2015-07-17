using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KilometroZero4.Startup))]
namespace KilometroZero4
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
