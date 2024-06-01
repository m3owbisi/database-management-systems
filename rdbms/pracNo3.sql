SQL>create table employee
    (enum int primary key,
    elname varchar(15),
    efname varchar(15),
    sal int,
    ehdate date,
    jobcode char(8)
    );
SQL>insert into employee values(1,'P','RAMAN',6000,sysdate,'909');
SQL>insert into employee(enum,elname,sal) values(2,'R',6000);
SQL>select * from employee;
SQL>insert into employee values(&enum,'&elname','&efname',&sal,&ehdate,'&jcode');
SQL>insert into employee values(3,'L','JAMES',9000,sysdate,'908');
SQL> /
SQL>insert into employee values(&enum,'&elname','&efname',&sal,&ehdate,'&jcode');
SQL>insert into employee values(4,'U','DAVID',8000,'12-DEC-17','888');
SQL>select * from employee;
SQL>delete from employee;
SQL>select * from employee;
SQL>delete from employee
    where sal>1000;
SQL>delete from emp where comm=0;
SQL>update employee
    set sal=1000;
SQL>update employee
    set sal=8000
    where efname like 'J%';
SQL>update employee
    set sal=1000
    where comm is null;