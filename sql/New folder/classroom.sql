create database temp1;
drop database temp1;
create database temp2;
drop database temp2;
create database college;
use college;
create table student (
	id int primary key,
    name varchar(50),
    age int not null
);
insert into student values(1, "aman", 26);
insert into student values(2, "shradha", 24);
select * from student;
create database if not exists college;
drop database company;
drop database if exists company;
show databases;
show tables;
drop table student;
create table student(
	rollno int primary key,
    name varchar(50)
);
select * from student;
insert into student
(rollno, name)
values
(101, "karan"),
(102, "arjun"),
(103, "hiral");
insert into student values (104, "dimple");
select * from student;
create database xyz_company;
use xyz_company;
create table employee(
	id int primary key,
    name varchar(100),
    salary int
);
insert into employee
(id, name, salary)
values
(1, "adam", 25000),
(2, "bob", 30000),
(1, "casey", 40000);
select * from employee;
create table temp1(
	id int unique,
    name varchar(50),
    age int,
    city varchar(20),
    primary key (id, name)
);
insert into temp1 values(101);
select * from temp1;
insert into temp1 values(101);
create table temp(
	cust_id int,
    foreign key(cust_id) references customer(id)

);
create table emp(
	id int,
    salary int default 25000
);
insert into emp (id) values (101);
select * from emp;
create database college;
use college;
create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);
insert into student
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "c", "pune"),
(102, "bhumika", 93, "a", "mumbai"),
(103, "chetan", 85, "b", "mumbai"),
(104, "dhruv", 96, "a", "delhi"),
(105, "emaneul", 12, "f", "delhi"),
(106, "farah", 82, "b", "delhi");
select name, marks from student;
select * from student;
select distinct city from student;
select *
from student
where marks >= 90 and city = "mumbai";
select *
from student
where marks+10 > 100 or city = "delhi";
select *
from student
where marks between 80 and 90;
select *
from student
where city not in("delhi", "mumbai", "gurgaon", "faridabad");
select *
from student
where marks > 75
limit 3;
select *
from student
order by city asc;
select *
from student
order by marks desc
limit 3;
select max(marks)
from student;
select avg(marks)
from student;
select city, rollno, count(name)
from student
group by city, rollno;
select city, avg(marks)
from student
group by city
order by avg(marks) desc;
select mode, count(customer_id)
from payment
group by mode;
select grade, count(rollno)
from student
group by grade
order by grade;
select count(name), city
from student
-- where max(marks) > 90
group by city
having max(marks) > 90;
select city
from student
where grade = "a"
group by city
having max(marks) > 93
order by city desc;
update student
set grade = "o"
where grade = "a";
set sql_safe_updates = 0;
select * from student;
update student
set marks = 82
where rollno = 105;
update student
set grade = "b"
where marks between 80 and 90;
update student
set marks = marks + 1;
update student
set marks = 12
where rollno = 105;
delete from student
where marks < 33;
create table dept(
	id int primary key,
    name varchar(50)
);
insert into dept
values
(101, "english"),
(102, "it");
select * from dept;
drop table teacher;
create table teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade
    on delete cascade
);
insert into teacher
values
(101, "adam", 101),
(102, "bob", 102);
select * from teacher;
update dept
set id = 103
where id = 102;
alter table student
add column age int not null default 19;
-- modify column age varchar(2)
-- change age stud_age int
-- drop column stud_age
-- rename to stud
insert into student
(rollno, name, marks, stud_age)
values
(107, "gargi", 68, 100);
truncate table student;
alter table student
change name full_name varchar(50);
delete from student
where marks < 80;
alter table student
drop column grade;
create database college;
use college;
create table student(
	id int primary key,
    name varchar(50)
);
insert into student(id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");
create table course(
	id int primary key,
    course varchar(50)
);
insert into course(id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");
select * from student;
select * from course;
select *
from student as a
inner join course as b
on a.id = b.id;
select *
from student as a
left join course as b
on a.id = b.id
union
select *
from student as a
right join course as b
on a.id = b.id;
select *
from student as a
left join course as b
on a.id = b.id
where b.id is null;
select *
from student as a
right join course as b
on a.id = b.id
where a.id is null;
create table employee(
	id int primary key,
    name varchar(50),
    manager_id int
);
insert into employee(id, name, manager_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);
select * from employee;
select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id = b.manager_id;
select name from employee
union all
select name from employee;
select avg(marks)
from student;
select name, marks
from student
where marks > 87.6667;
select name, marks
from student
where marks > (select avg(marks) from student);
select rollno
from student
where rollno % 2 = 0;
select name, rollno
from student
where rollno in (select rollno from student where rollno % 2 = 0);
select max(marks)
from (select * from student where city = "delhi") as temp;
select max(marks)
from student
where city = "mumbai";
select (select max(marks) from student), name
from student;
create view view1 as
select rollno, name, marks
from student;
select * from view1
where marks > 90;
drop view view1;