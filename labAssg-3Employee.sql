USE suchidb;
create table Employeepost (id int primary key,
Eid int(6),
ELname varchar(25),
EJobid varchar(10),
Esalary double (8,2),
Ecomm_pct double(4,2),
Emgr_id int(6),
Edept_id int(4));

insert into Employee values(198,'Connell','SH_CLERK','2600','2.5','124','50');
insert into Employee values(199,'Grant','SH_CLERK','2600','2.2','124','50');
insert into Employee values(200,'Whalen','AD_ASST','4400','1.3','101','10');
insert into Employee values(201,'Hartstein','IT_PROG','6000',null,'100','20');
insert into Employee values(202,'Fay','AC_MGR','6500',null,'210','20');
insert into Employee values(203,'Marvis','AD_VP','7500',null,'101','40');
insert into Employee values(204,'Baer','AD_PRES','3500','1.5','101','90');
insert into Employee values(205,'Higgiens','AD_MGR','2300',null,'101','60');
insert into Employee values(206,'Gitz','IT_PROG','5000',null,'103','60');
insert into Employee values(100,'King','AD_ASST','8956','0.3','108','100');
insert into Employee values(101,'Kochar','SH_CLERK','3400','1.3','118','30');

#3 Display last_name, job_id, employee_id for each employee with employee_id appearing first
select * from Employeepost where Elname ='King';
select * from Employeepost where EJob_id ='AD_VP';
select * from Employeepost where Eid =200;

#4 Display the details of all employees of department 60
select * from Employeepost where Eid =60;

#5 Display the employee details of the employee who’s last_name is King.
select ELname from Employeepost ELname;
 
#6 Display unique job_id from EMPLOYEE table. Give alias name to the column as JOB_TITLE


#7 Display last_name, salary and salary increase of Rs300. Give the new column name as ‘Increased Salary’
 select Ename,Esalary,Esalary+300 as 'Increaser_salary' from Employeepost;


#8 Display last_name, salary and annual compensation of all employees, plus a
    #onetime bonus of Rs 100. Give an alias name to the column displaying annual compensation
select ELname,ESalary,ESalary + Comm_Pct + 100 as 'Annual_Compensation' from Employeepost;


#9 Display the details of those employees who get commission

#10 Display the details of those employees who do not get commission.


#11 Display the Employee_id, Department_id and Salary all employees whose salary is
     #greater than 5000
      select id,Edept,Esalary from employeepost where Esalary >5000;

#12 Display the Last_Name and Salary of all employees whose salary is between 4000
    #and 7000.
    select * from employee where Esalary= 10000.5 or  esalary =20000.5 or Esalary=35000.50;

    
#13 Display the details of all employees whose salary is either 6000 or 6500 or 7000.
select * from employeepost where Esalary= 6000 or  esalary =6500 or Esalary=7000;


#14 Display the details of all those employees who work either in department 10 or 20
    #or 30 or 50.
     select * from employeepost where ID= 10 or Id =30 or Id=50;


#15 Display the details of all employees whose salary is not equal to 5000
select * from employee where Esalary=5000;


#16 Display the details of all the CLERKS working in the organization.

#17 Update the job_id’s of the employees who earn more than 5000 to Grade_A.
     #Display the table EMPLOYEE after updating.
     
#18 Display the details of all those employees who are either CLERK or
      #PROGRAMMER or ASSISTANT.
      
#19 Display those employees from the EMPLOYEE table whose designation is
      #CLERK and salary is less than 3000
select Elname,Esalary from employeepost where Esalary <3000;

      
#20  Display those employees Last_Name, Mgr_id from the EMPLOYEE table whose
       #salary is above 3000 and work under Manager 101.
       
       
       