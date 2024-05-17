create table City1
(Cid INT PRIMARY KEY,
Cname VARCHAR(255) NOT NULL);

create table Department1 
(Did INT PRIMARY KEY,
Dname VARCHAR(255) NOT NULL);

create table Emp1 
(Eid INT PRIMARY KEY,
Ename VARCHAR(255) NOT NULL,
Did INT NOT NULL,
Cid INT NOT NULL,
Salary FLOAT CHECK (Salary >= 0),
Experience INT CHECK (Experience >= 0),
FOREIGN KEY (Did) REFERENCES Department1(Did),
FOREIGN KEY (Cid) REFERENCES City1(Cid));

insert into Emp1
values(1, 'John', 1, 1, -1000, 5);

insert into Emp1 
values(2, 'Jane', 2, 2, 5000, -3);

select * from Emp1;