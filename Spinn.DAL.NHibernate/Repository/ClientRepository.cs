using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using NHibernate;
using NHibernate.Cfg;
using Spinn.Common;
using Spinn.Model;
using Spinn.Repository;

namespace Spinn.DAL.NHibernate.Repository
{
    public class ClientRepository : IClientRepository
    {
       

        #region Implementation of IDisposable

        public void Dispose()
        {
           //TODO
        }

        #endregion

        #region Implementation of IRepository<Client>

        public IUnitOfWork UnitOfWork
        {
            get { throw new NotImplementedException(); }
        }

        public IQueryable<Client> All()
        {
            using (ISession session = NHibernateHelper<Client>.OpenSession())
            {
                var result = session.CreateCriteria<Client>().List<Client>();
                return result.AsQueryable();
            }
        }

        public IQueryable<Client> Where(Expression<Func<Client, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public void Add(Client newItem)
        {
            using (ISession session = NHibernateHelper<Client>.OpenSession())
            using (ITransaction transaction = session.BeginTransaction())
            {
                session.Save(newItem);
                transaction.Commit();
            }
        }

        public void Update(Client updatedItem)
        {
            throw new NotImplementedException();
        }

        public void Delete(Client deletedItem)
        {
            using (ISession session = NHibernateHelper<Client>.OpenSession())
            using (ITransaction transaction = session.BeginTransaction())
            {
                session.Delete(deletedItem);
                transaction.Commit();
            }
        }

        #endregion
    }
}
