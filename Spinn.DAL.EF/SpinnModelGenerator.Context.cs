﻿

//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace Spinn.DAL.EF
{

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using Spinn.Model;


public partial class SpinnModelContainer : DbContext
{
    public SpinnModelContainer()
        : base("name=SpinnModelContainer")
    {

        this.Configuration.LazyLoadingEnabled = false;

    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }


    public DbSet<Person> People { get; set; }

    public DbSet<Service> Services { get; set; }

    public DbSet<Skill> Skills { get; set; }

    public DbSet<Position> Positions { get; set; }

    public DbSet<SkillCategoryTag> SkillCategoryTags { get; set; }

    public DbSet<ProjectPerson> ProjectPersons { get; set; }

    public DbSet<ProjectSkill> ProjectSkills { get; set; }

    public DbSet<ProjectPosition> ProjectPositions { get; set; }

    public DbSet<Degree> Degrees { get; set; }

    public DbSet<Course> Courses { get; set; }

    public DbSet<Convention> Conventions { get; set; }

    public DbSet<Project> Projects { get; set; }

    public DbSet<PersonPosition> PersonPositions { get; set; }

    public DbSet<PersonSkill> PersonSkills { get; set; }

    public DbSet<Employer> Employers { get; set; }

    public DbSet<Employee> Employees { get; set; }

    public DbSet<CourseStudent> CourseStudents { get; set; }

    public DbSet<Client> Clients { get; set; }

}

}

