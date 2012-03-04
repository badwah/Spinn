using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Spinn.Common;
using Spinn.Model;
using Spinn.Repository;

namespace Spinn.Stub
{
    public class ClientStub : IClientRepository
    {
        #region Implementation of IRepository<Client>

        public IUnitOfWork UnitOfWork
        {
            get { throw new NotImplementedException(); }
        }

        public IQueryable<Client> All()
        {
           return new List<Client>{new Client{Id=0}}.AsQueryable();
        }

        public IQueryable<Client> Where(Expression<Func<Client, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public void Delete(Client deletedItem)
        {
            throw new NotImplementedException();
        }

        public void Update(Client updatedItem)
        {
            throw new NotImplementedException();
        }

        public void Add(Client newItem)
        {
            throw new NotImplementedException();
        }

       

        #endregion
    }
}
