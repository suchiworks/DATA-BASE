USE suchidb;
create table customerM(
Cid int primary key,
CFname varchar(20),
Clname varchar(20),
Carea char(2),
Cphone int(6));

insert into customer values
(A01,'Ivan','Ross','SA','6125457'),
(A02,'Vandana','Ray','MU','5560379'),
(A03,'Pramada','Jauguste','DA','4560389'),
(A04,'Basu','Navindi','BA','6125401'),
(A05,'Ravi','Srinagar','NA',null),
(A06,'Rukmani','Aiyer','GH','5125274');

create table Movie(
Mv_no int primary key,
Cust_id varchar(4),foreign key(Cust_id) references CustomerLab(Cust_id),
Title varchar(20)not null,
Star varchar(5)not null,
Price bigint );
select * from Customer_Lab;
insert into Movie values
(1,'A02',' Bloody',' JC', 181),
(2,'A04','The Firm','TC', 200),
(3,'A01','Preety Women','RG', 151),
(4,'A06','Home Alone','MC', 150),
(5,'A05','The Fugitive','MF', 200),
(6,'A03','Coma','MD', 100),
(7,'A02','Drakula','GO', 150),
(8,'A06','Quick Change','BM', 100),
(9,'A03','Gone with the Wind','CB', 200),
(10,'A05','Carry on Doctor','LP', 100);


#2. Prove that entity integrity constraint is ensured by both the tables. (2 conditions to
      #be checked).
      
      
#3. Prove that referential integrity constraint is ensured by both the tables.


#4. Prove that domain integrity constraint is ensured by the Movie table.


#5. Display the movie titles, whose price is greater than 100 but less than 200.
select Title from Movie where price between 100 and 200;

#6. Display the cust_id who have seen movies having stars as either JC or TC or MC.
select * from cust_id where star=JC or star=TC or star=MC;


#7. Display the details of those customers who have an A in their area name.
 select * from customerM where Carea like '_A%';


#8. Display the movie titles, whose price is within 180 and the movie titles are of exactly 6 characters.
select Title from Movie where Price=180 and Length(title)=6;

#9. Display the movie name, their original prices and the prices after 10% increment.
      #Give alias name to the incremented price column.
select Title,price, price+(price*1/10) as incremented_price_column  from Movie;
      
#10.Display all the customer details in the following way:
     #‘Ivan Ross stays in SA and his phone number is 6125467.
     
     
#11.Add a not null constraint to the Lname field in Customer.
alter table customerM,modify CLname varchar(20) not null;

#12.Display the customer’s name whose phone number is not recorded.
select EFname,ELname from customerM where phone is null;

#13.Add the phone number according to your own wish for the person mentioned in
     #problem no 12.
update costomerM set phone=76458;

#14.Display the unique customer ids from movie table.


#15.Remove the not null constraint from Star column in movie table.
alter table Movie modify star varchar(20) null;

#16.Delete any row from the Customer table. If you cannot delete, then note the error
     #message displayed.



#17.Delete any row from the Movie table. If you cannot delete, then note the error
     #message displayed.
delete from Movie where no=3;


#18.Drop the Customer table. If you cannot drop, then note the error message
     #displayed.
drop table customer;

#19.Drop the Movie table. If you cannot drop, then note the error message displayed.
alter table Movie;

#20.Drop the foreign key from Movie table.





