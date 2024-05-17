select Name from stu
where Rno=(select Rno from Academic where SPI=(select max(SPI) from Academic));

select * from stu
where Rno IN(select Rno from Academic where Bklog>1);

select Name from stu
where Rno IN(select Rno from Academic where SPI=
(select max(SPI) from Academic where SPI<(select max(SPI) from Academic)));

--or
select Name from stu
where Rno =
(select TOP 1 RNO from Academic where SPI<(select max(SPI) from Academic)
ORDER BY SPI DESC)