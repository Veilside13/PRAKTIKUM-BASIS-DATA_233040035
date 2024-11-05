CREATE DATABASE pertemuan6;

use pertemuan5

CREATE TABLE Departements (
DepartementsID int identity(1,1) primary key NOT NULL,
DepartementName varchar(50) NOT NULL
)

CREATE TABLE Projects (
ProjectID int identity(1,1) primary key NOT NULL,
ProjectName varchar(50) NOT NULL,
DepartementsID int NOT NULL,
FOREIGN KEY (DepartementsID) REFERENCES Departements(DepartementsID)
ON UPDATE CASCADE
ON DELETE CASCADE)

CREATE TABLE Employee (
EmployeeID int identity(1,1) primary key NOT NULL,
Name varchar(50) NOT NULL,
DepartementsID int NOT NULL,
ManagerID int NOT NULL,
FOREIGN KEY (DepartementsID) REFERENCES DEpartements(DepartementsID),
FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID))

CREATE TABLE Salaries (
EmployeeID int NOT NULL,
salaries decimal(10,2) NOT NULL,
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
ON UPDATE CASCADE
ON DELETE CASCADE)



INSERT INTO [dbo].[Departements](DepartementName)
    VALUES
	('human resources'),
	('Finance'),
	('ID')
	INSERT INTO [dbo].[Employee] ([Name], [DepartementsID], [ManagerID])
	VALUES

	('James', 1,NULL),
	('Bover', 1,1),
	('Ant', 2,NULL),
	('Veil', 2,3),
	('Jason', 1,2),
	('Tatum', 3,NULL),
	('Crump',3,6),
	('Brandon',1,2),
	('Liam',2,3),
	('Bruno',1,5),
	('Steve',3,6),
	('Hield',2,3),
	('Bronny',1,5),
	('Davis',3,6),
	('Mike',2,3),
	

INSERT INTO [dbo].[Projects] (ProjectName, DepartementsID)
VALUES ('Web3.0', 1),
('Web Rumah Sakit', 1),
('API Rumah Sakit', 2),
('Employee Salaries', 4),
('Bank Company', 4),
('Web Rumah Sakit', 3),
('Web Rumah Sakit', 3),
('Web Rumah Sakit', 2),
('Web Rumah Sakit', 2),
('Web Rumah Sakit', 2),
