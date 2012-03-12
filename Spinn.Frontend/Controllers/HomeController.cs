using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Spinn.Frontend.Models;
using Spinn.Model;

namespace Spinn.Frontend.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }

        public PartialViewResult _MenuViewUserControl()
        {
           //TODO make repo
            var dynamicMenu = new Menu();
            dynamicMenu.Services = new List<Service>();
             dynamicMenu.Services.Add(new Service{Name="Service 1"});
             dynamicMenu.Services.Add(new Service { Name = "Service 2" });
             dynamicMenu.Services.Add(new Service { Name = "Service 3" });
            dynamicMenu.InfiniteMenuItems = new InfiniteMenuItem{Title = "Spinn1",Url = "www.google.be"};
            dynamicMenu.InfiniteMenuItems.NextMenuItem = new InfiniteMenuItem { Title = "Spinn2", Url = "www.google.be" };
            dynamicMenu.InfiniteMenuItems.NextMenuItem.NextMenuItem = new InfiniteMenuItem { Title = "Spinn3", Url = "www.google.be" };

            return PartialView(dynamicMenu);
        }
      
    }
}
