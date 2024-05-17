select d.DepartmentName,count(PersonID) from Person2 p
inner join Dept2 d
on p.DepartmentID=d.DepartmentID
group by d.DepartmentName;

select avg(Salary) from Person2
where City='Ahmedabad';

select concat(PersonName,' EARNS ',Salary,' FROM DEPARTMENT ',DepartmentName,' MONTHLY. ') 
as 'PERSON DETAILS' from Person2 p
inner join Dept2 d
on p.DepartmentID=d.DepartmentID;

select DepartmentName from Person2 p
inner join Dept2 d
on p.DepartmentID=d.DepartmentID
where p.PersonName IS NULL
Group by d.DepartmentName;

select p.City,d.DepartmentName,sum(p.Salary) as 'Total Salary',
avg(p.Salary) as 'Average Salary',max(p.Salary) as 'Maximum Salary' from Person2 p
inner join Dept2 d
on p.DepartmentID=d.DepartmentID
group by p.City,d.DepartmentName;
