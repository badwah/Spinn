using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using Spinn.Common;

namespace Spinn.DAL.EF
{
    public class EFUnitOfWork:IUnitOfWork
{
        public SpinnModelContainer Context { get; set; }
        #region Implementation of IUnitOfWork


        public EFUnitOfWork()
        {
            Context = new SpinnModelContainer();
        }

        public void Commit()
        {
            Context.SaveChanges();
        }

        #endregion
}
}
