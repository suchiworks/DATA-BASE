USE suchidb;     #DDL(CREATE,ALTER,DROP,TRUNCATE)
create table Student (id int primary  key,   #create table table_name
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
sadd varchar(50),
squalification varchar(10) not null,
sdept varchar(20));
insert into Student_suchidb values  #insert the value
(1,'RANJOY','7658762855','ran@gmail.com','chennai','MCA','IT'),
(2,'AVI','7643978798','avi@gmail.com','mumbai','BE','IT'),
(3,'BJ','8946573829','bj@gmail.com','delhi','BTECH','IT'),
(4,'RAM','6745893738','ram@gmail.com','mumbai','BE','ELECT'),
(5,'AKASH','7723849049','akash@gmail.com','goa','BSC','IT'),
(6,'ARNAB','9878456373','arnab@gmail.com','jammu','MCA','IT');

#add new column
alter table Student ADD age int after sname;
#modify size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraints
alter table Student MODIFY sphone int not null;

#drop
#drop column
alter table Student DROP COLUMN sdept;
#change column name
alter table Student CHANGE COLUMN AGE sage int;
#rename table name
alter table Student RENAME TO student_details;

#insert single row
insert into student_details values
(10,'pallani','27','5454465542','pallabi@gmail.com','kolkata','msc');

#truncate
truncate student_details; #delete rows
drop table students_details; # delete whole table

#DML--- INSERT,UPDATE,DELETE
#UPDATE
update student_detalis set sage = 20 where Id = 1; 
update student_detalis set sage = 21 where Id = 2;
update student_detalis set sage = 23 where Id = 3;
update student_detalis set sage = 24 where Id = 4;
update student_detalis set sage = 25 where Id = 5;
update student_detalis set sage = 26 where Id = 6;

alter table student_detalis add fees double after squalification;

update student_detalis set fees = '10500' where Id = 1;
update student_detalis set fees = '10700' where Id = 2;
update student_detalis set fees = '12500' where Id = 3;
update student_detalis set fees = '13900' where Id = 4;
update student_detalis set fees = '14000' where Id = 5;
update student_detalis set fees = '15000' where Id = 6;









