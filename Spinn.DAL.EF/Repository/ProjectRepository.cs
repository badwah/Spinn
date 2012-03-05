using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Spinn.Model;
using Spinn.Repository;

namespace Spinn.DAL.EF.Repository
{
    public class ProjectRepository : EFRepository<Project>, IProjectRepository
    {
        #region Implementation of IProjectRepository

        public IQueryable<Project> GetAllProjectsWithClients()
        {
            return efUnitOfWork.Context.Projects.Include("Client");
        }

        #endregion
    }
}
