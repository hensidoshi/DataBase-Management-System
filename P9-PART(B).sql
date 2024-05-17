create table Emp_details
(EmpNo int,
EmpName varchar(25),
JoiningDate datetime,
Salary decimal(8,2),
City varchar(20));

insert into Emp_details values(101,' Keyur', 15-1-02 ,12000.00,' Rajkot');
insert into Emp_details values(102,' Hardik', 15-2-04 ,14000.00,' Ahmedabad');
insert into Emp_details values(103,' Kajal', 14-3-06 ,15000.00,' Baroda');
insert into Emp_details values(104,' Bhoomi', 23-6-05 ,12500.00,' Ahmedabad');
insert into Emp_details values(102,' Harmit', 15-2-04 ,14000.00,' Rajkot');

select getdate() + 365 from Emp_details;

select convert(varchar, getdate()) from Emp_details;

select convert(varchar, getdate(),106) from Emp_details;

select convert(varchar(20), getdate(),7) from Emp_details;

select datediff(month,'2002-1-15','2009-03-31') from Emp_details;

select datediff(year, '2012-01-25','2010-09-14') from Emp_details;

