SQL>select * from emp;
SQL>select empno,ename,deptno,sal from emp;
SQL>select distinct job from emp;
SQL>select sal as employee_salary from emp;
SQL>select empno,ename,sal,sal+200 as new_sal from emp;
SQL>select ('employee' '||' '||ename||' '||' 'is working as'
            ||job) from emp;
SQL>select * from emp
    where sal>2000;
SQL>select ename from emp where job='analysis';
SQL>select ename,deptno,job from emp where
    deptno=20 or job='salesman';
SQL>select ename,deptno,sal from emp where sal>1200
    and deptno=10;
SQL>select * from emp where job in
    ('salesman','manager','analyst');
SQL>select * from emp where job like 'A%';
SQL>select ename from emp where ename like '%A';
SQL>select ename,deptno from emp where ename like
    '_____';
SQL>select * from emp where comm=0;
SQL>select ename,sal from emp order by sal;
SQL>select job,count(*) from emp group by job;
SQL>select job,sum(sal) as total,sal
    from emp group by job;
SQL>select job,deptno,sum(sal) from emp
    group by job,deptno having count(sal)>2;
SQL>