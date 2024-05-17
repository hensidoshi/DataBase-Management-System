create table stud
(StuID INT,
Name VARCHAR(100),
EnrollmentNo VARCHAR(12),
Division VARCHAR(50),
Sem INT,
BirthDate DATETIME,
Email VARCHAR(100),
ContactNo VARCHAR(50));

insert into stud
values(101,'Naimish Patel',090200107051,'BCX-3',3,1992-12-06,'naimishp49@gmail.com',886620525);
insert into stud
values(102,'Firoz A.S.',090200107090,'BCY-3',3,1994-05-03,'Firoz.me@gmail.com',8885999922);
insert into stud
values(103,'Krunal Vyas',090243107101,'BCZ-5',5,1984-03-01,'Krunal.vyas@gmail.com',9990888877);
insert into stud
values(104,'Vijay Patel',090200107102,'BCX-5',5,1985-02-15,'Vijay.patel123@gmail.com',8787878787);
insert into stud
values(105,'Vimal Trivedi',090200107103,'BCY-3',3,1988-01-20,'Maulik123@gmail.com',8789564512);

select * from stud;

select * from stud where Sem=3 OR Sem=5;
select * from stud where Sem IN(3,5);

select Name,EnrollmentNo from stud where StuID BETWEEN 103 AND 105;

select Name,EnrollmentNo,Email from stud where Sem=5;

select TOP 3 * from stud;

select  TOP 30 percent Name,EnrollmentNo from stud where ContactNo like '%7' ;

select DISTINCT Sem from stud ;

select * from stud where EnrollmentNo IS NULL;

select * from stud where Name NOT like 'V%';

select * from stud where Email like '%3@g%' AND Email like '______';

select * from stud where Name like 'F_r%';