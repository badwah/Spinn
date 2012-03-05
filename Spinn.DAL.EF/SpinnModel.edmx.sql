
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 03/05/2012 12:04:18
-- Generated from EDMX file: C:\TFS\Spinn\Code\Spinn\Spinn.DAL.EF\SpinnModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Spinn];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Gsm] nvarchar(max)  NOT NULL,
    [DateOfBirth] datetime  NOT NULL,
    [Street] nvarchar(max)  NOT NULL,
    [HouseNumber] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [PostalCode] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [Nationality] nvarchar(max)  NOT NULL,
    [Profile] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Services'
CREATE TABLE [dbo].[Services] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Skills'
CREATE TABLE [dbo].[Skills] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Positions'
CREATE TABLE [dbo].[Positions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SkillCategoryTags'
CREATE TABLE [dbo].[SkillCategoryTags] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SkillParentCategoryTag_Id] int  NOT NULL
);
GO

-- Creating table 'ProjectPersons'
CREATE TABLE [dbo].[ProjectPersons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Person_Id] int  NOT NULL,
    [Project_Id] int  NOT NULL
);
GO

-- Creating table 'ProjectSkills'
CREATE TABLE [dbo].[ProjectSkills] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Importance] int  NOT NULL,
    [Skill_Id] int  NOT NULL,
    [ProjectPerson_Id] int  NOT NULL
);
GO

-- Creating table 'ProjectPositions'
CREATE TABLE [dbo].[ProjectPositions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Importance] int  NOT NULL,
    [Position_Id] int  NOT NULL,
    [ProjectPerson_Id] int  NOT NULL
);
GO

-- Creating table 'Degrees'
CREATE TABLE [dbo].[Degrees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [StartDate] nvarchar(max)  NOT NULL,
    [EndDate] nvarchar(max)  NOT NULL,
    [DegreeType] nvarchar(max)  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'Courses'
CREATE TABLE [dbo].[Courses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Conventions'
CREATE TABLE [dbo].[Conventions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [StartDate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'PersonPositions'
CREATE TABLE [dbo].[PersonPositions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Importance] nvarchar(max)  NOT NULL,
    [Level] nvarchar(max)  NOT NULL,
    [Position_Id] int  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'PersonSkills'
CREATE TABLE [dbo].[PersonSkills] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Importance] nvarchar(max)  NOT NULL,
    [Level] nvarchar(max)  NOT NULL,
    [Skill_Id] int  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'Employers'
CREATE TABLE [dbo].[Employers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Employer_Id] int  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'CourseStudents'
CREATE TABLE [dbo].[CourseStudents] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartDate] datetime  NOT NULL,
    [Course_Id] int  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PersonService'
CREATE TABLE [dbo].[PersonService] (
    [Persons_Id] int  NOT NULL,
    [Services_Id] int  NOT NULL
);
GO

-- Creating table 'SkillCategoryTagSkill'
CREATE TABLE [dbo].[SkillCategoryTagSkill] (
    [SkillCategoryTags_Id] int  NOT NULL,
    [Skills_Id] int  NOT NULL
);
GO

-- Creating table 'ServicePosition'
CREATE TABLE [dbo].[ServicePosition] (
    [Services_Id] int  NOT NULL,
    [Positions_Id] int  NOT NULL
);
GO

-- Creating table 'SkillPosition'
CREATE TABLE [dbo].[SkillPosition] (
    [Skills_Id] int  NOT NULL,
    [Positions_Id] int  NOT NULL
);
GO

-- Creating table 'PersonConvention'
CREATE TABLE [dbo].[PersonConvention] (
    [Persons_Id] int  NOT NULL,
    [Conventions_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Services'
ALTER TABLE [dbo].[Services]
ADD CONSTRAINT [PK_Services]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Skills'
ALTER TABLE [dbo].[Skills]
ADD CONSTRAINT [PK_Skills]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Positions'
ALTER TABLE [dbo].[Positions]
ADD CONSTRAINT [PK_Positions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SkillCategoryTags'
ALTER TABLE [dbo].[SkillCategoryTags]
ADD CONSTRAINT [PK_SkillCategoryTags]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProjectPersons'
ALTER TABLE [dbo].[ProjectPersons]
ADD CONSTRAINT [PK_ProjectPersons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProjectSkills'
ALTER TABLE [dbo].[ProjectSkills]
ADD CONSTRAINT [PK_ProjectSkills]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProjectPositions'
ALTER TABLE [dbo].[ProjectPositions]
ADD CONSTRAINT [PK_ProjectPositions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Degrees'
ALTER TABLE [dbo].[Degrees]
ADD CONSTRAINT [PK_Degrees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_Courses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Conventions'
ALTER TABLE [dbo].[Conventions]
ADD CONSTRAINT [PK_Conventions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonPositions'
ALTER TABLE [dbo].[PersonPositions]
ADD CONSTRAINT [PK_PersonPositions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSkills'
ALTER TABLE [dbo].[PersonSkills]
ADD CONSTRAINT [PK_PersonSkills]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employers'
ALTER TABLE [dbo].[Employers]
ADD CONSTRAINT [PK_Employers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CourseStudents'
ALTER TABLE [dbo].[CourseStudents]
ADD CONSTRAINT [PK_CourseStudents]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Persons_Id], [Services_Id] in table 'PersonService'
ALTER TABLE [dbo].[PersonService]
ADD CONSTRAINT [PK_PersonService]
    PRIMARY KEY NONCLUSTERED ([Persons_Id], [Services_Id] ASC);
GO

-- Creating primary key on [SkillCategoryTags_Id], [Skills_Id] in table 'SkillCategoryTagSkill'
ALTER TABLE [dbo].[SkillCategoryTagSkill]
ADD CONSTRAINT [PK_SkillCategoryTagSkill]
    PRIMARY KEY NONCLUSTERED ([SkillCategoryTags_Id], [Skills_Id] ASC);
GO

-- Creating primary key on [Services_Id], [Positions_Id] in table 'ServicePosition'
ALTER TABLE [dbo].[ServicePosition]
ADD CONSTRAINT [PK_ServicePosition]
    PRIMARY KEY NONCLUSTERED ([Services_Id], [Positions_Id] ASC);
GO

-- Creating primary key on [Skills_Id], [Positions_Id] in table 'SkillPosition'
ALTER TABLE [dbo].[SkillPosition]
ADD CONSTRAINT [PK_SkillPosition]
    PRIMARY KEY NONCLUSTERED ([Skills_Id], [Positions_Id] ASC);
GO

-- Creating primary key on [Persons_Id], [Conventions_Id] in table 'PersonConvention'
ALTER TABLE [dbo].[PersonConvention]
ADD CONSTRAINT [PK_PersonConvention]
    PRIMARY KEY NONCLUSTERED ([Persons_Id], [Conventions_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Persons_Id] in table 'PersonService'
ALTER TABLE [dbo].[PersonService]
ADD CONSTRAINT [FK_PersonService_Person]
    FOREIGN KEY ([Persons_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Services_Id] in table 'PersonService'
ALTER TABLE [dbo].[PersonService]
ADD CONSTRAINT [FK_PersonService_Service]
    FOREIGN KEY ([Services_Id])
    REFERENCES [dbo].[Services]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonService_Service'
CREATE INDEX [IX_FK_PersonService_Service]
ON [dbo].[PersonService]
    ([Services_Id]);
GO

-- Creating foreign key on [SkillCategoryTags_Id] in table 'SkillCategoryTagSkill'
ALTER TABLE [dbo].[SkillCategoryTagSkill]
ADD CONSTRAINT [FK_SkillCategoryTagSkill_SkillCategoryTag]
    FOREIGN KEY ([SkillCategoryTags_Id])
    REFERENCES [dbo].[SkillCategoryTags]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Skills_Id] in table 'SkillCategoryTagSkill'
ALTER TABLE [dbo].[SkillCategoryTagSkill]
ADD CONSTRAINT [FK_SkillCategoryTagSkill_Skill]
    FOREIGN KEY ([Skills_Id])
    REFERENCES [dbo].[Skills]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillCategoryTagSkill_Skill'
CREATE INDEX [IX_FK_SkillCategoryTagSkill_Skill]
ON [dbo].[SkillCategoryTagSkill]
    ([Skills_Id]);
GO

-- Creating foreign key on [Services_Id] in table 'ServicePosition'
ALTER TABLE [dbo].[ServicePosition]
ADD CONSTRAINT [FK_ServicePosition_Service]
    FOREIGN KEY ([Services_Id])
    REFERENCES [dbo].[Services]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Positions_Id] in table 'ServicePosition'
ALTER TABLE [dbo].[ServicePosition]
ADD CONSTRAINT [FK_ServicePosition_Position]
    FOREIGN KEY ([Positions_Id])
    REFERENCES [dbo].[Positions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ServicePosition_Position'
CREATE INDEX [IX_FK_ServicePosition_Position]
ON [dbo].[ServicePosition]
    ([Positions_Id]);
GO

-- Creating foreign key on [Skills_Id] in table 'SkillPosition'
ALTER TABLE [dbo].[SkillPosition]
ADD CONSTRAINT [FK_SkillPositions_Skill]
    FOREIGN KEY ([Skills_Id])
    REFERENCES [dbo].[Skills]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Positions_Id] in table 'SkillPosition'
ALTER TABLE [dbo].[SkillPosition]
ADD CONSTRAINT [FK_SkillPositions_Position]
    FOREIGN KEY ([Positions_Id])
    REFERENCES [dbo].[Positions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillPositions_Position'
CREATE INDEX [IX_FK_SkillPositions_Position]
ON [dbo].[SkillPosition]
    ([Positions_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'ProjectPersons'
ALTER TABLE [dbo].[ProjectPersons]
ADD CONSTRAINT [FK_PersonProject]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonProject'
CREATE INDEX [IX_FK_PersonProject]
ON [dbo].[ProjectPersons]
    ([Person_Id]);
GO

-- Creating foreign key on [Skill_Id] in table 'ProjectSkills'
ALTER TABLE [dbo].[ProjectSkills]
ADD CONSTRAINT [FK_SkillProjectSkill]
    FOREIGN KEY ([Skill_Id])
    REFERENCES [dbo].[Skills]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillProjectSkill'
CREATE INDEX [IX_FK_SkillProjectSkill]
ON [dbo].[ProjectSkills]
    ([Skill_Id]);
GO

-- Creating foreign key on [ProjectPerson_Id] in table 'ProjectSkills'
ALTER TABLE [dbo].[ProjectSkills]
ADD CONSTRAINT [FK_ProjectProjectSkill]
    FOREIGN KEY ([ProjectPerson_Id])
    REFERENCES [dbo].[ProjectPersons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProjectSkill'
CREATE INDEX [IX_FK_ProjectProjectSkill]
ON [dbo].[ProjectSkills]
    ([ProjectPerson_Id]);
GO

-- Creating foreign key on [Position_Id] in table 'ProjectPositions'
ALTER TABLE [dbo].[ProjectPositions]
ADD CONSTRAINT [FK_PositionProjectPosition]
    FOREIGN KEY ([Position_Id])
    REFERENCES [dbo].[Positions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PositionProjectPosition'
CREATE INDEX [IX_FK_PositionProjectPosition]
ON [dbo].[ProjectPositions]
    ([Position_Id]);
GO

-- Creating foreign key on [ProjectPerson_Id] in table 'ProjectPositions'
ALTER TABLE [dbo].[ProjectPositions]
ADD CONSTRAINT [FK_ProjectProjectPosition]
    FOREIGN KEY ([ProjectPerson_Id])
    REFERENCES [dbo].[ProjectPersons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProjectPosition'
CREATE INDEX [IX_FK_ProjectProjectPosition]
ON [dbo].[ProjectPositions]
    ([ProjectPerson_Id]);
GO

-- Creating foreign key on [SkillParentCategoryTag_Id] in table 'SkillCategoryTags'
ALTER TABLE [dbo].[SkillCategoryTags]
ADD CONSTRAINT [FK_SkillCategoryTagSkillCategoryTag]
    FOREIGN KEY ([SkillParentCategoryTag_Id])
    REFERENCES [dbo].[SkillCategoryTags]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillCategoryTagSkillCategoryTag'
CREATE INDEX [IX_FK_SkillCategoryTagSkillCategoryTag]
ON [dbo].[SkillCategoryTags]
    ([SkillParentCategoryTag_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'Degrees'
ALTER TABLE [dbo].[Degrees]
ADD CONSTRAINT [FK_PersonDegree]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonDegree'
CREATE INDEX [IX_FK_PersonDegree]
ON [dbo].[Degrees]
    ([Person_Id]);
GO

-- Creating foreign key on [Persons_Id] in table 'PersonConvention'
ALTER TABLE [dbo].[PersonConvention]
ADD CONSTRAINT [FK_PersonConvention_Person]
    FOREIGN KEY ([Persons_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Conventions_Id] in table 'PersonConvention'
ALTER TABLE [dbo].[PersonConvention]
ADD CONSTRAINT [FK_PersonConvention_Convention]
    FOREIGN KEY ([Conventions_Id])
    REFERENCES [dbo].[Conventions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonConvention_Convention'
CREATE INDEX [IX_FK_PersonConvention_Convention]
ON [dbo].[PersonConvention]
    ([Conventions_Id]);
GO

-- Creating foreign key on [Project_Id] in table 'ProjectPersons'
ALTER TABLE [dbo].[ProjectPersons]
ADD CONSTRAINT [FK_ProjectProjectPerson]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[Projects]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProjectPerson'
CREATE INDEX [IX_FK_ProjectProjectPerson]
ON [dbo].[ProjectPersons]
    ([Project_Id]);
GO

-- Creating foreign key on [Position_Id] in table 'PersonPositions'
ALTER TABLE [dbo].[PersonPositions]
ADD CONSTRAINT [FK_PositionPersonPosition]
    FOREIGN KEY ([Position_Id])
    REFERENCES [dbo].[Positions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PositionPersonPosition'
CREATE INDEX [IX_FK_PositionPersonPosition]
ON [dbo].[PersonPositions]
    ([Position_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'PersonPositions'
ALTER TABLE [dbo].[PersonPositions]
ADD CONSTRAINT [FK_PersonPersonPosition]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPersonPosition'
CREATE INDEX [IX_FK_PersonPersonPosition]
ON [dbo].[PersonPositions]
    ([Person_Id]);
GO

-- Creating foreign key on [Skill_Id] in table 'PersonSkills'
ALTER TABLE [dbo].[PersonSkills]
ADD CONSTRAINT [FK_SkillPersonSkill]
    FOREIGN KEY ([Skill_Id])
    REFERENCES [dbo].[Skills]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillPersonSkill'
CREATE INDEX [IX_FK_SkillPersonSkill]
ON [dbo].[PersonSkills]
    ([Skill_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'PersonSkills'
ALTER TABLE [dbo].[PersonSkills]
ADD CONSTRAINT [FK_PersonPersonSkill]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPersonSkill'
CREATE INDEX [IX_FK_PersonPersonSkill]
ON [dbo].[PersonSkills]
    ([Person_Id]);
GO

-- Creating foreign key on [Employer_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_EmployerEmployee]
    FOREIGN KEY ([Employer_Id])
    REFERENCES [dbo].[Employers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployerEmployee'
CREATE INDEX [IX_FK_EmployerEmployee]
ON [dbo].[Employees]
    ([Employer_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_PersonEmployee]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonEmployee'
CREATE INDEX [IX_FK_PersonEmployee]
ON [dbo].[Employees]
    ([Person_Id]);
GO

-- Creating foreign key on [Course_Id] in table 'CourseStudents'
ALTER TABLE [dbo].[CourseStudents]
ADD CONSTRAINT [FK_CourseCourseStudent]
    FOREIGN KEY ([Course_Id])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseCourseStudent'
CREATE INDEX [IX_FK_CourseCourseStudent]
ON [dbo].[CourseStudents]
    ([Course_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'CourseStudents'
ALTER TABLE [dbo].[CourseStudents]
ADD CONSTRAINT [FK_PersonCourseStudent]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonCourseStudent'
CREATE INDEX [IX_FK_PersonCourseStudent]
ON [dbo].[CourseStudents]
    ([Person_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_ClientProject]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientProject'
CREATE INDEX [IX_FK_ClientProject]
ON [dbo].[Projects]
    ([Client_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------