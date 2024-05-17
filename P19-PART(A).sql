create table Person2
(PersonID INT PRIMARY KEY,
PersonName VARCHAR(100) NOT NULL,
DepartmentID INT FOREIGN KEY (DepartmentID) REFERENCES Dept2(DepartmentID),
Salary DECIMAL(8,2) NOT NULL,
JoiningDate DATETIME NOT NULL,
City VARCHAR(100) NOT NULL);insert into Person2values(101,'Rahul Tripathi',2,56000,01-01-2000,'Rajkot');
insert into Person2values(102,'Hardik Pandya',3,18000,25-09-2001,'Ahmedabad');
insert into Person2values(103,'Bhavin Kanani',4,25000,14-05-2000,'Baroda');
insert into Person2values(104,'Bhoomi Vaishnav',1,39000,08-02-2005,'Rajkot');
insert into Person2values(105,'Rohit Topiya',2,17000,23-07-2001,'Jamnagar');
insert into Person2values(106,'Priya Menpara',NULL,9000,18-10-2000,'Ahmedabad');insert into Person2values(107,'Neha Sharma',2,34000,25-12-2002,'Rajkot');
insert into Person2values(108,'Nayan Goswami',3,25000,01-07-2001,'Rajkot');
insert into Person2values(109,'Mehul Bhundiya',4,13500,09-01-2005,'Baroda');
insert into Person2values(110,'Mohit Maru',5,14000,25-05-2000,'Jamnagar');select * from Person2;create table Dept2(DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(100) NOT NULL, 
DepartmentCode VARCHAR(50) NOT NULL,
Location VARCHAR(50) NOT NULL);insert into Dept2values(1,'Admin','Adm','A-Block');
insert into Dept2values(2,'Computer','CE','C-Block');
insert into Dept2values(3,'Civil','CI','G-Block');
insert into Dept2values(4,'Electrical','EE','E-Block');
insert into Dept2values(5,'Mechanical','ME','B-Block');select * from Dept2;select p.PersonName,d.DepartmentName,d.DepartmentCode from Person2 p inner join Dept2 don p.DepartmentID=d.DepartmentID;select d.DepartmentName,max(Salary),min(Salary) from Person2 pinner join Dept2 don p.DepartmentID=d.DepartmentIDgroup by DepartmentName;select d.DepartmentName from Person2 pinner join Dept2 don p.DepartmentID=d.DepartmentIDgroup by d.DepartmentNamehaving sum(p.Salary)>100000;select p.PersonName, p.Salary, d.DepartmentName from Person2 pinner join Dept2 don p.DepartmentID=d.DepartmentIDwhere p.City='Jamnagar';select p.PersonName from Person2 pinner join Dept2 don p.DepartmentID=d.DepartmentIDwhere DepartmentName IS NULL;