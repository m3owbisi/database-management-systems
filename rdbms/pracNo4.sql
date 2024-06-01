SQL>create table employee
    (emp_num int primary key,
    emp_lname varchar(15),
    emp_fname varchar(15) not null,
    emp_sal int,
    emp_hiredate date,
    job_code char(3) default '501'
    );
SQL>desc employee;
SQL>alter table employee
    add gender char(1);
SQL>desc employee;
SQL>alter table employee
    modify gender char(5);
SQL>desc employee;
SQL>alter table employee
    drop column gender;
SQL>desc employee;
SQL>drop table employee;
SQL>desc employee;