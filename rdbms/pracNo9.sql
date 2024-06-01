SQL>create table employees
    (
        employee_id int primary key
        salary int
    );
SQL>insert into employees values(1,10000);
SQL>insert into employees values(2,20000);
SQL>insert into employees values(3,20000);
SQL>insert into employees values(4,30000);
SQL>insert into employees values(5,40000);
SQL>insert into employees values(6,50000);
SQL>select * from employees;
SQL>select max(salary)
    from employees;
SQL>select max(salary)
    from employees
    where salary not in(select max(salary)
                        from employees);
SQL>select employee_id,salary
    from employees e1
    where 2=(select count(distinct salary)
            from employees e2
            where e2.salary>e1.salary);
SQL>select employee_id,salary
    from employees e1
    where 3=(select count(distinct salary)
            from employees e2
            where e2.salary>e1.salary);
SQL>select employees_id,salary
    from employees e1
    where 4=(select count(distinct salary)
            from employees e2
            where e2.salary>e1.salary);