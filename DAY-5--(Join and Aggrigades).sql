select *from employeeee
select *from dept
---- inner join----->match the 2 same coulm from differt table
select e.*,d.deptname
from employeeee e 
inner join Dept d on d.deptid=e.empdept

select e.name as'Employe Name',e. email as 'E-mail ID',d.deptname as 'Department Name' from employeeee e 
inner join dept d on d.deptid=e.empdept


-----left join-------> 
-- display all records from the left table & match records from another table
-- when there is no match record right table returns null


select e.*, d.deptname from employeeee e
left join dept d on d.deptid=e.empdept


-----right join------->
select e.*, d.deptname from employeeee e
right join dept d on d.deptid=e.empdept


----full join-------->
select e.*, d.deptname from employeeee e
full join dept d on d.deptid=e.empdept



select *from employeeee

alter table employeeee add managerid int

update employeeee set managerid =101 where empid in(102,103,104,105)
update employeeee set managerid =106 where empid in (107,108,109,110)
update employeeee set managerid =111 where empid in (112,113,114,115)

------self join----->

select emp.name as 'Employee', man.name as 'Manager'
from employeeee emp,employeeee man
where man.empid=emp.managerid



----Cross Join---->
--used to generate paired combination of each row of the first table with each row of second table
--This type of join is also called as cartesian product


create table Brekfast(
breakname varchar(20),
breakprice int,

)

create table Drinks(
drinkname varchar(20),
drinkprice int
)

select *from Brekfast
select* from Drinks

insert into Brekfast values('Poha',20)
insert into Brekfast values('Upama',40)
insert into Brekfast values('Idali',60)

insert into Drinks values('Tea',7)
insert into Drinks values('Coffee',15)
insert into Drinks values('Lemaon Tea',20)



Select * from Brekfast cross join Drinks



----we also do with 3 table 

  create table Product(
  
  prodid int,
  prodname varchar(20)
  )

  create table Size(

  prodsize varchar(5)
  )

  create table Color(
  prodcolor varchar(10)
  )

  select* from Product
  select* from Size
  select* from Color

  insert into Product values (1,'Shirt')
  insert into Product values (2,'T-Shirt')
  insert into Product values (3,'Hoodei')

  insert into Size values ('L')
  insert into Size values ('M')
  insert into Size values ('XL')
  insert into Size values ('XXL')
  insert into Size values ('XXXL')



  insert into Color values ('Black')
  insert into Color values ('Blue')
  insert into Color values ('Green')
  insert into Color values ('Red')
  insert into Color values ('Orange')
  insert into Color values ('Voilet')

  select *from Product cross join Size cross join Color