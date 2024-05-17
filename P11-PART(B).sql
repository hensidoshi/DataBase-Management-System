create table Employee
(Name varchar(20),
City varchar(20),
Age int);

insert into Employee
values('Jay Patel','Rajkot', 30);insert into Employeevalues('Rahul Dave','Baroda',35);insert into Employeevalues('Jeet Patel', 'Surat', 31);insert into Employeevalues('Vijay Raval','Rajkot', 30);select * into Employee_details from Employee;select Name,City into Employee_data from Employee where 1=2;select * into Employee_info from Employee where 1=2;insert into Employee_info select * from Employee where Name like '_a_____%';insert into Employee_info select * from Employee where Age>32;