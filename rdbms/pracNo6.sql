SQL>create table product_details
    (
        pdt_id number(4),
        pdt_name varchar(10),
        qty number(5),
        price number(6)
    );
SQL>create table sales_details
    (
        sales_no number(4),
        pdt_id number(4),
        qty number(5),
        price number(6),
        cust_name varchar(10)
    );
SQL>insert into product_details values
    (1,'pendrive',100,900);
SQL>insert into product_details values
    (2,'harddisk',200,4000);
SQL>insert into product_details values
    (3,'dvd',20,1000);
SQL>select pdt_id from sales_details;
SQL>select pdt_id from product_details
    union all
    select pdt_id from sales_details;
SQL>select pdt_id from product_details
    intersect
    select pdt_id from sales_details;
SQL>select pdt_id from product_details
    minus
    select pdt_id from sales_details;
SQl>select current_date from dual;
SQL>insert into product_details values
    (4,'speaker',60,2400);
SQL>select * from product_details;
SQL>insert into sales_details values
    (101,1,50,900,'salvi');
SQL>insert into sales_details values
    (102,4,10,800,'salvi');
SQL>insert into sales_details values
    (103,2,30,1000,'harsh');
SQL>select * from sales_details;
SQL>select ptd_id from product_details
    union;
SQL>select sysdate from dual;
SQL>select add_months(sysdate,3) from dual;
SQL>select next_day(sysdate,'saturday') from dual;
SQL>select next_day(sysdate,'tuesday') from dual;
SQL>select next_day('6-jan-2024','friday') from dual;
SQL>select last_day(sysdate) from dual;
SQL>select last_day('2-dec-22') from dual;
SQL>select month_between('31-dec-23',sysdate) from dual;
SQL>select months_between('15-may-19','14-jun-18')
    from dual;
SQL>select deptno,job,count(*),sum(sal)
    from emp
    group by cube(deptno,job);
SQL>select deptno,job,count(*),sum(sal)
    from emp
    group by rollup(deptno,job);
