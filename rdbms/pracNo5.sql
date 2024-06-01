SQL>create table persons
    (personid number(10),
    lastname varchar(10),
    firstname varchar(10),
    age number(10),
    primary key(personid)
    );
SQL>create table orders
    (orderid int not null,
    ordernumber int not null,
    personid int,
    primary key(orderid),
    constraint fk_personorder foreign key(personid)
    references persons(personid)
    );
SQL>insert into persons values(1,'HANSEN','OLA',30);
SQL>insert into persons values(2,'SVENDSON','TORE',23);
SQL>insert into persons values(3,'PETTERSEN','KARI',20);
SQL>insert into orders values(1,77895,3);
SQL>insert into orders values(2,44678,3);
SQL>insert into orders values(3,22456,2);
SQL>insert into orders values(4,24562,1);
SQL>select * from persons;
SQL>select * from orders;