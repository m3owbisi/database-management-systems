SQL>conn
    enter user_name:    sys as sysdba
    enter password: (press enter_key_only)
SQL>grant all privileges to scott;
SQL>conn
    enter user_name:    scott
    enter pass_words:   tiger
SQL>create view vw_hemp
    as
    select * from emp
    where deptno=10;
SQL>select * from vw_hemp;
SQL>create view vw_vemp
    as
    select empno,ename,job from emp;
SQL>select * from vw_vemp;
SQL>create view rc_emp
    as
    select empno,ename,job,mgr
    from emp
    where comm is null;
SQL>select * from rc_emp;
SQL>create view gp_name(job,total_sal)
    as
    select job,sum(sal)
    from emp
    group by job;
SQL>select * from gp_name;
SQL>select * from dept;
SQL>create view jv_empd(empno,ename,job,dept,deptno,loc)
    as
    select empno,ename,job,dept,deptno,loc
    from emp join dept
    on emp.deptno=dept.deptno;
SQL>select * from jv_empd;
SQL>create or replace view vw_vemp
    as
    select empno,ename,sal
    from emp
    where sal between 1000 and 5000
    with check option;
SQL>create or replace view vw_name
    as
    select * from emp
    where deptno=10 and ename like 'M%';
SQL>select * from vw_name;
SQL>create or replace view vw_emp 
    as
    select empno,ename,sal from emp
    where sal between 1000 and 5000
    with check option;
SQL>select * from vw_emp;
SQL>update vw_emp 
    set sal=7000
    where empno=7500;