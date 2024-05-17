select distinct(City) From Person2;

select d.DepartmentName from Person2 p
inner join Dept2 d
on p.DepartmentID=d.DepartmentID
group by d.DepartmentName
having count(p.PersonID)>2;

select (LEFT(PersonName,3)+RIGHT(City,3)) From Person2;

update Person2
set Salary=Salary+Salary*0.10 From Person2 p
inner join Dept2 d
on p.DepartmentID=d.DepartmentID
where d.DepartmentName='Computer';

select PersonName from Person2
where datediff(day,JoiningDate,getdate())>365;
