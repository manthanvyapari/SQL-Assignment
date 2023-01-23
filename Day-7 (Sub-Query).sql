

-- Sub Query---



select *from employeeee
select *from Dept


--emp who get less than avg salary of sales dept

select * from employeeee where salary <(


select avg(salary) from  employeeee where empdept=(
select deptid from Dept where deptname='salse'
)
)





--select the emp whoes country is same as empid 3

select * from employeeee where country=
(

select country from employeeee where empid=103
)

--diaply emp who get the more salary than empid is 11
select *from employeeee where salary >
(
select salary from employeeee where empid=111
)

--display avg salary from all dept
select*from employeeee where salary < all
(
select avg(salary) from employeeee
group by empdept
)





create table Product1
(
id int,
name varchar(20),
price int

)

create table Order1
(
id int,
product varchar(20),
sp int
)


select *from Product1
select *from Order1

insert into Product1(id,name,price) values(1,'mouse',1000)
insert into Product1(id,name,price) values(2,'keybord',1300)
insert into Product1(id,name,price) values(3,'desktop',1400)
insert into Product1(id,name,price) values(4,'wire',1500)
insert into Product1(id,name,price) values(5,'speaker',1600)


insert into Order1(id,product,sp) values(6,'Mobile',1000)
insert into Order1(id,product,sp) values(7,'shirt',1300)
insert into Order1(id,product,sp) values(8,'lights',1400)
insert into Order1(id,product,sp) values(9,'battary',1500)
insert into Order1(id,product,sp) values(10,'snack',1600)



---Inser with Subquery
-- inser the product whoes price is>1000
insert  into order1 select id,name,price from Product1 where id in
(
select id from product where price>1000
)