select * from Student;

select len(FirstName)as name from Student;
select len(LastName)as name from Student;

select lower(FirstName)as name from Student; 
select lower(LastName)as name from Student; 

select upper(FirstName)as name from Student; 
select upper(LastName)as name from Student;

select substring(FirstName,1,3)as name from Student;

select substring(Website,3,10)as website from Student;

select left(Website,4)as website from Student;
select right(Website,5)as website from Student;