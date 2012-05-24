using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Spinn.Common;

namespace Spinn.DAL.EF.Repository
{
    public class EFRepository<T> : IRepository<T> where T : class
    {
        public IUnitOfWork UnitOfWork
        {
            set { EfUnitOfWork = value as EFUnitOfWork; }
            get { return EfUnitOfWork; }
        }
       
        protected EFUnitOfWork EfUnitOfWork;
       
        protected IDbSet<T> objectSet;
        protected IDbSet<T> ObjectSet
        {
            get { return objectSet ?? (objectSet = EfUnitOfWork.Context.Set<T>()); }
        }

        public virtual IQueryable<T> All()
        {
            return ObjectSet.AsQueryable();
        }

        public IQueryable<T> Where(Expression<Func<T, bool>> expression)
        {
            return ObjectSet.Where(expression);
        }

        public void Add(T entity)
        {
            ObjectSet.Add(entity);
        }

        public void Update(T updatedItem)
        {
            ObjectSet.Attach(updatedItem);
            EfUnitOfWork.Context.Entry(updatedItem).State = EntityState.Modified;
        }

       
        public void Delete(T entity)
        {
            ObjectSet.Attach(entity);
            EfUnitOfWork.Context.Entry(entity).State = EntityState.Deleted;
        }

        #region Implementation of IDisposable

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!disposed)
            {
                if (disposing)
                {
                    EfUnitOfWork.Context.Dispose();
                }
            }
            disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion
    }
}
