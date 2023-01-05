select*from employeeee

-- like used to match the string with specific pattern

select*from employeeee where name like 'a%'--name start with a and contain any
select*from employeeee where name like '%a' --name end with a
select*from employeeee where name like '%a%' --name which contain a alphabet


select*from employeeee where name like '%r%'
select*from employeeee where name like '%r'

select*from employeeee where name like '[asr]%'---name contain alphabet asr
select *from employeeee where name like '[a-k]%'---name in between this range
select * from employeeee where name like 'r_____'
select*from employeeee where name like '______v'


--not like 
select*from employeeee where name not like 'a%'----name which are not start with a
select*from employeeee where name not like '%r' 
select*from employeeee where name not like '%a%' 

select *from employeeee where name not like '[asm]%'
select *from employeeee where name not like '%[asm]'


-- and,or,not OPARETOR

select *from employeeee where empdept=2 and country='india'
select *from employeeee where age=23 and empdept=3
select *from employeeee where age=23 or empdept=2
select * from employeeee where not salary=23000