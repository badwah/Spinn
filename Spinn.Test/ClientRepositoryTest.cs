using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Spinn.Model;
using Spinn.Repository;

namespace Spinn.Test
{
    [TestClass]
    public class ClientRepositoryTest
    {
        [TestMethod]
        public void GetAllTest()
        {
            var clientRepo = new RepositoryFactory<IClientRepository>().ResolveRepository();
            var allClients = clientRepo.All();
            Assert.IsTrue(allClients.Count()>0);
        }

        [TestMethod]
        public void AddTest()
        {
           
            var clientRepo = new RepositoryFactory<IClientRepository>().ResolveRepository();
            var count = clientRepo.All().Count();
             clientRepo.Add(new Client{Name="UNITTEST",Description = "UNITTEST"});
            clientRepo.UnitOfWork.Commit();
             Assert.IsTrue(count + 1 == new RepositoryFactory<IClientRepository>().ResolveRepository().All().Count());
        }
    }
}
