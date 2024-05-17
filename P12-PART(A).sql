create table Employee
(EID int,
EName varchar(20),
Department varchar(20),
Salary decimal(8,2),
JoiningDate datetime,
City varchar(20));

insert into Employee
values(101,'Rahul','Admin',56000,1-01-1990,'Rajkot');
insert into Employee
values(102,'Hardik','IT',18000,25-09-1990,'Ahmedabad');
insert into Employee
values(103,'Bhavin','HR',25000,14-05-1991,'Baroda');
insert into Employee
values(104,'Bhoomi','Admin',39000,8-02-1991,'Rajkot');
insert into Employee
values(105,'Rohit','IT',17000,23-07-1990,'Jamnagar');
insert into Employee
values(106,'Priya','IT',9000,18-10-1990,'Ahmedabad');
insert into Employee
values(107,'Neha','HR',34000,25-12-1991,'Rajkot');

select max(Salary) as Maximum from Employee;
select min(Salary) as Minimum from Employee;
select sum(Salary) as Total_Sal from Employee;
select avg(Salary) as Average_Sal from Employee;

select count(EID) from Employee;

select max(Salary) from Employee where Department='IT';

select count(distinct City) from Employee ;

select city,count(EName) from Employee group by City;

select City,count(EName) from Employee group by City having count(EName)>1;

select Department,sum(Salary) from Employee group by Department;

select avg(Salary) from Employee group by Department;

select min(Salary) from Employee where City='Ahmedabad';

select Department from Employee where City='Rajkot' group by Department having sum(salary)>50000;

