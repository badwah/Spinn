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
    
    public partial class Skill
    {
        public Skill()
        {
            this.SkillCategoryTags = new HashSet<SkillCategoryTag>();
            this.Positions = new HashSet<Position>();
            this.ProjectSkills = new HashSet<ProjectSkill>();
            this.PersonSkills = new HashSet<PersonSkill>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<SkillCategoryTag> SkillCategoryTags { get; set; }
        public virtual ICollection<Position> Positions { get; set; }
        public virtual ICollection<ProjectSkill> ProjectSkills { get; set; }
        public virtual ICollection<PersonSkill> PersonSkills { get; set; }
    }
}
