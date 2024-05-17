select DISTINCT(City) from Person;

select d.DepartmentName from person p
inner join Department d on p.DepartmentID=d.DepartmentID
group by d.DepartmentName having count(d.DepartmentName)>2;

select (left(p.PersonName, 3)+right(p.City, 3)) from Person p;

update Person 
set Salary = Salary * 1.1 
where DepartmentID = 2;s

select * from Person
where datediff(dd,getdate(), JoiningDate) > 365;