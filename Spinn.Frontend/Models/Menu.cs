using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Spinn.Model;

namespace Spinn.Frontend.Models
{
    public class Menu
    {
        public InfiniteMenuItem InfiniteMenuItems { get; set; }
        public List<Service> Services { get; set; }
    }
}