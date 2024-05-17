create table Person
(PersonID INT,
PersonName VARCHAR(25),
DepartmentID INT,
Salary INT,
JoiningDate DATETIME,
City VARCHAR(20));

insert into Person
values(101,'Rahul Tripathi',2,56000,01-01-2000,'Rajkot'); 
insert into Person
values(102,'Hardik Pandya',3,18000,25-09-2001,'Ahmedabad');
insert into Person
values(103,'Bhavin Kanani',4,25000,14-05-2000,'Baroda'); 
insert into Person
values(104,'Bhoomi Vaishnav',1,39000,08-02-2005,'Rajkot'); 
insert into Person
values(105,'Rohit Topiya,',2,17000,23-07-2001,'Jamnagar'); 
insert into Person
values(106,'Priya Menpara',NULL,9000,18-10-2000,'Ahmedabad');
insert into Person
values(107,'Neha Sharma',2,34000,25-12-2002,'Rajkot');
insert into Person
values(108,'Nayan Goswami',3,25000,01-07-2001,'Rajkot'); 
insert into Person
values(109,'Mehul Bhundiya',4,13500,09-01-2005,'Baroda ');
insert into Person
values(110,'Mohit Maru',5,14000,25-05-2000,'Jamnagar'); 

select * from Person;

create table Department
(DepartmentID INT,
DepartmentName VARCHAR(20),
DepartmentCode VARCHAR(20),
Location VARCHAR(20));

insert into Department
values(1,'Admin','Adm','A-Block'); 
insert into Department
values(2,'Computer','CE','C-Block'); 
insert into Department
values(3,'Civil','CI','G-Block'); 
insert into Department
values(4,'Electrical','EE','E-Block');
insert into Department
values(5,'Mechanical','ME','B-Block'); 

select * from Department;

select p.PersonName,d.DepartmentName,d.DepartmentCode from Person p
inner join Department d on p.DepartmentID=d.DepartmentID;

select d.DepartmentName,max(Salary), min(Salary) from Person p
inner join Department d  on p.DepartmentID=d.DepartmentID
group by d.DepartmentName;

select d.DepartmentName,sum(Salary) from Person p 
inner join Department d on p.DepartmentID=d.DepartmentID
group by d.DepartmentName having sum(salary)>100000;

select p.PersonName,p.Salary,d.DepartmentName from Person p
inner join Department d on p.DepartmentID=d.DepartmentID
where p.City='Jamnagar';

select p.PersonName from Person p 
left outer join Department d on p.DepartmentID=d.DepartmentID 
where d.DepartmentName IS NULL;

select d.DepartmentName,Count(p.PersonName) from Person p
inner join Department d on p.DepartmentID=d.DepartmentID 
group by DepartmentName;

select avg(p.Salary) from Person p
left outer join Department d on p.DepartmentID=d.DepartmentID 
where p.City='Ahmedabad' group by p.City;

select p.PersonName,(p.Salary)/12 as earns,d.DepartmentName from person p
inner join Department d on p.DepartmentID=d.DepartmentID;

select d.DepartmentName from Person p 
inner join Department d on p.DepartmentID=d.DepartmentID
where d.DepartmentName IS NULL;

select p.City,max(p.Salary) as maxsalary,avg(p.Salary) as avgSalary ,sum(p.Salary) as totalSalary  from Person p
inner join Department d on p.DepartmentID=d.DepartmentID
group by p.City,d.DepartmentName;