using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;

namespace Spinn.Repository
{
    public static class RepositoryFactory
    {
        public static IClientRepository GetClientRepository()
        {
            IUnityContainer uContainer = new UnityContainer();
            uContainer.LoadConfiguration();
            return uContainer.Resolve<IClientRepository>();
        }

        public static IProjectRepository GetProjectRepository()
        {
            IUnityContainer uContainer = new UnityContainer();
            uContainer.LoadConfiguration();
            return uContainer.Resolve<IProjectRepository>();
        }
    }
}
