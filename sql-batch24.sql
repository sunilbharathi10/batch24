create database batch24;
show databases;

use batch24;

show tables;

create table  students(rollno int,name varchar(40),department varchar(20),age int,totalmark int);

drop table students;

describe students;

insert into students values(1,"ashikali","CA",22,500.8);




insert into students values(2,"arun","chargermissing case",24,600.8),(3,"abinaya","cse",21,567),(4,"madhavan","python",23,456);



select * from students;






--  Data Definition Language----
-- create
-- alter
-- rename
-- modify
-- truncate
-- drop 

-- syntax---
create database database_name;

drop database  database_name ;


 

create database vijay;
create database batch11;

use vijay;

-- syntax--->>>
-- create table table_name(column_name1 datatype,
-- column_name2 datatype,column_name3 datatype.....);

create table logesh(uid int, name varchar(30),
dateof_birth date,salary decimal(8,2),department char(10) );

show tables;

describe logesh;

select * from logesh;
select name,salary from logesh;
insert into logesh(uid,name,dateof_birth,salary,department)
values(1,"nadhakumar","2025-10-17",35000.10,"python");


-- Alter---->> 
desc students;
select * from students;

ALTER table students add column email varchar(40);

-- Rename---->>>> is used to only change the column name

Alter table students rename column email to gmail;


select * from students;

-- Modify---->>> is used to only change the data type..alter

desc students;


Alter table students modify column gmail char(30);

-- change----->>> is used to rename column and modify datatype in one go

Alter table students change column gmail  student_gmail varchar(40);

-- rename table---->>>

Alter table students rename uniq_students;


select * from uniq_students;

-- Alter database batch20 rename qwertyu; rename the database is not possible..
desc uniq_students;

-- use onlinebatch;
create table sunil(uid int, name varchar(30),
dateof_birth date,salary decimal(8,2),department char(10) );

show tables;

insert into sunil(uid,name,dateof_birth,salary,department)
values(1,"nadhakumar","2025-10-17",35000.10,"python"),
(2,"sunil","2026-10-07",23400.00,"ece");

select * from sunil;

show tables;

-- drop--->>> is used to permanentaly drop the table and database and column

drop table sunil;

show databases;
drop database batch11;

-- drop schema batch10;
truncate table sunil;


-- DML--->>>Data Manipulation Language..
-- insert
-- update
-- delete

use batch24;

show tables;

select * from uniq_students;


desc uniq_students;

insert into uniq_students(rollno,name,department,age,totalmark,student_gmail) values(6,"dhoni","csk",43,100,"dhoni@gmail.com");

-- update----->>>>is used to update the record but only one record at a time..

set sql_safe_updates =0;
update uniq_students set department="india" where rollno=6;
set sql_safe_updates =1;
select * from uniq_students;

update uniq_students set name="ms dhoni" where name="dhoni";

update uniq_students set student_gmail="abinay@gmail.com" where  rollno=3;




-- Delete--->>>is used to delete a record..
set sql_safe_updates =0;

delete from uniq_students where rollno=6;
set sql_safe_updates =1;

delete from uniq_students where name="madhavan";
select * from uniq_students;


-- Truncate---->>> to remove all record in a table at one go but it remains the table structure..

select * from uniq_students;

insert into uniq_students values(5,"madhavan","cse",33,444,"gmail.com");

SELECT DISTINCT column_name
FROM table_name;

select distinct name from uniq_students;

-- select is used to retrieve the data from tables; 

select * from uniq_students;

select name,age from uniq_students;

select age from uniq_students;

 
-- day2 
use batch24;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(30),
    job_title VARCHAR(40),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(30)
);


INSERT INTO employees VALUES
(1,'Arun','Kumar','HR','Manager',55000,'2019-04-12','Chennai'),
(2,'Priya','Devi','Finance','Analyst',48000,'2021-01-18','Bangalore'),
(3,'Karthik','Raja','IT','Developer',62000,'2020-07-25','Chennai'),
(4,'Sneha','Mohan','IT','Tester',40000,'2022-02-10','Hyderabad'),
(5,'Vijay','R','IT','Developer',63000,'2018-09-12','Chennai'),
(6,'Meena','B','Finance','Manager',70000,'2017-12-05','Bangalore'),
(7,'Anand','G','Marketing','Executive',38000,'2021-11-15','Coimbatore'),
(8,'Divya','Raj','HR','Executive',35000,'2023-05-21','Pune'),
(9,'Suresh','K','IT','Support Engineer',42000,'2020-03-19','Chennai'),
(10,'Lakshmi','S','Finance','Clerk',30000,'2022-09-01','Mumbai'),
(11,'Ravi','Shankar','IT','Developer',61000,'2019-06-11','Chennai'),
(12,'Swathi','Nair','IT','Tester',41000,'2021-03-29','Hyderabad'),
(13,'Gopal','Reddy','HR','Recruiter',39000,'2020-10-05','Bangalore'),
(14,'Kavya','Menon','Finance','Analyst',47000,'2018-01-16','Pune'),
(15,'Hari','Prasad','IT','Developer',64000,'2019-02-22','Chennai'),
(16,'Nisha','V','Marketing','Executive',36000,'2022-04-17','Coimbatore'),
(17,'Rajesh','T','IT','Developer',65000,'2021-08-25','Hyderabad'),
(18,'Monika','L','Finance','Manager',72000,'2016-07-19','Bangalore'),
(19,'Sathish','M','IT','Tester',42000,'2019-12-13','Chennai'),
(20,'Preethi','K','HR','Executive',34000,'2023-01-09','Pune'),
(21,'Aravind','R','Marketing','Executive',37000,'2020-06-28','Coimbatore'),
(22,'Kiran','S','Finance','Clerk',31000,'2021-09-10','Mumbai'),
(23,'Ramesh','V','IT','Support Engineer',43000,'2020-03-20','Chennai'),
(24,'Deepa','G','HR','Manager',56000,'2018-05-25','Bangalore'),
(25,'Anjali','P','Finance','Analyst',46000,'2019-10-30','Pune'),
(26,'Gowtham','K','IT','Developer',60000,'2021-02-01','Hyderabad'),
(27,'Shalini','R','IT','Tester',40000,'2022-06-11','Chennai'),
(28,'Naveen','K','IT','Developer',61000,'2020-04-23','Chennai'),
(29,'Manoj','P','Finance','Manager',71000,'2017-09-14','Bangalore'),
(30,'Keerthi','V','Marketing','Executive',35000,'2021-05-05','Coimbatore'),
(31,'Sanjay','T','HR','Recruiter',38000,'2022-03-19','Pune'),
(32,'Latha','R','IT','Developer',64000,'2019-12-01','Hyderabad'),
(33,'Ajay','Kumar','Finance','Clerk',32000,'2021-10-15','Mumbai'),
(34,'Varun','S','IT','Support Engineer',45000,'2020-09-11','Chennai'),
(35,'Gayathri','M','HR','Executive',36000,'2023-04-07','Pune'),
(36,'Sridhar','P','IT','Tester',43000,'2022-08-20','Hyderabad'),
(37,'Pooja','L','Marketing','Executive',37000,'2020-12-09','Coimbatore'),
(38,'Karthika','S','Finance','Analyst',48000,'2021-06-27','Pune'),
(39,'Siva','Kumar','IT','Developer',63000,'2018-07-15','Chennai'),
(40,'Reshma','R','Finance','Manager',70000,'2017-04-28','Bangalore'),
(41,'Mahesh','V','IT','Developer',62000,'2020-01-03','Hyderabad'),
(42,'Yamini','S','HR','Recruiter',39000,'2022-09-21','Pune'),
(43,'Guna','K','IT','Support Engineer',44000,'2021-10-09','Chennai'),
(44,'Sandhya','T','Finance','Clerk',30000,'2023-03-14','Mumbai'),
(45,'Balaji','R','Marketing','Executive',38000,'2019-08-05','Coimbatore'),
(46,'Kavitha','S','Finance','Analyst',49000,'2021-12-29','Pune'),
(47,'Saravanan','M','IT','Developer',65000,'2019-11-10','Chennai'),
(48,'Devi','P','HR','Executive',35000,'2023-06-01','Bangalore'),
(49,'Vikram','L','Finance','Manager',71000,'2018-10-18','Bangalore'),
(50,'Asha','N','IT','Tester',42000,'2021-05-26','Hyderabad');
select * from employees;

-- Wild Card---->>>

-- %---->>>it matches one or more characters
-- _---->>>> it matches single character

select *
from employees 
where first_name like "s%";

select first_name
from employees 
where first_name like "%i";

select *
from employees 
where first_name like "%ana%";

select * from employees;

select * from employees where job_title like "____ger";



select * from employees where first_name like "____";



select * from employees where department like "h%";
select * from employees where last_name like "_";

-- in---->>>
select * from employees;
select distinct * from employees ;

select * from employees where salary in(34000,56000,38000);

select * from employees where salary not in(34000,56000,38000);

describe employees;

use batch24;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(30),
    job_title VARCHAR(40),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(30)
);


INSERT INTO employees VALUES
(1,'Arun','Kumar','HR','Manager',55000,'2019-04-12','Chennai'),
(2,'Priya','Devi','Finance','Analyst',48000,'2021-01-18','Bangalore'),
(3,'Karthik','Raja','IT','Developer',62000,'2020-07-25','Chennai'),
(4,'Sneha','Mohan','IT','Tester',40000,'2022-02-10','Hyderabad'),
(5,'Vijay','R','IT','Developer',63000,'2018-09-12','Chennai'),
(6,'Meena','B','Finance','Manager',70000,'2017-12-05','Bangalore'),
(7,'Anand','G','Marketing','Executive',38000,'2021-11-15','Coimbatore'),
(8,'Divya','Raj','HR','Executive',35000,'2023-05-21','Pune'),
(9,'Suresh','K','IT','Support Engineer',42000,'2020-03-19','Chennai'),
(10,'Lakshmi','S','Finance','Clerk',30000,'2022-09-01','Mumbai'),
(11,'Ravi','Shankar','IT','Developer',61000,'2019-06-11','Chennai'),
(12,'Swathi','Nair','IT','Tester',41000,'2021-03-29','Hyderabad'),
(13,'Gopal','Reddy','HR','Recruiter',39000,'2020-10-05','Bangalore'),
(14,'Kavya','Menon','Finance','Analyst',47000,'2018-01-16','Pune'),
(15,'Hari','Prasad','IT','Developer',64000,'2019-02-22','Chennai'),
(16,'Nisha','V','Marketing','Executive',36000,'2022-04-17','Coimbatore'),
(17,'Rajesh','T','IT','Developer',65000,'2021-08-25','Hyderabad'),
(18,'Monika','L','Finance','Manager',72000,'2016-07-19','Bangalore'),
(19,'Sathish','M','IT','Tester',42000,'2019-12-13','Chennai'),
(20,'Preethi','K','HR','Executive',34000,'2023-01-09','Pune'),
(21,'Aravind','R','Marketing','Executive',37000,'2020-06-28','Coimbatore'),
(22,'Kiran','S','Finance','Clerk',31000,'2021-09-10','Mumbai'),
(23,'Ramesh','V','IT','Support Engineer',43000,'2020-03-20','Chennai'),
(24,'Deepa','G','HR','Manager',56000,'2018-05-25','Bangalore'),
(25,'Anjali','P','Finance','Analyst',46000,'2019-10-30','Pune'),
(26,'Gowtham','K','IT','Developer',60000,'2021-02-01','Hyderabad'),
(27,'Shalini','R','IT','Tester',40000,'2022-06-11','Chennai'),
(28,'Naveen','K','IT','Developer',61000,'2020-04-23','Chennai'),
(29,'Manoj','P','Finance','Manager',71000,'2017-09-14','Bangalore'),
(30,'Keerthi','V','Marketing','Executive',35000,'2021-05-05','Coimbatore'),
(31,'Sanjay','T','HR','Recruiter',38000,'2022-03-19','Pune'),
(32,'Latha','R','IT','Developer',64000,'2019-12-01','Hyderabad'),
(33,'Ajay','Kumar','Finance','Clerk',32000,'2021-10-15','Mumbai'),
(34,'Varun','S','IT','Support Engineer',45000,'2020-09-11','Chennai'),
(35,'Gayathri','M','HR','Executive',36000,'2023-04-07','Pune'),
(36,'Sridhar','P','IT','Tester',43000,'2022-08-20','Hyderabad'),
(37,'Pooja','L','Marketing','Executive',37000,'2020-12-09','Coimbatore'),
(38,'Karthika','S','Finance','Analyst',48000,'2021-06-27','Pune'),
(39,'Siva','Kumar','IT','Developer',63000,'2018-07-15','Chennai'),
(40,'Reshma','R','Finance','Manager',70000,'2017-04-28','Bangalore'),
(41,'Mahesh','V','IT','Developer',62000,'2020-01-03','Hyderabad'),
(42,'Yamini','S','HR','Recruiter',39000,'2022-09-21','Pune'),
(43,'Guna','K','IT','Support Engineer',44000,'2021-10-09','Chennai'),
(44,'Sandhya','T','Finance','Clerk',30000,'2023-03-14','Mumbai'),
(45,'Balaji','R','Marketing','Executive',38000,'2019-08-05','Coimbatore'),
(46,'Kavitha','S','Finance','Analyst',49000,'2021-12-29','Pune'),
(47,'Saravanan','M','IT','Developer',65000,'2019-11-10','Chennai'),
(48,'Devi','P','HR','Executive',35000,'2023-06-01','Bangalore'),
(49,'Vikram','L','Finance','Manager',71000,'2018-10-18','Bangalore'),
(50,'Asha','N','IT','Tester',42000,'2021-05-26','Hyderabad');
select * from employees;

-- 1.string methods 
select "saravanan" as name; 

select upper("saravanan") as Name;

select ucase(first_name) from employees;



select lower("ASDdfghJKL") as asd;
select lcase("ASDdfghJKL") as asd;


select department,lcase(job_title) from employees;



select length("vendamani") as len;
select length("💥") as emojii;
select length("✅") as emojii;
select length("12345") as emojii;
select length("🤦️") as emojii;


select char_length("vendamani") as len;
select char_length("💥😎😵😁❤️🤦‍♀️") as emojii;
select char_length("12345") as emojii;

select left("saro",2);

select left(first_name,4) from employees;

select right("vijaykumar",5) as emp;


select substr("saravanan",3,5) as qwer;
select substr("saravanan",2,7) as qwer;
select department,substr(job_title,3,5) from employees;


select ("      vinoth        ") as reduce;
select trim("      vinoth        ") as reduce;
select trim("@" from "######vinoth@@@@@@@") as reduce;


select replace("karthikeyan","kar","siva") as qw;
select replace("abinaya was a clever women","clever","Intellegence") as qw;
select replace("sunil is teaching a class","sunil","bharathi") as adf;
select * from employees;
select first_name, replace(last_name,"Kumar","vijay") as asdf from employees;
select last_name,replace(last_name,"r","sar") as kd from employees;









select instr("srtyuravanan","a") as zx;
select concat("sara","vanan") as name;

select first_name,last_name from employees;

select first_name,last_name, concat(first_name," ",last_name) as conc from employees;




-- 2.Numeric Function---->>>>

select abs(-12.35) as absolute;

select greatest(12,23,21,2,3,45,56,4) as arasmadab;
select least(1,2,3,4,5);
select round(35.346) as zc;

select sqrt(225) as squareroot;

select 50*33;

select floor(-1.4);

select ceil(4.2);

select pow(4,8);

select round(rand()*100) as random;






-- curdate()---->>>>
select curdate();

-- curtime()---->>>>
select curtime();
select curdate();

-- now()---->>> to retrive current datetime

select now();

-- date_formate(date,formatdate)---->>>>

select date_format(curdate(),"%d-%m-%Y") as dateformat;

-- datediff(date1,date2)------>>>>it return in difference in days

select datediff(curdate(),"2003-03-27") as how_many;
select datediff(curdate(),"2004-06-25") as how_many;
select datediff(curdate(),"1947-08-15") as how_many;
select datediff(curdate(),"2027-01-01") as how_many;
select datediff(now(),"2006-01-01 14:11:55") as how_many;


-- date_add(date,interval num (days,month,year))----->>>
select date_add(curdate(),interval 10 day) as adding;
select date_add(curdate(),interval 1000 day) as adding;
select date_add(curdate(),interval 3 month) as adding;






-- 4.Aggregate Function---->>>>>single value returns
-- count()
-- avg()
-- min()
-- max()
-- sum()

-- 4.1 count()----->>>>
use batch24;
select * from employees;
select count(*) as total_emp from employees;

select count(*) as female_count from employees where department="hr";
select count(*) as male_count from employees where job_title="analyst";

select count(*) as it_dept from employees where department="IT";

-- 4.2 avg()----->>>

select avg(salary) as avg_sal from employees;

select avg(salary) as avg_IT_sal from employees where department="it";

-- 4.3 sum()---->>>>

select sum(salary) as totalS_ from employees;

-- 4.4 max()----->>>

select max(salary) from employees;
-- 4.5-----min salary
select min(salary) as it from employees where department="it";
select max(salary) as it from employees where department="it";




-- day--3 
-- Data type---->>>

-- 1.Numeric Type--->>>
 -- int-->>>4 byte
 --    smallint
--     tinyint
--     bigint
--  float
--  decimal(how many digit,afer point how many)--->>>decimal(5,2)
--  double()
--  
-- 2.string Type--->>>
--    char --->>Fixed length variable--->>> char(10) if we store 6 character in it means remaining 4 will be stored as a space...

--    varchar---->>>variable length string--->>>varchar(10)  if we store 6 character in it means remaining will not affect..
--    text
--    


-- 3.date type--->>>
--    date--->>> "yy-mm-dd"
--    time--->>> "HH:MM:SS"
--    datetime--->> "yy-mm-dd HH:MM:SS"  (manual user insert datetime)
--    Timestamp--->>> "yy-mm-dd HH:MM:SS"  (automatic datetime update)
--    year






-- views--> views are virtual table it is constructed from the existing table.it's doesn't store data it's store query.
-- if any changes in views table it will affect the original table for only update,delete ,in views drop,
-- truncate doesn't affect the
--  original table..


show databases;
use batch24;
show tables;
select * from employees;

-- syntax view

-- create view  view_tablename as select column1,column2 from existingtablename;

create view employeess_viewss as select  first_name,salary from employees;
select * from employees;
select * from employeess_viewss;

set sql_safe_updates=0;
update employeess_viewss set salary=90 where first_name="arun";

set sql_safe_updates=1;
create view employeess_views2 as select  * from employees;

select * from  employeess_views2;

set sql_safe_updates=0;
-- delete from employeess_views2 where emp_id=49;
-- set sql_safe_updates=1;
-- drop view employeess_views2

set sql_safe_updates=0;
delete from employees where emp_id=48;
set sql_safe_updates=1;

truncate  table employeess_views2;
drop table employess_views2;








create database kumar;
use kumar;
show databases;
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
gender VARCHAR(10),
salary INT
);
INSERT INTO employees VALUES
(1,'Arun','Male',30000),
(2,'Bala','Male',35000),
(3,'Charan','Male',40000),
(4,'Divya','Female',42000),
(5,'Eswar','Male',38000),
(6,'Farah','Female',36000),
(7,'Gokul','Male',45000),
(8,'Hema','Female',39000),
(9,'Imran','Male',41000),
(10,'Jaya','Female',37000),
(11,'Karthik','Male',46000),
(12,'Latha','Female',43000);

select * from employees;

CREATE TABLE sakthi (
uid INT,
name VARCHAR(50),
jai_salary INT,
DOB DATE
);


INSERT INTO sakthi VALUES
(1,'Arun Kumar',32000,'1998-02-10'),
(2,'Bala Ji',36000,'1997-05-12'),
(3,'Charan Raj',41000,'1996-07-18'),
(4,'Divya Sri',43000,'1999-03-25'),
(5,'Eswar Rao',39000,'1995-11-09'),
(6,'Farah Khan',37000,'1998-08-14'),
(7,'Gokul Nath',46000,'1997-12-20'),
(13,'Manoj',34000,'1996-04-11'),
(14,'Nisha',35000,'1998-06-16'),
(15,'Omkar',38000,'1997-09-19'),
(16,'Pooja',42000,'1999-01-22'),
(17,'Ravi',40000,'1996-10-30');

select * from sakthi;

SELECT *
FROM employees as e
INNER JOIN sakthi as s
ON e.emp_id = s.uid;

SELECT *
FROM employees e
LEFT JOIN sakthi s
ON e.emp_id = s.uid;

select * from employees as e right join sakthi as s on e.emp_id=s.uid;




-- ️ MySQL **does not support FULL JOIN directly**, so we simulate it using **LEFT JOIN + RIGHT JOIN with UNION**.
-- union all takes all the join full query and also duplicates
-- union--it takes join full query but not duplicates;
 

-- **Definition:**
-- **FULL JOIN** returns **all rows from both tables**, whether there is a match or not.


SELECT e.emp_id, e.emp_name, s.uid, s.name
FROM employees e
LEFT JOIN sakthi s
ON e.emp_id = s.uid

UNION ALL

SELECT e.emp_id, e.emp_name, s.uid, s.name
FROM employees e
RIGHT JOIN sakthi s
ON e.emp_id = s.uid;


SELECT e.emp_id, e.emp_name, s.uid, s.name
FROM employees e
LEFT JOIN sakthi s
ON e.emp_id = s.uid

UNION 

SELECT e.emp_id, e.emp_name, s.uid, s.name
FROM employees e
RIGHT JOIN sakthi s
ON e.emp_id = s.uid;


-- cross join  or carteisan join
SELECT e.emp_id, e.emp_name, s.uid, s.name
FROM employees e
CROSS JOIN sakthi s;

-- * employees → **12 rows**
-- * sakthi → **12 rows**

-- Result → **12 × 12 = 144 rows**




-- | JOIN       | Meaning                    |
-- | ---------- | -------------------------- |
-- | INNER JOIN | Common rows                |
-- | LEFT JOIN  | All left + matching right  |
-- | RIGHT JOIN | All right + matching left  |
-- | FULL JOIN  | All rows from both tables  |
-- | CROSS JOIN | All combinations           |
-- | UNION      | Combine without duplicates |
-- | UNION ALL  | Combine with duplicates    |









-- constraints
use batch24;
create table sandy( id int,name varchar(40) not null);
select * from sandy;
insert into sandy values(1,"sunil"),(2,"naresh");
insert into sandy values(3,"vinnarasi"),(4,null);


create table ss(id int, name varchar(30),
email varchar(40) unique);
insert into ss values(1,"nandha","nandha@gmail.com"),
(2,"sakthi","sakthi@gmail.com");
select * from ss;
insert into ss values(3,"sunil","sakthi@gmail.com"),
(3,"sathish","sunil@gmail.com");
insert into ss values
(4,"sathish",null);





 -- primary key
create table jai( id int primary key,name varchar(40) ,
department varchar(40) );
select * from jai;
insert into jai values (1,"vishal","it"),(2,"abdul","cse");
insert into jai values (null,"sandy","it"),(5,"harshini","cse");
insert into jai values(1,"ss","ece"),(2,"mm","eee");



-- check;
create table ansari(id int primary key,name varchar(40),
age int check (age>=18));
insert into ansari values(1,"sunil",18),(2,"saro",47);
select * from ansari;
insert into ansari values(3,"partha",17),(4,"vinoth",52);



-- default
create table uniq(id int primary key,staff_name varchar(40) not null,
dept varchar(50) default "unassigned department");
insert into uniq values(1,"bharathi","ece"),(2,"goundamani","comedy");
select * from uniq;
insert into uniq(id,staff_name) values(3,"senthil");
desc uniq;


create table if not exists python(id int primary key auto_increment ,
names varchar(40) not null,
email varchar(40) unique)auto_increment=101;


select * from python;
insert into python (names,email) values("sunil","sunil12@gmail.com"),
("shalini","ss12@gmail.com"),("siva","siva2@gmail.com"),
("samantha","sam2004@gmail.com");
select * from python;
-- drop table python;
insert into python(names,email) values("saro","saro@gmail.com"),
("vettupuli","vettu@gmail.com"),("kaipulla","kaipulla@gmail.com");

insert into python values(33,"rukku","rukku@gmail.com");

desc python;-- table key description





-- foreign key

create table vendu(dept_id int primary key,
name varchar(40) not null,dept varchar(50));

create table samy1(id int primary key,
name varchar(40) not null,dept varchar(40),samy_id int,
foreign key (samy_id) references vendu(dept_id) on delete cascade);


desc samy1;

insert into vendu values(3,"sunil","ece"),(112,"saro","cse");
select * from vendu;

insert into samy1 values(3,"sunil","ece",3),(112,"saro","cse",112);

select * from samy1;
insert into samy1 values(1,"sowmiya","it",3),(2,"sandy","eee",112);
select * from samy1;

set sql_safe_updates=0;
delete from vendu where dept_id=3;

set sql_safe_updates=1;


drop table samy1;
drop  table vendu;


CREATE TABLE vendu (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);


insert  into vendu(dept_id,dept_name) values(1,"sales"),(2,"it");
select* from vendu;


CREATE TABLE samy2 (
    id INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    dept VARCHAR(40),
    samy_id INT NULL,
    FOREIGN KEY (samy_id) REFERENCES vendu(dept_id) ON DELETE SET NULL
);


INSERT INTO samy2 (id, name, dept, samy_id) VALUES
(101, 'Sunil', 'Sales', 1),
(102, 'Arun', 'HR', 2);


INSERT INTO samy2 (id, name, dept, samy_id) VALUES(104,"mask","it",null);

select * from samy2;

set sql_safe_update=0;
DELETE FROM vendu WHERE dept_id = 1;

set sql_safe_update=1;


select * from employees;











create table students;





























-- * `WHERE` → Used to filter rows based on a condition.

-- * `ORDER BY` → Used to sort records in ascending or descending order.

-- * `LIMIT` → Used to restrict the number of rows returned.

-- * `OFFSET` → Used to skip a specified number of rows before returning results.

-- * `GROUP BY` → Used to group rows with the same values into summary rows.

-- * `HAVING` → Used to filter grouped records after `GROUP BY`.


-- clause------>>>>>
-- 1.where
-- 2.order by
-- 3.limit
-- 4.offset
-- 5.group by
-- 6.Having

-- 1.where---->>>>
use batch24;
select * from employees;

select * from employees where salary between 55000 and 60000;

select * from employees where salary>=55000 and salary<=60000;


select * from employees where salary<=70000 and salary>=55000;

select * from employees where first_name like "s%n";

select * from employees where first_name like "%s%" and department="IT" and salary>50000;


-- 2.Order by---->>>>

select * from employees;

select * from employees order by first_name asc;
select * from employees order by first_name desc;

select first_name,salary from employees order by salary asc;
select first_name,salary from employees order by salary desc;

-- 3.Limit----->>>>
select * from employees limit 10;

select count(emp_id) from employees;

-- 4.offset---->>>
select * from employees;



select * from employees limit 10 offset 40;
select * from employees limit 6 offset 14;

-- 5.group by----->>>>

select count(*) from employees where department="it";

select department,count(*) from employees group by department;

select department,max(salary) from employees group by department;
select department,avg(salary) from employees group by department order by department ;
select first_name,max(salary) from employees group by first_name;

select * from employees order by salary asc limit 1 offset 37;

select department from employees;
-- Having---->>>>

select department,max(salary) from employees group by department having max(salary)>50000;

select department,max(salary) as sal from employees group by department having sal>70000;

select department,count(*) as z from employees where salary>45000 group by department having z>=1 order by department asc;



select * from employees;













# 1️⃣ Single Row Subquery

-- **Definition:**
-- A **single row subquery** is a subquery that returns **only one row of data**.

-- 👉 Usually used with operators like
-- `= , > , < , >= , <=`

-- **Example**
use batch23;
-- sql
select * from employees
where salary > (select avg(salary) from employees);


-- ✔ Subquery returns **one row (average salary)**
-- ✔ Outer query compares salary with that value.

---

# 2️⃣ Multi Row Subquery

-- **Definition:**
-- A **multi row subquery** is a subquery that returns **multiple rows of data**.

-- 👉 Used with operators like
-- `IN , ANY , ALL , EXISTS`

-- **Example**

-- sql

select * from employees
where emp_id in (select emp_id from employees where department='IT');


-- ✔ Subquery returns **multiple emp_id values**

---

# 3️⃣ Scalar Subquery

-- **Definition:**
-- A **scalar subquery** is a subquery that returns **exactly one value (one row and one column)**.

-- 👉 It can be used **inside SELECT, WHERE, or expressions**.

-- **Example**

-- sql


select emp_id, salary,
(select max(salary) from employees) as max_salary
from employees;

-- ✔ Subquery returns **one value (max salary)**
-- ✔ That value is shown for each row.

-- ---

# Summary Table

-- | Subquery Type       | Returns       | Example Use           |
-- | ------------------- | ------------- | --------------------- |
-- | Single Row Subquery | One row       | `salary > (subquery)` |
-- | Multi Row Subquery  | Multiple rows | `IN (subquery)`       |
-- | Scalar Subquery     | One value     | Used like a column    |



---

# Subquery in SQL

-- **Definition:**
-- A **subquery** (also called **inner query / nested query**) is a **SELECT query written inside another query**.

-- ✔ The **subquery executes first**
-- ✔ Its **result is used by the outer query**

-- General syntax

-- ```sql
-- SELECT column
-- FROM table
-- WHERE column operator (SELECT column FROM table);
-- ```

---

# 1️⃣ Single Row Subquery

-- 👉 Returns **only one row and one column**

-- Usually used with operators:

-- * `=`
-- * `>`
-- * `<`
-- * `>=`
-- * `<=`

-- ---

-- ### Example 1
use batch24;

-- ```sql
select * from employees where salary>(select avg(salary) from employees);
-- ```

### Execution

-- Step 1 – Subquery runs first

-- ```sql
-- select avg(salary) from employees;
-- ```

-- Example result

-- ```
-- avg(salary)
-- 55000
-- ```

-- Step 2 – Outer query runs

-- ```sql
-- select * from employees where salary>55000;
-- ```

-- 👉 Shows employees **earning above average salary**

-- ---

-- ### Example 2

-- ```sql
select * from employees  where salary=(select max(salary) from employees); 








-- ```

-- 👉 Shows employees whose **salary equals average salary**

-- Usually **rare case** because exact match may not exist.

-- ---

-- ### Example 3

-- ```sql
select * from employees 
where salary=(select min(salary) from employees);
-- ```

-- Step 1

-- ```sql
-- select min(salary) from employees;
-- ```

-- Example result

-- ```
-- 25000
-- ```

-- Step 2

-- ```sql
-- select * from employees where salary=25000;
-- ```

-- 👉 Shows employee with **lowest salary**

-- ---

-- # 2️⃣ Multi Row Subquery

-- 👉 Returns **multiple rows**

-- Used with operators like

-- * `IN`
-- * `ANY`
-- * `ALL`
-- * `EXISTS`

-- ---

-- ### Example


select * from employees where emp_id in (select emp_id from employees where department="IT");




-- Step 1 – Subquery

-- ```sql
-- select emp_id from employees where department="IT";
-- ```

-- Example result

-- ```
-- 101
-- 105
-- 108
-- 110
-- ```

-- Step 2 – Outer query

-- ```sql
-- select * from employees where emp_id in (101,105,108,110);
-- ```

-- 👉 Shows **all employees whose ID is in IT department list**

-- ⚠ But this query is logically unnecessary because:

-- ```sql
-- select * from employees where department="IT";
-- ```

-- will give the same result.

-- ---

-- # 3️⃣ Scalar Subquery

-- 👉 A **subquery that returns exactly one value**

-- It can be used **inside SELECT clause**

-- Example

-- sql
select emp_id,first_name,salary,department,
(select max(salary) from employees) as max_sal
from employees;


-- -- Step 1 – Subquery

-- -- ```sql
-- select max(salary) from employees;
-- ```

-- Example result

-- ```
-- 90000
-- ```

-- Step 2 – Outer query output

-- | emp_id | salary | department | max_sal |
-- | ------ | ------ | --------| ------- |
-- | 101    | 45000  | HR         | 90000   |
-- | 102    | 55000  | IT         | 90000   |
-- | 103    | 70000  | Sales      | 90000   |

-- 👉 `max_sal` will show **same value for every row**

-- ---

# Types of Subqueries (Summary)

-- | Type                | Returns       |
-- | ------------------- | ------------- |
-- | Single Row Subquery | 1 row         |
-- | Multi Row Subquery  | Multiple rows |
-- | Scalar Subquery     | Single value  |










-- User defined Function--->>>function is block of reusable code

-- Syntax---->>>> 
-- delimiter special_character(@@)
-- create function function_name(parameter1 datatype,parameter2 datatype..)
-- returns datatype
-- deterministic
-- begin
--     statement/Expresssion
--     
-- end @@

-- delimiter original(;)
use batch23;
delimiter $$
create function avg_mark(physics int,chemistery int,maths int)
returns int
deterministic 
begin
    
    declare result int default 0;
    set result=(physics+chemistery+maths)/3;
    return result;
    
end $$

delimiter ;

drop function avg_mark;
select avg_mark(10,25,35) as data;
select avg_mark(60,70,61) as data;



-- Conditional statement in Function---->>>

delimiter @@

create function student_status(mark int)
returns varchar(50)
deterministic
begin
    declare status1 varchar(50);
    if mark>=90 then
        set status1="Topper Great";
	elseif mark>=70 and mark<90 then
         set status1="Average well done";
	elseif mark>=50 and mark<70 then 
       set status1="Good keep it up";
	elseif mark>=35 and mark<50 then
       set status1="pass nothing else";
	else
        set status1="Fail Sorry";
        
	end if;
    return status1;
       
    
end @@

delimiter ;

select  student_status(82) as state;
select  student_status(96) as state;
select  student_status(32) as state;


-- Factorial using while loop---->>>>

delimiter ##

create function factorial1(value int)
returns int
deterministic
begin
     declare fact int default 1;
     declare i int ;
     set i=1;
     
	 while (i<=value) do
        set fact=fact*i;
        set i=i+1;
	end while;
    return fact;
end ##
delimiter ;

select factorial1(5) as fact;

select factorial1(10) as fact;







-- Conditional statement in Function---->>>

delimiter @@

create function student_status(mark int)
returns varchar(50)
deterministic
begin
    declare status1 varchar(50);
    if mark>=90 then
        set status1="Topper Great";
	elseif mark>=70 and mark<90 then
         set status1="Average well done";
	elseif mark>=50 and mark<70 then 
       set status1="Good keep it up";
	elseif mark>=35 and mark<50 then
       set status1="pass nothing else";
	else
        set status1="Fail Sorry";
        
	end if;
    return status1;
       
    
end @@

delimiter ;

select  student_status(82) as state;
select  student_status(96) as state;
select  student_status(32) as state;


-- Factorial using while loop---->>>>

delimiter ##

create function factorial1(value int)
returns int
deterministic
begin
     declare fact int default 1;
     declare i int ;
     set i=1;
     
	 while (i<=value) do
        set fact=fact*i;
        set i=i+1;
	end while;
    return fact;
end ##
delimiter ;

select factorial1(5) as fact;

select factorial1(10) as fact;










-- Stored Procedure — Definition:
-- A Stored Procedure is a precompiled collection of SQL statements stored in 
-- the database that can be executed repeatedly to perform a specific task.
-- syntax
-- delimiter @@
-- create procedure procedure_name(parameter)
-- begin
--     SQL statements
-- end @@
-- delimiter ;
show databases;
use batch23;
show tables;

delimiter $$

create procedure simple_procedure()
begin
      select * from employees;
end $$

delimiter ;

call simple_procedure();
drop procedure simple_procedure;




-- IN Parameter
-- A parameter used to pass input value into the procedure. The procedure can use the value, but it **cannot return it back.

-- OUT Parameter
-- A parameter used to return a value from the procedure to the caller.

-- INOUT Parameter
-- A parameter used to pass a value into the procedure and return the modified value back to the caller.
-- IN → input value

-- OUT → result return

-- INOUT → input + modified output

delimiter ##
create procedure department_count1(in sal int)
begin
    declare data int default 0;

    select count(*) into data
    from employees
    where salary = sal;

    select data as employee_count;

end ##

delimiter ;
drop procedure department_count1;
call department_count1(36000);
call department_count1(60000);



delimiter ##

create procedure department_count2(
    in sal int,
    out asd int
)
begin
    select count(*) into asd
    from employees
    where salary = sal;
    

end ##

delimiter ;

call department_count2(35000,@result);
call department_count2(60000,@result);


select @result;



delimiter ##

create procedure string_man(
    in data varchar(40),
    inout record varchar(40)
)
begin
    set record = upper(data);
end ##

delimiter ;



call string_man("sunil", @record);

select @record;
























