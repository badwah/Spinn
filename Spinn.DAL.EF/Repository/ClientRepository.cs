using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Spinn.Common;
using Spinn.Model;

namespace Spinn.DAL.EF.Repository
{
    public class ClientRepository:EFRepository<Client>
    {
        public ClientRepository(EFUnitOfWork unitOfWork) : base(unitOfWork)
        {
        }
    }
}
