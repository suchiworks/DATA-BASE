USE suchidb;

create table Employee(
id int primary key,
Ename varchar(20)  not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50),
Edept varchar(10) not null,
Esalary double);

insert into Employee values
(1,'mamata','6767335667','mumbai','It','10000.500');

#insert multiple rows
insert into Employee values
(1,'suchi','789464083','odisha','It','13000.500'),
(1,'elina','6486878389','mumbai','It','20000.500'),
(1,'nisha','7853784999','pune','It','15000.500'),
(1,'shifa','9847632729','kolkata','It','35000.500'),
(1,'bishnupriya','6744335667','goa','It','10000.500');

#select
select * from Employee where Edept= 'it';

#and(both the condition should true)
select * from Employee where Eaddr = 'kolkata' and Esalary = '1000.500';

#or 
select * from Employee where Eaddr = 'mumbai' and Esalary = '20000.500';

#not
 select * from Employee where Edept !='it';
 
 #in
 select * from Employee where Eaddr in ('mumbai','goa');
 
 #starts with 
 select * from Employee where Ename like 'e%';
 
 #ends with
 select * from Employee where Ename like '%a';
 
 #in between
 select * from Employee where Ename like '%f%';
 
 #starts & ends with
 select * from Employee where Ename like 'N%a';
 
 #missing letter
 select * from Employee where Eaddr like 'pu_e';
 select * from Employee where Eaddr like 'Od_sha';
 
 select id,Ename,Ephone,Eaddr from employee;
 select * from Employee where Id=5;
 select * from Employee where Ename ='Nisha';
 #distinct
 select distinct Id from Employee;
 
 #add
 alter table Employee add Comm_pct int after Esalary;
 update Employee set Comm_pct = 20 where id =1;
 update Employee set Comm_pct = 21 where id =2;
 update Employee set Comm_pct = 22 where id =3;
 update Employee set Comm_pct = 23 where id =4;
 update Employee set Comm_pct = 24 where id =5;
 
 #as
 select Ename,Esalary,Esalary+300 as 'Increaser_salary' from Employee;
 
 
 select Comm_pct from Employee;
 #greater than
 select id,Esalary from employee where Esalary >15000;
 
#between
select id, Esalary from employee where Esalary between 20000 and 3000;
select * from employee where Esalary= 10000.5 or  esalary =20000.5 or Esalary=35000.50;
select * from employee where ID= 1 or Id =5 or Id=3;

# not equal
select * from employee where Esalary=15000.8;
select * from employee where Ename='shifa';
update employee set id=9 where Esalary>20000.5;
select * from employee where id=5 and Esalary <15000;
select Ename,id from emlployee where Esalary>15000 and Eaddr='kolkata';
 
 
 
 
 
 
 
 
 
 