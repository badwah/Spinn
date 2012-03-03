using System.Collections.Generic;

namespace Spinn.Common
{
    public interface IRepository<T> where T : class
    {
        T GetById(int id);
        IEnumerable<T> GetAll();
        void Add(T newItem);
        void Update(T newItem);

    }
}
