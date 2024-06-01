SQL>create table empt
    (
        empno int,
        ename varchar(10),
        job varchar(15),
        sal int,
        deptno int
    );
SQL>create table deptt
    (
        deptno int,
        dname varchar(10),
        loc varchar(15)
    );
SQL>insert into empt values
    (1,'smith','manager',2550,10);
SQL>insert into empt values
    (2,'khilan','clerk',2850,20);
SQL>insert into empt values
    (3,'kunal','clerk',5000,50);
SQL>insert into empt values
    (4,'pooja','manager',12000,10);
SQL>insert into empt values
    (5,'neha','salesman',20000,20);
SQL>insert into empt values
    (6,'mohini','manager',10000,40);
SQL>select * from empt;
SQL>insert into deptt values
    (60,'developer','chennai');
SQL>insert into deptt values
    (10,'sales','mumbai');
SQL>insert into deptt values
    (50,'analyst','pune');
SQL>insert into deptt values
    (20,'marketing','delhi');
SQL>insert into deptt values
    (40,'hr','bangalore');
SQL>insert into deptt values
    (30,'pr','chennai');
SQL>select * from deptt;
SQL>select count(*)
    from empt
    where deptno=(select deptno
                from deptt
                where loc='mumbai');
SQL>select loc
    from deptt
    where deptno=(select deptno
                from emp
                where ename='smith');
SQL>select count(*)
    from empt
    where deptno=(select deptno
                from deptt
                where loc='mumbai' and
                job='manager');
SQL>select loc
    from deptt
    where deptno in(select deptno
                    from empt
                    where job='clerk');
SQL>select ename
    from empt
    where sal=(select max(sal)
                from empt);
SQL>select ename
    from empt
    where sal>(select sal
                from empt
                where ename='smith');
SQL>select count(*)
    from empt
    where deptno=(select deptno
                    from deptt
                    where dname='hr' and
                    sal between 5000 and 10000);
SQL>select job
    from empt
    where sal>8000
    group by job
    having count(*)=(select max(count(*))
                    from empt
                    where sal>8000
                    group by job);