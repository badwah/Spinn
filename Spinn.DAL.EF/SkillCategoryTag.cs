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
    
    public partial class SkillCategoryTag
    {
        public SkillCategoryTag()
        {
            this.Skills = new HashSet<Skill>();
            this.SkillChilldCategoryTags = new HashSet<SkillCategoryTag>();
        }
    
        public int Id { get; set; }
    
        public ICollection<Skill> Skills { get; set; }
        public ICollection<SkillCategoryTag> SkillChilldCategoryTags { get; set; }
        public SkillCategoryTag SkillParentCategoryTag { get; set; }
    }
}
