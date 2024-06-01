SQL>conn
    enter username: sys as sysdba
    enter password: (press enter_key_only)
SQL>create user hiral identified by 123;
SQL>grant create table to hiral;
SQL>grant create session to hiral;
SQL>grant unlimited tablespace to hiral;
SQL>conn
    enter username: hiral
    enter password: 123
SQL>create table a(ab number);
SQL>conn
    enter username: sys as sysdba
    enter password:
SQL>revoke create table from hiral;
SQL>revoke unlimited tablespace from hiral;
SQL>conn
    enter username: hiral
    enter password: 123
SQL>create table b
    (cd number(10));
    create table b;
SQL>conn
    enter username: sys as sysdba
    enter password: 123
SQL>grant all privileges to hiral;
SQL>conn
    enter username: hiral
    enter password: 123
SQL>create table stud
    (
        sname varchar(10),
        srollno number(10)
    );
SQL>insert into stud values('vritika',10);
SQL>select * from stud;
SQL>