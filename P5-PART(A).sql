create table Student
(Enrollment_No VARCHAR(20),
Name VARCHAR(25),
CPI DECIMAL(5,2),
Birthdate DATETIME);

alter table Student
add City VARCHAR(20),
Backlog INT;

alter table Student
alter column Name VARCHAR(35);

alter table Student
alter column CPI INT;

sp_rename 'Student.Enrollment_No' , 'ENO';

alter table Student
drop column city;

sp_rename 'Student' , 'Student_Master';

drop table Student_Master;