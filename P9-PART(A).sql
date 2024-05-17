select getdate() as Today_Date;

select getdate() + 365;

select convert(varchar, getdate());

select convert(varchar, getdate(),106);

select convert(varchar(20), getdate(),7);

select datediff(month,'2008-12-31','2009-03-31');

select datediff(year, '2012/01/25','2010/09/14');

select datediff(hour, '2012-01-25 07:00', '2012-01-26 10:30');

select day('2016/05/12'), month('2016/05/12'), year('2016/05/12');

select dateadd(year, 5, getdate());

select dateadd(month, -2, getdate());

select datename(month,getdate());
select datepart(month,getdate());

select eomonth(getdate());

select datediff(year,'25/JAN/2002',getdate());
select datediff(month,'25/JAN/2002',getdate());

