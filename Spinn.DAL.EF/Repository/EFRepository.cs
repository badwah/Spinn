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
        public IUnitOfWork UnitOfWork { get { return efUnitOfWork; } }

        public EFRepository()
        {
            efUnitOfWork = new EFUnitOfWork();
        }

        private readonly EFUnitOfWork efUnitOfWork;
       
        private IDbSet<T> objectset;
        private IDbSet<T> ObjectSet
        {
            get
            {
                if (objectset == null)
                {
                    objectset = efUnitOfWork.Context.Set<T>();
                }
                return objectset;
            }
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
            efUnitOfWork.Context.Entry(updatedItem).State = EntityState.Modified;
        }

        public void Delete(T entity)
        {
            ObjectSet.Remove(entity);
        }

    }
}
