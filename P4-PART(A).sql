create table employee
(EMPNO INT,
EMPNAME VARCHAR(25),
JOININGDATE DATETIME,
SALARY DECIMAL(8,2),
CITY VARCHAR(20));

insert into employee 
values(101,'Keyur','5-jan-2002',12000.00,'Rajkot');

insert into employee 
values(102,'Hardik','15-feb-2004',14000.00,'Ahmedabad');

insert into employee 
values(103,'Kajal','14-mar-2006',15000.00,'Baroda');

insert into employee 
values(104,'Bhoomi','23-jun-05',12500.00,'Ahmedabad');

insert into employee 
values(102,'Harmit','15-feb-2005',14000.00,'Rajkot');


delete employee where SALARY>=14000;

delete employee where CITY='Rajkot';

delete employee where JOININGDATE>1-1-2007;

truncate table employee;

truncate table employee;