--Book table	– Book id , book name , author id , price , published date

create table Book(
Book_id int primary key not null,
Book_name varchar(50),
Author_id int,
Price decimal,
Published varchar(20)

)
alter table Book add constraint fk_book foreign key (Author_id) references Author(Author_id)

insert into Book values(110,'Diary of Ann Frank',3,850,'2012-25-04')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(102,'The CommanWelth of Cricket',2,600,'2000-03-10')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(103,'The India Story',3,700,'2005-05-20')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(104,'News Paper',2,650,'2011-10-04')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(105,'Person Choice',3,850,'2017-01-25')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(106,'Wild Ad Roare',1,400,'2007-07-14')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(107,'Things To Do',2,200,'2020-08-29')
insert into Book(Book_id,Book_name,Author_id,Price,Published) values(108,'call center',4,200,'2003-08-29')


update book set Published='2020-02-25' where Book_id=109
--Author table 	– author id , author name , ph no , email , address, city 
create table Author(
Author_id int primary key not null,
Author_name varchar(20),
Phone_No int,
Email varchar(40),
Address varchar(50),
city varchar(20)
)
alter table Author alter column Phone_no varchar(10)
alter table Author alter column  Author_name varchar(50)
insert into Author(Author_id,Author_name,Phone_No,Email,Address,city) values(1,'A.P.J.Abdul Kalam','7845921587','kalam@gmail.com','near xyz post abc','Tamilnadu')
insert into Author(Author_id,Author_name,Phone_No,Email,Address,city) values(2,'Ramchandra Guha','8963257451','ramchandra@gmail.com','near abc post poq','Dehradun')
insert into Author(Author_id,Author_name,Phone_No,Email,Address,city) values(3,'Bimal jalal','9875632158','bimaj@gmail.com','near klm post mno','Tamilnadu')
insert into Author(Author_id,Author_name,Phone_No,Email,Address,city) values(4,'Chetan Bhagt','8745632158','chetan@gmail.com','near hdr post mnd','Mumbai')

create Table Award(
Award_id int primary key not null,
Award_type_id int,
Author_id int,
Book_id int,
 Award_year varchar(20)
)
alter table Award add constraint fk_Award foreign key (Award_type_id) references MAwards(Award_type_id)
alter table Award add constraint fk_Authorid foreign key (Author_id) references Author(Author_id)
alter table Award add constraint fk_Bookid foreign key (Book_id) references Book(Book_id)




insert into Award values(301,201,2,102,'2010')
insert into Award values(302,202,1,101,'2012')
insert into Award values(303,203,3,103,'2014')
insert into Award values(304,204,4,104,'2016')
insert into Award values(305,205,3,105,'2020')


--Awards master table – award type id , award name , award price

create table MAwards(
Award_type_id int primary key  not null,
Award_name varchar (20) ,
Award_price int
)


insert into MAwards values(201,'Padamshri',100000)
insert into MAwards values(202,'National Book',100000)
insert into MAwards values(203,'Arjun',200000)
insert into MAwards values(204,'Best Book',100000)
insert into MAwards values(205,'Best seller',500000)






alter table MAwards add constraint pk_Awardtypeid primary key(Award_type_id)
select *from Book
select*from Author
select *from Award
select*from MAwards


 truncate table Author
--1.	Write a query to show book name , author name and award name for all books which has received any award. 

   select b.Book_name,au.Author_name,ma.Award_name from Book b
   inner join Author au on au.Author_id=b.Author_id
   inner join Award aw on aw.Author_id=au.Author_id
   inner join MAwards ma on ma.Award_type_id=aw.Award_type_id

--2.	Write a query to update author name of authors whose book price is > 100. Prefix author name with ‘Honourable’ 
      
	  update Author set Author_name=concat('Honourable',' ',Author_name) where Author_id in
	  (
	  select Author_id from Book where Price>100
       
	   )
--3.	Write a query to display authors and number of books written by that author. Show author who has written maximum books at the top.

        select Author_name,count(Book_id)as 'Book' from Author a
		inner join Book b on a.Author_id=b.Author_id
		group by Author_name
		order by count(Book_id) desc

--4.	Write a query to select book name with 5 th highest price.

       select *from Book
	   order by price desc
	   offset 4 rows
	   fetch next  1 row only

--5.	Select list of books which have same price as book ‘Diary of Ann Frank’.

        -- select *from Book where Book_name='Diary of Ann Frank'

		 select Book_id, Book_name,Price from Book where Price=(
		 select max(Price) 
		 from book
		 )



--6.	Increase price of all books written by Mr. Chetan Bhagat by 5%.

        update Book set Price=Price+(Price * 0.05) where Author_id=(
		select Author_id from Author where Author_name='Chetan Bhagt'        --doubt
		)
--7.	Show award names and number of books which got these awards. 

         select ma.Award_name,count(b.Book_id)as 'Book count' from MAwards ma 
		 inner join Award aw on ma.Award_type_id=aw.Award_type_id
		 inner join  Book b on b.Author_id=aw.Author_id
		 group by Award_name
		 order by count(b.Book_id) desc


--8.	Delete all books written by ‘Chetan Bhagat’ 
        delete from book where Author_id=(
         select Author_id from Author where Author_name='Chetan Bhagt'
		 )

--9.	Create view to show name of book and year when it has received award. 
        create view BookInfo
		as 
        select  b.Book_name, aw.Award_year,ma.Award_name from MAwards ma 
		inner join Award aw on ma.Award_type_id=aw.Award_type_id
		inner join Book b on b.Book_id=aw.Book_id 


		select *from BookInfo
		

--10.	Create trigger to ensure min price of any book must be Rs. 100. 




--11.	Increase price of book by 10% if that book has received any award.
    

          
        update Book set Price=Price+(Price*0.10) where Book_id in (
		 
		select Book_id from Award
		)

--12.	Show names of author and number of books written by that Author.

      select a.Author_name,count(b.Book_id)as 'Books' from Author a
	  inner join Book b on a.Author_id=b.Author_id
	  group by Author_name
	  order by count(b.Book_id) desc


--13.	Show names of authors whose books are published before year 2020.

        
		  select a.Author_name,Published from Author a 
		  inner join Book b on a.Author_id=b.Author_id
		  
		  where b.Published<='2020'


--14.	Show name of books which has published within 1 year after 15 August 2020.////15aug  2010

      select*from Book where Published >('2010-8-16')

	 -- select*from Book where Published between '2010-8-16' and '2015-8-16'
--15.	Delete all authors whose no book is published in year 2020.
     
	 delete from Author where Author_id in(
	      select Author_id from Book where year (cast(Published as date))
		  not in (YEAR(cast('2020' as date)))
          )

		  alter table book alter column Published date