create table Person1
(WorkerID INT PRIMARY KEY,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR (100) NOT NULL,
Salary DECIMAL (8,2) NOT NULL,
JoiningDate DATETIME NOT NULL,
DepartmentID INT FOREIGN KEY REFERENCES Department2(DepartmentID),
DesignationID INT FOREIGN KEY REFERENCES Designation(DesignationID));

create table Department2
(DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(100) NOT NULL);

create table Designation
(DesignationID INT PRIMARY KEY,
DesignationName VARCHAR(100) NOT NULL);

insert into Person1
values(101,'Rahul','Anshu',56000,01-01-1990,1,12);
insert into Person1
values(102,'Hardik','Hinsu',18000,25-09-1990,2,11);
insert into Person1
values(103,'Bhavin','Kamani',25000,14-05-1991,NULL,11);
insert into Person1
values(104,'Bhoomi','Patel',39000,20-02-2014,1,13);
insert into Person1
values(105,'Rohit','Rajgor', 17000,23-07-1990,2,15);
insert into Person1
values(106,'Priya','Mehta',25000,18-10-1990,2,NULL);
insert into Person1
values(107,'Neha','Trivedi',18000,20-02-2014,3,15);

select * from Person1;

insert into Department2
values(1,'Admin');
insert into Department2
values(2,'IT');
insert into Department2
values(3,'HR');
insert into Department2
values(4,'Account');

select * from Department2;

insert into Designation
values(11,'Jobber');
insert into Designation
values(12,'Welder');
insert into Designation
values(13,'Clerk');
insert into Designation
values(14,'Manager');
insert into Designation
values(15,'CEO');

select * from Designation;

--insert
create proc sp_Person1_insert
@WorkerID INT,
@FirstName VARCHAR(100),
@LastName VARCHAR(100),
@Salary DECIMAL(8,2),
@JoiningDate DATETIME,
@DepartmentID INT,
@DesignationID INT
as
insert into Person1
values(@WorkerID,@FirstName,@LastName,@Salary,@JoiningDate,@DepartmentID,@DesignationID);

create proc sp_Department2_insert
@DepartmentID INT,
@DepartmentName VARCHAR(100)
as
insert into Department2
values(@DepartmentID,@DepartmentName);

create proc sp_Designation_insert
@DesignationID INT,
@DesignationName VARCHAR(100)
as
insert into Designation
values(@DesignationID,@DesignationName);

--update
create proc sp_Person1_update
@WorkerID INT,
@FirstName VARCHAR(100),
@LastName VARCHAR(100),
@Salary DECIMAL(8,2),
@JoiningDate DATETIME,
@DepartmentID INT,
@DesignationID INT
as
update Person1 
SET FirstName=@FirstName
where WorkerID=@WorkerID;

create proc sp_Department2_update
@DepartmentID INT,
@DepartmentName VARCHAR(100)
as
update Department2
SET DepartmentName=@DepartmentName
where DepartmentID=@DepartmentID;

create proc sp_Designation_update
@DesignationID INT,
@DesignationName VARCHAR(100)
as
update Designation
SET DesignationName=@DesignationName
where DesignationID=@DesignationID;

--delete
create proc sp_Person1_delete
@WorkerID INT,
@FirstName VARCHAR(100),
@LastName VARCHAR(100),
@Salary DECIMAL(8,2),
@JoiningDate DATETIME,
@DepartmentID INT,
@DesignationID INT
as
delete Person1
where WorkerID=@WorkerID;

create proc sp_Department2_delete
@DepartmentID INT,
@DepartmentName VARCHAR(100)
as
delete Department2
where DepartmentID=@DepartmentID;

create proc sp_Designation_delete
@DesignationID INT,
@DesignationName VARCHAR(100)
as
delete Designation
where DesignationID=@DesignationID;

create proc sp_Person1pk_WorkerID
@WorkerID INT
as
select * from Person1
where WorkerID=@WorkerID;
exec sp_Person1pk_WorkerID 102;

create proc sp_Department2pk_DepartmentID
@DepartmentID INT
as
select * from Department2
where DepartmentID=@DepartmentID;
exec sp_Department2pk_DepartmentID 1;

create proc sp_Designationpk_DesignationID
@DesignationID INT
as
select * from Designation
where DesignationID=@DesignationID;
exec sp_Designationpk_DesignationID 14;

create proc sp_selectall
as
select 
p.WorkerID,p.FirstName,p.LastName,p.Salary,p.JoiningDate,de.DepartmentName,d.DesignationName
from Person1 p 
inner join Department2 de 
on p.DepartmentID=de.DepartmentID 
inner join Designation d
on p.DesignationID=d.DesignationID;

create proc sp_person_top3
as
select TOP 3 * from Person1;
exec sp_person_top3;





