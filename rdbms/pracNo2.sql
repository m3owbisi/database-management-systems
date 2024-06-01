SQL>select empno,ename,sal,dname
    from emp inner join dept
    on emp.deptno=dept.deptno;
SQL>select empno,ename,sal,dname
    from emp,dept
    where emp.deptno=dept.deptno;
SQL>select empno,ename,sal,dname,loc
    from emp left outer join dept
    on emp.deptno=dept.deptno;
SQL>select empno,ename,sal,dname,loc
    from emp right outer join dept
    on emp.emp.deptno=dept.deptno;
SQL>select empno,ename,sal,dname,loc
    from emp full outer join dept
    on emp.deptno=dept.deptno;
SQL>select empno,dname
    from emp
    cross join dept;
SQL>select empno,dname
    from emp natural join dept;
SQL>select e.name as "EMPNAME",
    e1.name as "MANAGER"
    from emp e join emp e1
    on e.mgr=e1.empno;
SQL>select e.ename as "EMPNAME",
    e1.ename as "MANAGER"
    from emp e join emp e1
    on e.mgr=e1.empno;
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
    where sal>1000
    group by deptno
    having min(sal)>1000;