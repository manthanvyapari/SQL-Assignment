create table Customer(
 customerID int,
  customername varchar(40),
  City varchar(20),
  Country varchar(20),
  Postalcode int,
  Productname varchar(20),
  ProductPrice int
 ) 

 select*from Customer

 insert into Customer values(1,'Manthan','Wardha','India',442001,'Mobile',15000)
 insert into Customer values(2,'Aniket','Amravati','India',442601,'Mobile',16000)
 insert into Customer values(3,'Sahil','Nagpur','India',442658,'Mobile',17000)
 insert into Customer values(4,'jhon','Norvay','Europe',124676,'Iphone',150000)
 insert into Customer values(5,'Max','Berlin','Germani',121110,'Iphone',155000)
 insert into Customer values(6,'Alex','Framce','Europe',121111,'Iphone',115000)
 insert into Customer values(7,'Daisy','London','England',2454545,'Iphone',255000)
 insert into Customer values(8,'Aslam','Lahor','Pakistan',365484,'Laptop',65000)
 insert into Customer values(9,'Salman','Karachi','Pakistan',365478,'Bike',250000)
 insert into Customer values(23,'Jackii','Kerala','India',44265,'Perfumes',50000)
  insert into Customer values(24,'Abji','Kerala','India',44265,'Perfumes',10)

  insert into Customer values(24,'Ajay','SRi','Sri Lanka',547828,'Watch',20)
  insert into Customer values(24,'Rakesh','Wardha','India',665478,'Watch',30)

 --1.	Write a statement that will select the City column from the Customers table

 select city from Customer


--2.	Select all the different values from the Country column in the Customers table.
     
	  select distinct country from Customer

--3.	Select all records where the City column has the value "London".
      
	  select *from customer where city='London'

--4.	Use the NOT keyword to select all records where City is NOT "Berlin".

          select *from customer where city not in ('berlin')

--5.	Select all records where the CustomerID column has the value 23.

         select *from customer where customerID=23

--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.

           select *from customer where city='Berlin' and Postalcode=121110


--7.	Select all records where the City column has the value 'Berlin' or 'London'.

          select*from Customer where city='Berlin' or city='London'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.

          select *from Customer order by city
         

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.

             select *from Customer order by city desc  


--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

                      select *from Customer order by Country ,City


--11.	Select all records from the Customers where the PostalCode column is empty.

                  select *from Customer where Postalcode is null


--12.	Select all records from the Customers where the PostalCode column is NOT empty.

              select*from Customer where Postalcode is not null


--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".


             


--14.	Delete all the records from the Customers table where the Country value is 'Norway'.



--15.	Use the MIN function to select the record with the smallest value of the Price column.

    select min(ProductPrice) from Customer

--16.	Use an SQL function to select the record with the highest value of the Price column.

select max(Productprice) from Customer

--17.	Use the correct function to return the number of records that have the Price value set to 20
     
	 select*from Customer where ProductPrice=20

--18.	Use an SQL function to calculate the average price of all products.

      select avg (ProductPrice)as 'Avarage of Price' from Customer
--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table

    select sum (ProductPrice)as'Sum of price' from Customer

--20.	Select all records where the value of the City column starts with the letter "a".

            select*from Customer where City  like 'a%' 

--21.	Select all records where the value of the City column ends with the letter "a".

       select*from Customer where City  like '%a'
--22.	Select all records where the value of the City column contains the letter "a".

         select*from Customer where City  like '%a%'
--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
            select*from Customer where City  like 'a%' and city like '%b'


--24.	Select all records where the value of the City column does NOT start with the letter "a".
     
	  select*from Customer where City not like '%a'

--25.	Select all records where the second letter of the City is an "a".

       select*from Customer where City  like '_%a'
 
--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".

 select*from Customer where City  like '[acs]%'

--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".

       select*from Customer where City  like '[a-f]%'

--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

select*from Customer where City not  like '[acf]%'

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".

select*from Customer where City in ('Norvay') or  City in ('Framce')


--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

select*from Customer where City  not in ('Norvay')or  City not in ('France')

--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20

select * from Customer where ProductPrice between 10 and 20

---32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

select * from Customer where ProductPrice  not between 10 and 20

--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.


--34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

select Postalcode as'Pno' from Customer
--35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.

select *from Customer as Consumer

--36.	List the number of customers in each country.

select customername ,city from Customer

--37.	List the number of customers in each country, ordered by the country with the most customers first.

      

--38.	Write the correct SQL statement to create a new database called testDB.
--39.	Write the correct SQL statement to delete a database named testDB
--40.	Add a column of type DATE called Birthday in Persons table
--41.	Delete the column Birthday from the Persons table

