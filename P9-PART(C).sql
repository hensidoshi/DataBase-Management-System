select day('2016/05/12'), month('2016/05/12'), year('2016/05/12') from Emp_details;

select dateadd(year, 5, getdate()) from Emp_details;

select dateadd(month, -2, getdate()) from Emp_details;

select datename(month,getdate()) from Emp_details;
select datepart(month,getdate()) from Emp_details;

select datediff(year,'25/JAN/2002',getdate()) from Emp_details;
select datediff(month,'25/JAN/2002',getdate()) from Emp_details;