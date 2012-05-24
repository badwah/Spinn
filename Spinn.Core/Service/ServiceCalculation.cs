using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using Spinn.Core.Service.Interfaces;
using Spinn.Model;
using Spinn.Model.Core;

namespace Spinn.Core.Service
{
     
    public class ServiceCalculation
    {
        [Import]
        public IServiceCalculator ServiceCalculator { get; set; }

        public ServicePortfolio BestService(IEnumerable<Person> persons)
        {
            return ServiceCalculator.CalculateServicePortfolio(persons).FirstOrDefault();
        }
    }
}
