using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using NHibernate;
using NHibernate.Linq;
using NHibernate.Cfg;
using Spinn.Common;
using Spinn.Model;
using Spinn.Repository;

namespace Spinn.DAL.NHibernate.Repository
{
    public class ClientRepository : IClientRepository
    {
        private ISession session;
        private NHibernateUnitOfWork nHibernateUnitOfWork;

        public ClientRepository()
        {
            session = NHibernateHelper<Client>.OpenSession();
            session.FlushMode = FlushMode.Commit;
            nHibernateUnitOfWork = new NHibernateUnitOfWork(session.BeginTransaction());
        }

        #region Implementation of IDisposable

        public void Dispose()
        {
          session.Dispose();
        }

        #endregion

        #region Implementation of IRepository<Client>

        public IUnitOfWork UnitOfWork
        {
            get { return nHibernateUnitOfWork; }
            set { nHibernateUnitOfWork = value as NHibernateUnitOfWork; }
        }

        public IQueryable<Client> All()
        {
            var result = session.CreateCriteria<Client>().List<Client>();
            return result.AsQueryable();
        }

        public IQueryable<Client> Where(Expression<Func<Client, bool>> expression)
        {
             return session.Query<Client>().Where(expression);
            
        }

        public void Add(Client newItem)
        {
            session.Save(newItem);
        }

        public void Update(Client updatedItem)
        {
            session.Update(updatedItem);
            
        }

        public void Delete(Client deletedItem)
        {
            session.Delete(deletedItem);
        }

        #endregion
    }
}
