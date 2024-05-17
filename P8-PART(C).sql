select * from Student;

select space(10)+FirstName as name from Student;

select concat(FirstName , LastName) from Student;
select FirstName + LastName as name from Student;

select convert(varchar ,StuID) + FirstName + LastName + Website + City as data from Student;

select reverse(FirstName)as name from Student;

select replicate(FirstName,3)as name from Student;