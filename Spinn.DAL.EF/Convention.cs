//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Spinn.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Convention
    {
        public Convention()
        {
            this.Persons = new HashSet<Person>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string StartDate { get; set; }
    
        public virtual ICollection<Person> Persons { get; set; }
    }
}
