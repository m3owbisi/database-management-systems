SQL>select * from tab;
SQL>select * from emp;
SQL>select ename,sal from emp;
SQL>select ename from emp;
SQL>select sal+2000 as "NEW_SAL" from emp;
SQL>select * from emp where sal>2000;
SQL>select ename from emp where sal between 2000 and 5000;
SQL>select empno,ename,job from emp where job in
    ('MARKETING','SALESMAN','ANALYST');
SQL>select ename from emp where ename like 'A%';
SQL>
SQL>select * from emp where comm is null;
SQL>select * from emp where job='CLERK' and sal=800;
SQL>
SQL>select empno,job,sal, from emp
    where ename like 'K%' and job='MANAGER' or sal<5700;
SQL>select ename from emp order by ename;
SQL>select * from emp order by sal desc;
SQL>select abs(-17.36) from dual;
SQL>select abs(-12) from dual;
SQL>select abs(12) from dual;
SQL>select ceil(12.26) from dual;
SQL>select ceil(-10.26) from dual;
SQL>select ceil(-10.66) from dual;
SQL>select ceil(10.66) from dual;
SQL>select floor(-10.26) from dual;
SQL>select floor(10.26) from dual;
SQL>select floor(10.76) from dual;
SQL>select floor(-10.76) from dual;
SQL>select trunc(-55,1) from dual;
SQL>select trunc(2.465,1) from dual;
SQL>select trunc(142.465,-2) from dual;
SQL>select trunc(142.465,2) from dual;
SQL>select trunc(55,2) from dual;
SQL>select trunc(55,1) from dual;
SQL>select round(34.4158,-1) from dual;
SQL>select round(34.4158,1) from dual;
SQL>select round(55,1) from dual;
SQL>select round(55,-1) from dual;
SQL>select round(55.78,-1) from dual;
SQL>select lower(ename) from emp;
SQL>select upper(ename) from emp;
SQL>select initcap(ename) from emp;
SQL>select ltrim('  W3R') "STR" from dual;
SQL>select ltrim('000985','0') "STR" from dual;
SQL>select ltrim('1000','0') "STR" from dual;
SQL>select rtrim('0001000','0') "STR" from dual;
SQL>select rtrim(' W3R ') "STR" from dual;
SQL>select trim(trailing '0' from '000123') "OUTPUT" from dual;
SQL>select trim('0' from '000123000') "TRIM" from dual;
SQL>select trim(leading '0' from '000123') "OUTPUT" from dual;
SQL>select substr('W3RESOURCE',3,4) "SUBSTRING" from dual;
SQL>select substr('W3RESOURCE',5,6) "SUBSTRING" from dual;
SQL>select substr('W3RESOURCE',5,6)
    "SUBSTRING" from dual;
SQL>select length('W3RESOURCE.COM')
    "LENGTH IN CHARACTERS" from dual;
SQL>select lpad('ORACLE',4,'*') from dual;
SQL>select lpad('ORACLE',6,'*') from dual;