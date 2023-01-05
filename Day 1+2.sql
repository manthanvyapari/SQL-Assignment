

create table department(
deptid int primary key,
deptname varchar(10)
)


create table employeeee(
empid int not null,
name varchar not null,
age int check (age>18),
email int,
empdept int,
salary numeric(2,2),
country  varchar(20) default 'India',


constraint pk_employeee primary key (empid),

constraint fk_employeee foreign key (empdept) references department(deptid) 
)
alter table employeeee alter column email varchar(40)
alter table employeeee drop constraint unique_employeee
alter table employeeee alter column name varchar(20)
alter table employeeee alter column salary decimal

select * from employeeee
select *from dept 


insert into dept  values(1,'HR')
insert into dept  values(2,'Salse')
insert into dept  values(3,'Marketing')
insert into dept  values(4,'Hiring')
insert into dept  values(5,'PD')

drop table department
drop table Employei
  
insert into employeeee(empid,name,age,email,empdept,salary) values(101,'vaibhav',23,'vaibhav123@gmail.com',1,23000)
insert into employeeee(empid,name,age,email,empdept,salary) values(102,'akshay',28,'akshay122gmail.com',1,23000)
insert into employeeee(empid,name,age,email,empdept,salary)values(103,'manthan',24,'manthan29@gmail.com',1,24000)
insert into employeeee(empid,name,age,email,empdept,salary) values(104,'rahul',23,'rahul25@gmail.com',2,25000)
insert into employeeee(empid,name,age,email,empdept,salary) values(105,'kiran',21,'kiran54@gmail.com',2,26000)
insert into employeeee(empid,name,age,email,empdept,salary) values(106,'saurabh',26,'saurabh54@gmail.com',2,27000)
insert into employeeee(empid,name,age,email,empdept,salary) values(107,'navin',20,'navin98@gmail.com',2,28000)
insert into employeeee(empid,name,age,email,empdept,salary) values(108,'pravin',23,'pravin85@gmail.com',3,29000)
insert into employeeee(empid,name,age,email,empdept,salary) values(109,'sidhaa',29,'sidhh45@gmail.com',1,30000)
insert into employeeee(empid,name,age,email,empdept,salary) values(110,'baubali',27,'babubali157@gmail.com',5,31000)
insert into employeeee(empid,name,age,email,empdept,salary) values(111,'naresh',20,'narsh43@gmail.com',4,32000)
insert into employeeee(empid,name,age,email,empdept,salary) values(112,'sikander',23,'sikander@gmail.com',2,33000)
insert into employeeee(empid,name,age,email,empdept,salary) values(113,'abhishek',21,'abhi23@gmail.com',1,34000)
insert into employeeee(empid,name,age,email,empdept,salary) values(114,'vinay',21,'vinay321@gmail.com',4,350000)
insert into employeeee(empid,name,age,email,empdept,salary) values(115,'revati',23,'revti987@gmail.com',5,360000)
 insert into employeeee(empid,name,age,email,empdept,salary)values(116,'abababab',20,'aaa@gmail.com',3,654000)




 update employeeee set salary=29000 where empid=101

 delete from employeeee where empid=116


 select * from employeeee where empid=101
 select * from employeeee where salary<30000 
 select * from employeeee where salary >=35000

 select *from employeeee where age>25 
 select*from employeeee where salary between 23000 and 29000










,














































--alter to modify the datatype or its size

--alter table employe alter column name varchar(40)

--rename the column in sql server
--sp_rename 'employeee.name' , 'empname'


-- drop the column in the table
--alter table employe drop column empname

--add new column in the table

--alter table employe add empname varchar(20)

sp_help employeeee

sp_help department

