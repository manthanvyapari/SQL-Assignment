--is null
--is not null

select * from employeeee

update employeeee set country=null where empid=101
 select *from employeeee

 select *from employeeee where country is not null

 select * from employeeee where country is null


 --order by (sort the record by assending order orrr desending order)

 select*from employeeee order by name
 select *from employeeee order by name desc
  select *from employeeee order by age,name



  --offset---->to skip any perticular record use offset
  --fetch---->it is use to select the particular record to offseet


  select*from employeeee order by name offset 3 rows------ frist skip 3 row
  select *from employeeee order by name offset 3 rows fetch next 3 rows only --disply 3 rows after skip


  select *from employeeee 
  ----display emp whose has 2nd, 3rd & 4th hightest salary

  select * from employeeee 
order by salary desc
offset 1 rows
fetch next 3 rows only


