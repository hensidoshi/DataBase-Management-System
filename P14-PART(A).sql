create table City
(CityID	INT	PRIMARY KEY,
Name VARCHAR(20) UNIQUE,
Pincode INT NOT NULL,
Remakrs VARCHAR(20));insert into Cityvalues(1,'Rajkot',360005,'Good');
insert into Cityvalues(2,'Surat',335009,'Very Good');
insert into Cityvalues(3,'Baroda',390001,'Awesome');
insert into Cityvalues(4,'Jamnagar',361003,'Smart');
insert into Cityvalues(5,'Junagadh',362229,'Historic');
insert into Cityvalues(6,'Morvi',363641,'Ceramic');select * from City;create table Village(VID INT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
CityID INT,
FOREIGN KEY (CityID) REFERENCES City(CityID));insert into Village 
values(101,'Raiya',1);
insert into Village 
values(102,'Madhapar',1);
insert into Village 
values(103,'Dodka',3);
insert into Village 
values(104,'Falla',4);
insert into Village 
values(105,'Bhesan',5);
insert into Village 
values(106,'Dhoraji',5);select * from Village;select v.Name from City cinner join Village v on c.CityID=v.CityIDwhere c.CityID=1;select c.Name, v.Name, c.Pincode from City cinner join Village v on c.CityID=v.CityID;select c.Name from City cinner join Village v on c.CityID=v.CityIDgroup by c.Name having count(v.Name)>1;select c.Name from City cwhere CityID NOT IN (select DISTINCT CityID from Village);select c.Name,count(c.CityID) from City cinner join Village v on c.CityID=v.CityIDgroup by c.Name;select c.Name,count(v.Name) from City cinner join Village v on c.CityID=v.CityIDgroup by c.Name having count(v.Name)>1;create table Student2(Rno INT PRIMARY KEY,Name VARCHAR(20),Branch VARCHAR(20),SPI FLOAT,Bklog INT);insert into Student2
values(101, 'Raju', 'CE', 8.80, 0);
insert into Student2
values(102, 'Amit', 'CE', 2.20, 3);
insert into Student2
values(103, 'Sanjay', 'ME', 1.50, 6);
insert into Student2
values(104, 'Neha', 'EC', 7.65, 0);
insert into Student2
values(105, 'Meera', 'EE', 5.52, 2);
insert into Student2
values(106, 'Mahesh', NULL, 4.50, 3);

select * from Student2;

alter table Student2 
ADD CONSTRAINT CHK_SPI CHECK (SPI <= 10);

alter table Student2 
ADD CONSTRAINT CHK_Bklog CHECK (Bklog >= 0);

create table Stu2 
(Rno INT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Branch VARCHAR(20) DEFAULT 'General',
SPI FLOAT CHECK (SPI <= 10),
Bklog INT CHECK (Bklog >= 0));

UPDATE Stu2 
SET SPI = 12 WHERE Rno = 101;

UPDATE Stu2 
SET Bklog = -1 WHERE Rno = 104;