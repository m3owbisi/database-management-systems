SQL>create table employee8
    (
        sr_no int primary key,
        name varchar(30),
        designation varchar(30),
        branch varchar(80)
    );
SQL>insert into employee8 values
    (1,'ram','manager','chennai');
SQL>insert into employee8 values
    (2,'santhosh','supervisor','madurai');
SQL>insert into employee8 values
    (3,'hari','assistant','trichy');
SQL>select * from employee8;
SQL>alter table employee8
    add(salary number(10));
SQL>select * from employee8;
SQL>alter table employee8
    modify(name varchar(75));
SQL>desc employee8;
SQL>create table emp8 as select * from employee8;
SQL>select * from emp8;
SQL>truncate table employee8;
SQL>select * from employee8;
SQL>delete from emp8
    where s_no=2;
SQL>select * from emp8;
SQL>drop table emp8;
SQL>select * from emp8;
