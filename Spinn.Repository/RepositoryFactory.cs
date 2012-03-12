using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;

namespace Spinn.Repository
{
    public class RepositoryFactory<T>
    {
       
        public T ResolveRepository()
        {
            IUnityContainer uContainer = new UnityContainer();
            uContainer.LoadConfiguration();
            return uContainer.Resolve<T>();
        }
        
    }
}
