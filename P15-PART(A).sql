create table stu
(Rno INT PRIMARY KEY,Name VARCHAR(20),City VARCHAR(20),DID INT FOREIGN KEY REFERENCES dep(DID));insert into stuvalues(101,'Raju','Rajkot',10);insert into stuvalues(102,'Amit','Ahmedabad',20);insert into stuvalues(103,'Sanjay','Baroda',40);insert into stuvalues(104,'Neha','Rajkot',20);insert into stuvalues(105,'Meera','Ahmedabad',30);insert into stuvalues(106,'Mahesh','Baroda',10);select * from stu;create table Academic
(Rno INT FOREIGN KEY REFERENCES stu(Rno),SPI DECIMAL(8,2) CHECK(SPI BETWEEN 0 AND 10),Bklog INT CHECK (Bklog>=0));insert into Academicvalues(101,8.8,0);
insert into Academicvalues(102,9.2,2);
insert into Academicvalues(103,7.6,1);
insert into Academicvalues(104,8.2,4);
insert into Academicvalues(105,7.0,2);
insert into Academicvalues(106,8.9,3);select * from Academic;create table dep(DID INT PRIMARY KEY,Dname VARCHAR(20));insert into depvalues(10,'Computer');
insert into depvalues(20,'Electrical');
insert into depvalues(30,'Mechanical');
insert into depvalues(40,'Civil');select * from dep;select * from stuwhere DID=(select DID from dep where Dname='Computer');select Name from stuwhere Rno IN (select Rno from Academic where SPI>8);select * from stuwhere DID=(select DID from dep where Dname='Computer')AND City='Rajkot'; select count(Rno) from stuwhere DID=(select DID from dep where DName='Electrical');