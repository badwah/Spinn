
-- --------------------------------------------------

-- Entity Designer DDL Script for SQLite

-- --------------------------------------------------
-- Date Created: 05/23/2012 11:09:53
-- Generated from EDMX file: C:\Users\BEClaviP\Downloads\badwah-Spinn-a726fa6\Spinn.DAL.EF\SpinnModel.edmx

-- --------------------------------------------------
-- Dropping existing tables
-- NOTE: if the table does not exist, an ignorable error will be reported.
-- --------------------------------------------------

    DROP TABLE IF EXISTS People;

    DROP TABLE IF EXISTS Services;

    DROP TABLE IF EXISTS Skills;

    DROP TABLE IF EXISTS Positions;

    DROP TABLE IF EXISTS SkillCategoryTags;

    DROP TABLE IF EXISTS ProjectPersons;

    DROP TABLE IF EXISTS ProjectSkills;

    DROP TABLE IF EXISTS ProjectPositions;

    DROP TABLE IF EXISTS Degrees;

    DROP TABLE IF EXISTS Courses;

    DROP TABLE IF EXISTS Conventions;

    DROP TABLE IF EXISTS Projects;

    DROP TABLE IF EXISTS PersonPositions;

    DROP TABLE IF EXISTS PersonSkills;

    DROP TABLE IF EXISTS Employers;

    DROP TABLE IF EXISTS Employees;

    DROP TABLE IF EXISTS CourseStudents;

    DROP TABLE IF EXISTS Clients;

    DROP TABLE IF EXISTS PersonService;

    DROP TABLE IF EXISTS SkillCategoryTagSkill;

    DROP TABLE IF EXISTS ServicePosition;

    DROP TABLE IF EXISTS SkillPosition;

    DROP TABLE IF EXISTS PersonConvention;


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE People (
    Id int IDENTITY(1,1) NOT NULL,
    FirstName nvarchar  NOT NULL,
    LastName nvarchar  NOT NULL,
    Email nvarchar  NOT NULL,
    Gsm nvarchar  NOT NULL,
    DateOfBirth datetime  NOT NULL,
    Street nvarchar  NOT NULL,
    HouseNumber nvarchar  NOT NULL,
    City nvarchar  NOT NULL,
    PostalCode nvarchar  NOT NULL,
    Country nvarchar  NOT NULL,
    Nationality nvarchar  NOT NULL,
    Profile nvarchar  NOT NULL,
    CONSTRAINT PK_People
    PRIMARY KEY (Id)

);

-- Creating table 'Services'
CREATE TABLE Services (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    CONSTRAINT PK_Services
    PRIMARY KEY (Id)

);

-- Creating table 'Skills'
CREATE TABLE Skills (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    CONSTRAINT PK_Skills
    PRIMARY KEY (Id)

);

-- Creating table 'Positions'
CREATE TABLE Positions (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    CONSTRAINT PK_Positions
    PRIMARY KEY (Id)

);

-- Creating table 'SkillCategoryTags'
CREATE TABLE SkillCategoryTags (
    Id int IDENTITY(1,1) NOT NULL,
    SkillParentCategoryTag_Id int  NOT NULL,
    CONSTRAINT PK_SkillCategoryTags
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_SkillCategoryTagSkillCategoryTag
    FOREIGN KEY (SkillParentCategoryTag_Id)
    REFERENCES SkillCategoryTags
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'ProjectPersons'
CREATE TABLE ProjectPersons (
    Id int IDENTITY(1,1) NOT NULL,
    Description nvarchar  NOT NULL,
    StartDate datetime  NOT NULL,
    EndDate datetime  NOT NULL,
    Person_Id int  NOT NULL,
    Project_Id int  NOT NULL,
    CONSTRAINT PK_ProjectPersons
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_PersonProject
    FOREIGN KEY (Person_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_ProjectProjectPerson
    FOREIGN KEY (Project_Id)
    REFERENCES Projects
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'ProjectSkills'
CREATE TABLE ProjectSkills (
    Id int IDENTITY(1,1) NOT NULL,
    Importance int  NOT NULL,
    Skill_Id int  NOT NULL,
    ProjectPerson_Id int  NOT NULL,
    CONSTRAINT PK_ProjectSkills
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_SkillProjectSkill
    FOREIGN KEY (Skill_Id)
    REFERENCES Skills
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_ProjectProjectSkill
    FOREIGN KEY (ProjectPerson_Id)
    REFERENCES ProjectPersons
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'ProjectPositions'
CREATE TABLE ProjectPositions (
    Id int IDENTITY(1,1) NOT NULL,
    Importance int  NOT NULL,
    Position_Id int  NOT NULL,
    ProjectPerson_Id int  NOT NULL,
    CONSTRAINT PK_ProjectPositions
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_PositionProjectPosition
    FOREIGN KEY (Position_Id)
    REFERENCES Positions
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_ProjectProjectPosition
    FOREIGN KEY (ProjectPerson_Id)
    REFERENCES ProjectPersons
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'Degrees'
CREATE TABLE Degrees (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    StartDate nvarchar  NOT NULL,
    EndDate nvarchar  NOT NULL,
    DegreeType nvarchar  NOT NULL,
    Person_Id int  NOT NULL,
    CONSTRAINT PK_Degrees
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_PersonDegree
    FOREIGN KEY (Person_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'Courses'
CREATE TABLE Courses (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    CONSTRAINT PK_Courses
    PRIMARY KEY (Id)

);

-- Creating table 'Conventions'
CREATE TABLE Conventions (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    StartDate nvarchar  NOT NULL,
    CONSTRAINT PK_Conventions
    PRIMARY KEY (Id)

);

-- Creating table 'Projects'
CREATE TABLE Projects (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    StartDate datetime  NOT NULL,
    EndDate datetime  NULL,
    Client_Id int  NOT NULL,
    CONSTRAINT PK_Projects
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_ClientProject
    FOREIGN KEY (Client_Id)
    REFERENCES Clients
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'PersonPositions'
CREATE TABLE PersonPositions (
    Id int IDENTITY(1,1) NOT NULL,
    Importance nvarchar  NOT NULL,
    Level nvarchar  NOT NULL,
    Position_Id int  NOT NULL,
    Person_Id int  NOT NULL,
    CONSTRAINT PK_PersonPositions
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_PositionPersonPosition
    FOREIGN KEY (Position_Id)
    REFERENCES Positions
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_PersonPersonPosition
    FOREIGN KEY (Person_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'PersonSkills'
CREATE TABLE PersonSkills (
    Id int IDENTITY(1,1) NOT NULL,
    Importance nvarchar  NOT NULL,
    Level nvarchar  NOT NULL,
    Skill_Id int  NOT NULL,
    Person_Id int  NOT NULL,
    CONSTRAINT PK_PersonSkills
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_SkillPersonSkill
    FOREIGN KEY (Skill_Id)
    REFERENCES Skills
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_PersonPersonSkill
    FOREIGN KEY (Person_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'Employers'
CREATE TABLE Employers (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    CONSTRAINT PK_Employers
    PRIMARY KEY (Id)

);

-- Creating table 'Employees'
CREATE TABLE Employees (
    Id int IDENTITY(1,1) NOT NULL,
    StartDate datetime  NOT NULL,
    EndDate datetime  NOT NULL,
    Description nvarchar  NOT NULL,
    Employer_Id int  NOT NULL,
    Person_Id int  NOT NULL,
    CONSTRAINT PK_Employees
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_EmployerEmployee
    FOREIGN KEY (Employer_Id)
    REFERENCES Employers
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_PersonEmployee
    FOREIGN KEY (Person_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'CourseStudents'
CREATE TABLE CourseStudents (
    Id int IDENTITY(1,1) NOT NULL,
    StartDate datetime  NOT NULL,
    Course_Id int  NOT NULL,
    Person_Id int  NOT NULL,
    CONSTRAINT PK_CourseStudents
    PRIMARY KEY (Id)

,
    CONSTRAINT FK_CourseCourseStudent
    FOREIGN KEY (Course_Id)
    REFERENCES Courses
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_PersonCourseStudent
    FOREIGN KEY (Person_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'Clients'
CREATE TABLE Clients (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar  NOT NULL,
    Description nvarchar  NOT NULL,
    CONSTRAINT PK_Clients
    PRIMARY KEY (Id)

);

-- Creating table 'PersonService'
CREATE TABLE PersonService (
    Persons_Id int  NOT NULL,
    Services_Id int  NOT NULL,
    CONSTRAINT PK_PersonService
    PRIMARY KEY (Persons_Id, Services_Id)

,
    CONSTRAINT FK_PersonService_Person
    FOREIGN KEY (Persons_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_PersonService_Service
    FOREIGN KEY (Services_Id)
    REFERENCES Services
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'SkillCategoryTagSkill'
CREATE TABLE SkillCategoryTagSkill (
    SkillCategoryTags_Id int  NOT NULL,
    Skills_Id int  NOT NULL,
    CONSTRAINT PK_SkillCategoryTagSkill
    PRIMARY KEY (SkillCategoryTags_Id, Skills_Id)

,
    CONSTRAINT FK_SkillCategoryTagSkill_SkillCategoryTag
    FOREIGN KEY (SkillCategoryTags_Id)
    REFERENCES SkillCategoryTags
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_SkillCategoryTagSkill_Skill
    FOREIGN KEY (Skills_Id)
    REFERENCES Skills
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'ServicePosition'
CREATE TABLE ServicePosition (
    Services_Id int  NOT NULL,
    Positions_Id int  NOT NULL,
    CONSTRAINT PK_ServicePosition
    PRIMARY KEY (Services_Id, Positions_Id)

,
    CONSTRAINT FK_ServicePosition_Service
    FOREIGN KEY (Services_Id)
    REFERENCES Services
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_ServicePosition_Position
    FOREIGN KEY (Positions_Id)
    REFERENCES Positions
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'SkillPosition'
CREATE TABLE SkillPosition (
    Skills_Id int  NOT NULL,
    Positions_Id int  NOT NULL,
    CONSTRAINT PK_SkillPosition
    PRIMARY KEY (Skills_Id, Positions_Id)

,
    CONSTRAINT FK_SkillPositions_Skill
    FOREIGN KEY (Skills_Id)
    REFERENCES Skills
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_SkillPositions_Position
    FOREIGN KEY (Positions_Id)
    REFERENCES Positions
        (Id)
    ON DELETE NO ACTION
    
);

-- Creating table 'PersonConvention'
CREATE TABLE PersonConvention (
    Persons_Id int  NOT NULL,
    Conventions_Id int  NOT NULL,
    CONSTRAINT PK_PersonConvention
    PRIMARY KEY (Persons_Id, Conventions_Id)

,
    CONSTRAINT FK_PersonConvention_Person
    FOREIGN KEY (Persons_Id)
    REFERENCES People
        (Id)
    ON DELETE NO ACTION
    
,
    CONSTRAINT FK_PersonConvention_Convention
    FOREIGN KEY (Conventions_Id)
    REFERENCES Conventions
        (Id)
    ON DELETE NO ACTION
    
);










-- Creating non-clustered index for FOREIGN KEY 'FK_PersonService_Service'
CREATE INDEX IX_FK_PersonService_Service
ON PersonService
    (Services_Id);








-- Creating non-clustered index for FOREIGN KEY 'FK_SkillCategoryTagSkill_Skill'
CREATE INDEX IX_FK_SkillCategoryTagSkill_Skill
ON SkillCategoryTagSkill
    (Skills_Id);








-- Creating non-clustered index for FOREIGN KEY 'FK_ServicePosition_Position'
CREATE INDEX IX_FK_ServicePosition_Position
ON ServicePosition
    (Positions_Id);








-- Creating non-clustered index for FOREIGN KEY 'FK_SkillPositions_Position'
CREATE INDEX IX_FK_SkillPositions_Position
ON SkillPosition
    (Positions_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PersonProject'
CREATE INDEX IX_FK_PersonProject
ON ProjectPersons
    (Person_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_SkillProjectSkill'
CREATE INDEX IX_FK_SkillProjectSkill
ON ProjectSkills
    (Skill_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProjectSkill'
CREATE INDEX IX_FK_ProjectProjectSkill
ON ProjectSkills
    (ProjectPerson_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PositionProjectPosition'
CREATE INDEX IX_FK_PositionProjectPosition
ON ProjectPositions
    (Position_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProjectPosition'
CREATE INDEX IX_FK_ProjectProjectPosition
ON ProjectPositions
    (ProjectPerson_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_SkillCategoryTagSkillCategoryTag'
CREATE INDEX IX_FK_SkillCategoryTagSkillCategoryTag
ON SkillCategoryTags
    (SkillParentCategoryTag_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PersonDegree'
CREATE INDEX IX_FK_PersonDegree
ON Degrees
    (Person_Id);








-- Creating non-clustered index for FOREIGN KEY 'FK_PersonConvention_Convention'
CREATE INDEX IX_FK_PersonConvention_Convention
ON PersonConvention
    (Conventions_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProjectPerson'
CREATE INDEX IX_FK_ProjectProjectPerson
ON ProjectPersons
    (Project_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PositionPersonPosition'
CREATE INDEX IX_FK_PositionPersonPosition
ON PersonPositions
    (Position_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPersonPosition'
CREATE INDEX IX_FK_PersonPersonPosition
ON PersonPositions
    (Person_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_SkillPersonSkill'
CREATE INDEX IX_FK_SkillPersonSkill
ON PersonSkills
    (Skill_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPersonSkill'
CREATE INDEX IX_FK_PersonPersonSkill
ON PersonSkills
    (Person_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_EmployerEmployee'
CREATE INDEX IX_FK_EmployerEmployee
ON Employees
    (Employer_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PersonEmployee'
CREATE INDEX IX_FK_PersonEmployee
ON Employees
    (Person_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_CourseCourseStudent'
CREATE INDEX IX_FK_CourseCourseStudent
ON CourseStudents
    (Course_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_PersonCourseStudent'
CREATE INDEX IX_FK_PersonCourseStudent
ON CourseStudents
    (Person_Id);





-- Creating non-clustered index for FOREIGN KEY 'FK_ClientProject'
CREATE INDEX IX_FK_ClientProject
ON Projects
    (Client_Id);



-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------