using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Spinn.Repository;

namespace Spinn.Frontend.Controllers
{
    public class ProjectsController : Controller
    {
         private readonly IProjectRepository projectRepository;
         public ProjectsController()
        {
            projectRepository = RepositoryFactory.GetProjectRepository();
        }
        public JsonResult List()
        {
            return Json(projectRepository.GetAllProjectsWithClients().ToArray(), JsonRequestBehavior.AllowGet);
        }
        
        //
        // GET: /Projects/

        public ActionResult Index()
        {
            return View();
        }

        
       
    }
}
