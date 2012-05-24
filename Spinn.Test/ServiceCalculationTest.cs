using System;
using System.ComponentModel.Composition;
using System.ComponentModel.Composition.Hosting;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Spinn.Core.Service;
using Spinn.Model;

namespace Spinn.Test
{
    [TestClass]
    public class ServiceCalculationTest
    {
        private ServiceCalculation serviceCalculation;
        [TestInitialize]
        public void TestStartUp()
        {
            serviceCalculation = new ServiceCalculation();
            var catalog = new DirectoryCatalog(@".\");
            var container = new CompositionContainer(catalog);
            container.ComposeParts(serviceCalculation);
        }

        [TestMethod]
        public void TestMethod1()
        {
            var bestService = serviceCalculation.BestService(new List<Person>());
            Assert.IsNotNull(bestService);
        }
    }
}
