create proc DepartmentName_Input
@DepartmentName VARCHAR(100)
as
select count(p.WorkerID) from Person1 p
inner join Department2 d
on p.DepartmentID = d.DepartmentID
where d.DepartmentName = @DepartmentName;

create proc Dept_Desg_Input
@DepartmentName VARCHAR(100),
@DesignationName VARCHAR(100)
as
select p.FirstName,p.LastName,p.Salary,p.JoiningDate from Person1 p
inner join Department2 de
on p.DepartmentID = de.DepartmentID
inner join Designation des
on p.DesignationID = des.DesignationID
where(de.DepartmentName = @DepartmentName OR @DepartmentName IS NULL)
AND (des.DesignationName = @DesignationName OR @DesignationName IS NULL);
exec Dept_Desg_Input 'IT',NULL;

create proc Deptwise_count
as
select d.DepartmentID,d.DepartmentName,Count(p.WorkerID) from Person1 p
inner join Department2 d
on p.DepartmentID = d.DepartmentID
group by d.DepartmentID,d.DepartmentName 
order by d.DepartmentID;
exec Deptwise_count;



