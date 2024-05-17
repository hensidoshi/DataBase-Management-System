create proc Departmet_Input 
@DepartmentName VARCHAR(100)
as
select p.FirstName from Person1 p
inner join Department2 d
on d.DepartmentID = p.DepartmentID 
where d.DepartmentName = @DepartmentName;
exec Departmet_Input 'IT';

create proc DeptDesg_Input 
@DepartmentName VARCHAR(100), 
@DesignationName VARCHAR(50)
as
select p.FirstName,p.Salary,p.JoiningDate,de.DepartmentName from Person1 p
inner join Department2 de
on de.DepartmentID = p.DepartmentID 
inner join Designation des
on p.DesignationID = des.DesignationID
where de.DepartmentName = @DepartmentName AND des.DesignationName = @DesignationName;
exec DeptDesg_Input 'IT','Jobber';

create proc FirstName_Input 
@FirstName VARCHAR(100)
as
select p.WorkerID,p.FirstName,p.LastName,p.JoiningDate,p.Salary,de.DepartmentName,
des.DesignationName from Person1 p
inner join Department2 de
on p.DepartmentID=de.DepartmentID
inner join Designation des
on p.DesignationID = des.DesignationID 
where p.FirstName = @FirstName;
exec FirstName_Input 'Hardik';

create proc Deptwise_MaxMinTotal
as
select De.DepartmentName,max(p.Salary),min(p.Salary),sum(p.Salary) From Person1 p
inner join Department2 de
on p.DepartmentID = de.DepartmentID 
group by de.DepartmentName;
exec Deptwise_MaxMinTotal;

create proc Designation_AvgTotalSal
as
select des.DesignationName,max(p.Salary),min(p.Salary),sum(p.Salary) from Person1 p
inner join Designation des
on p.DesignationID= des.DesignationID 
group by des.DesignationName;

