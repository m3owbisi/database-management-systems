SQL>select ename,job
    from emp
    where sal=(select min(sal)
                from emp);
SQL>select deptno,min(sal)
    from emp
    group by deptno
    having min(sal)>(select min(sal)
                    from emp
                    where deptno=20);
SQL>select ename,deptno
    from emp
    where deptno=(select deptno from emp where empno=7369);
SQL>select ename
    from emp
    where sal>(select sal
                from emp
                where empno=7566);
SQL>select ename,sal,deptno
    from emp
    where job=(select job
                from emp
                where empno=7769);
SQL>select ename,sal,deptno
    from emp where sal in(select min(sal) from emp group by deptno);
SQL>select empno,ename
    from emp
    where exists(select * from dept
                where emp.deptno=dept.deptno);
SQL>select empno,ename
    from emp
    where sal>any(select sal
                    from emp
                    where job='manager');
SQL>select empno,ename,job
    from emp
    where sal>all(select avg(sal)
                    from emp
                    group by deptno);
SQL>select deptno,min(sal),max(sal),count(*)
    from emp
    group by deptno;
SQL>select deptno,min(sal),max(sal),count(*)
    from emp
    where sal>1000
    group by deptno;
SQL>select deptno,min(sal),max(sal),count(*)
    from emp
    where ename like 'J%'
    group by deptno;
SQL>select deptno,min(sal),max(sal),count(*)
    from emp
    where ename like 'J%'
    group by deptno
    order by deptno;
SQL>select deptno,min(sal),max(sal),count(*)
    from emp
    where sal<1000
    group by deptno
    having min(sal)<1000;