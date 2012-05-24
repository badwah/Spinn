using System.Collections.Generic;
using System.ComponentModel.Composition;
using Spinn.Core.Service.Interfaces;
using Spinn.Model;
using Spinn.Model.Core;

namespace Spinn.Core.Calculators.Service
{
    [Export(typeof(IServiceCalculator))]
    public class SimpleServiceCalculator : IServiceCalculator
    {
        public IEnumerable<ServicePortfolio> CalculateServicePortfolio(IEnumerable<Person> persons)
        {
            //TODO
            return new List<ServicePortfolio>();
        }
    }
}
