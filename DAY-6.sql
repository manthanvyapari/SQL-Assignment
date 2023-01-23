create table Shooes(
ShooesID int primary key identity(1,1),
ShooesName varchar (20)
)

select*from Shooes
insert into Shooes values ('spark')
insert into Shooes values ('puma')
insert into Shooes values ('runnerup')
insert into Shooes values ('jordon')
insert into Shooes values ('campus')


select *from employeeee
select *from Dept

--count emp in each department
--count emp which is in Hr department

select empdept , count (empid) as 'Employe' from employeeee 
group by empdept


create view deptwise_countofemp                         --------------->creat view
as
select d.deptname,count(e.empid)as'count' from employeeee e
inner join Dept d on d.deptid=e.empdept
where d.deptname ='PD'
group by d.deptname

--having count(empid)>5


select name,count(empid) as 'Employ' from employeeee 
group by name


--display count of emp whooes from india and usa and display assend order of count

select e.country,count(e.empid)as 'Employe' from employeeee e
--where e.country ='India' and e.country='USA'
group by e.country
--aving country in ('India','USA')
having country  is null
order by count(empid)



select*from deptwise_countofemp 

--to modify view use alter
 alter create view deptwise_countofemp
as
select d.deptname,count(e.empid)as'count' from employeeee e
inner join Dept d on d.deptid=e.empdept
where d.deptname ='PD'
group by d.deptname

--to delet view use drop 
drop view deptwise_countofemp 