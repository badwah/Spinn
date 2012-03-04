using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Spinn.Repository;

namespace Spinn.Test
{
    [TestClass]
    public class ClientRepositoryTest
    {
        [TestMethod]
        public void GetAllTest()
        {
            var clientRepo = RepositoryFactory.GetClientRepository();
            var allClients = clientRepo.All();
            Assert.IsTrue(allClients.Count()>0);
        }
    }
}
