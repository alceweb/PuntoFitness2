using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PuntoFitness2.Startup))]
namespace PuntoFitness2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
