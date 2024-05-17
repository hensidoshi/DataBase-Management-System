select * from Emp UNION
select * from Customer;

select * from Emp UNION ALL
select * from Customer;

select * from Emp INTERSECT
select * from Customer;

select * from Emp EXCEPT
select * from Customer;

select * from Customer EXCEPT
select * from Emp;