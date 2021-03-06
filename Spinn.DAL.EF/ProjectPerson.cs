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
    
    public partial class ProjectPerson
    {
        public ProjectPerson()
        {
            this.ProjectSkills = new HashSet<ProjectSkill>();
            this.ProjectPositions = new HashSet<ProjectPosition>();
        }
    
        public int Id { get; set; }
        public string Description { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime EndDate { get; set; }
    
        public Person Person { get; set; }
        public ICollection<ProjectSkill> ProjectSkills { get; set; }
        public ICollection<ProjectPosition> ProjectPositions { get; set; }
        public Project Project { get; set; }
    }
}
