using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using Spinn.Common;

namespace Spinn.DAL.NHibernate
{
    public class NHibernateUnitOfWork : IUnitOfWork
    {
        public ITransaction Transaction;
        #region Implementation of IUnitOfWork

        public NHibernateUnitOfWork(ITransaction currentTransaction)
        {
            Transaction = currentTransaction;
        }

        public void Commit()
        {
            Transaction.Commit();
        }

        #endregion
    }
}
