using System.Collections.Generic;
using Spinn.Model;
using Spinn.Model.Core;

namespace Spinn.Core.Service.Interfaces
{
    public interface IServiceCalculator
    {
        IEnumerable<ServicePortfolio> CalculateServicePortfolio(IEnumerable<Person> persons);
    }
}