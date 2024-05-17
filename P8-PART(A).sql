select len('NULL');
select len(' hello ');
select len('Blank');

select lower('Hensi');
select upper('Hensi');

select left ('Hensi',3);

select substring('Hensi Doshi',3,10);

select replace('abc123efg',123,'XYZ');
select replace('abcabcabc','c',5);

select ascii('a');
select ascii('A');
select ascii('z');
select ascii('Z');
select ascii(0);
select ascii(9);

select char(97);
select char(65);
select char(122);
select char(90);
select char(48);
select char(57);

select ltrim(' hello world           ');

select rtrim(' hello world           ');

select left('SQL Server',4);
select right('SQL Server',5);

select cast(1234.56 as int);
select cast(10.58 as int);

select space(10)+'Hensi' as name;

select concat('he', 'llo') as name;
select 'Hensi' + 'Doshi';

select reverse('Darshan');

select replicate('hello',3);