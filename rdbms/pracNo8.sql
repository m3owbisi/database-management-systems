SQL>create table book
    (
        bookno number(10),
        bname varchar(20),
        author varchar(20),
        price number(10)
    );
SQL>select * from book;
SQL>insert into book values
    (1,'Discovery Of India','J.L. Nehru',125);
SQL>select * from book;
SQL>select max(price)
    from book
    group by bname;
SQL>select count(*)
    from book
    where author='null'
    group by bname;
SQL>select count(*)
    from book
    where price between 100 and 200;