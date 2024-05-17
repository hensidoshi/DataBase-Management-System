create table Country_c 
(Cid INT PRIMARY KEY,
Cname VARCHAR(255) NOT NULL);

create table State_s 
(Sid INT PRIMARY KEY,
Sname VARCHAR(255) NOT NULL,
Cid INT NOT NULL,
FOREIGN KEY (Cid) REFERENCES Country_c(Cid));

create table District_d
(Did INT PRIMARY KEY,
Dname VARCHAR(255) NOT NULL,
Sid INT NOT NULL,
FOREIGN KEY (Sid) REFERENCES State_s(Sid));

create table City_c 
(Cid INT PRIMARY KEY,
Cname VARCHAR(255) NOT NULL,
Did INT NOT NULL,
FOREIGN KEY (Did) REFERENCES District_d(Did));

create table Dept 
(Did INT PRIMARY KEY,
Dname VARCHAR(255) NOT NULL);

create table Emp2 
(Eid INT PRIMARY KEY,
Ename VARCHAR(255) NOT NULL,
Did INT NOT NULL,
Cid INT NOT NULL,
Salary FLOAT CHECK (Salary >= 0),
Experience INT CHECK (Experience >= 0),
FOREIGN KEY (Did) REFERENCES Dept(Did),
FOREIGN KEY (Cid) REFERENCES City_c(Cid));


insert into Country_c
values(1, 'India');
insert into Country_c
values(2, 'USA');
insert into Country_c
values(3, 'UK');
insert into Country_c
values(4, 'Australia');
insert into Country_c
values(5, 'Canada');

select * from Country_c;

insert into State_s 
values(1,'Gujarat',1);
insert into State_s 
values(2,'California',2);
insert into State_s 
values(3,'London',3);
insert into State_s 
values(4,'New South Wales',4);
insert into State_s 
values(5,'Ontario',5);

select * from State_s;

insert into District_d
values(1,'Jamnagar',1);
insert into District_d
values(2,'Los Angeles',2);
insert into District_d
values(3,'Brent',3);
insert into District_d
values(4,'Sydney',4);
insert into District_d
values(5,'Toronto',5);

select * from District_d;

insert into City_c 
values(1,'Jamnagar Taluka',1);
insert into City_c 
values(2,'Los Angeles Downtown',2);
insert into City_c 
values(3,'Brent Cross',3);
insert into City_c 
values(4,'Sydney Central Business District',4);
insert into City_c 
values(5,'Toronto Financial District',5);

select * from City_c;

insert into Dept
values(1,'Engineering');
insert into Dept
values(2,'Marketing');
insert into Dept
values(3,'Sales');
insert into Dept
values(4,'Human Resources');
insert into Dept
values(5,'Finance');

select * from Dept;

insert into Emp2
values(1,'John Doe',1 ,1 ,10000 ,5 );
insert into Emp2
values(2,'Jane Doe',2 ,2 ,20000 ,10 );
insert into Emp2
values(3,'Bob Smith',3 ,3 ,30000 ,15 );
insert into Emp2
values(4,'Alice Johnson',4 ,4 ,40000 ,20 );
insert into Emp2
values(5,'Charlie Brown',5 ,5 ,50000 ,25 );

select * from Emp2;