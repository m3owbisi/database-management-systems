SQL>select * from emp;
SQL>select * from dept;
SQL>select * from emp
    where deptno=20;
SQL>select * from emp
    order by sal desc;
SQL>select deptno,min(sal),sum(sal),avg(sal)
    from emp
    group by deptno;
SQL>select job,count(distinct job) from emp
    group by job;
SQL>select job,min(sal),sum(sal),avg(sal)
    from emp
    group by job;
SQL>select * from emp
    where job='clerk';
SQL>select deptno,count(*) from emp
    group by deptno;
SQL>select deptno from emp
    where job='clerk'
    group by deptno
    having count(*)>1;