create database RaceDayDB;
use RaceDayDB;

/* ==ORGANISATION=== */
create table Organisation
(
OrganisationID INT IDENTITY(1,1) PRIMARY KEY,
Name NVARCHAR(50) NOT NULL,
RegistrationNumber NVARCHAR(50) NOT NULL UNIQUE,
ContactEmail NVARCHAR(150) NOT NULL,
Address NVARCHAR(250) NOT NULL
);
/* ==USER==*/
create table `User`
(
UserID INT IDENTITY(1,1) PRIMARY KEY,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Email NVARCHAR(150) NOT NULL UNIQUE,
PasswordHash NVARCHAR(100) NOT NULL,
Role NVARCHAR(20) NOT NULL,
CONSTRAINT CK_User_Role CHECK (Role IN ('Admin','Organiser','Participants'))
);
show tables;
