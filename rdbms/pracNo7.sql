SQL>create table employee
    (
        deptno number(10),
        empno number(10),
        ename varchar(20),
        job varchar(20),
        sal number(10)
    );
SQL>insert into employee values
    (10,7369,'pooja','clerk',800);
SQL>select * from employee;
SQL>select max(sal) from employee;
SQL>select max(sal)
    from employee,
    where job='clerk';
SQL>select avg(sal)
    from employee
    where deptno=10;
SQL>select min(sal) from employee where deptno
    not in(10,20);
SQL>select count(*) from employee where
    ename like 'p%' and '%p';
SQL>select count(*) from employee where
    job='manager';
SQL>select distinct job from employee;
SQL>select count(distinct job) from employee;