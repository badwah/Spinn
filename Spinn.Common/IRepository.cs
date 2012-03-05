using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace Spinn.Common
{
    public interface IRepository<T> :IDisposable where T : class
    {
        IUnitOfWork UnitOfWork { get; }
        IQueryable<T> All();
        IQueryable<T> Where(Expression<Func<T, bool>> expression);
        void Add(T newItem);
        void Update(T updatedItem);
        void Delete(T deletedItem);
    }
}
