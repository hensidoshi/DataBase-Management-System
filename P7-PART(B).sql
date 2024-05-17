create table empolyee
(EmpNo INT,
EmpName VARCHAR(20),
JoiningDate DATETIME,
Salary DECIMAL(8,2),
Commission DECIMAL(8,2),
City VARCHAR(20));

insert into empolyee
values(101,'Keyur',5-01-2002,12000.00,4500,'Rajkot');
insert into empolyee
values(102,'Hardik',15-02-2004,14000.00,2500,'Ahmedabad');
insert into empolyee
values(103,'Kajal',14-03-2006,15000.00,3000,'Baroda');
insert into empolyee
values(104,'Bhoomi',23-06-2005,12500.00,1000,'Ahmedabad');
insert into empolyee
values(102,'Harmit',15-02-2004,14000.00,2000,'Rajkot');

select EmpName ,(Salary+Commission) as Total from empolyee;

SELECT CEILING(55.2);
SELECT CEILING(35.7);
SELECT CEILING(-55.2);

SELECT FLOOR(55.2);
SELECT FLOOR(35.7);
SELECT FLOOR(-55.2);

SELECT 55/2;
SELECT 55/3;

SELECT POWER(23,2);
SELECT POWER(14,3);