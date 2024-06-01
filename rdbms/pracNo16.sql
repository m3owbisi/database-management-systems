SQL>create table student
    (
        rollno number(6),
        name varchar(20),
        branch varchar(20)
    );
SQL>insert into student values
    (1,'jhanvi','data_science');
SQL>insert into student values
    (2,'mansi','bca');
SQL>insert into student values
    (3,'honey','i.t.');
SQL>insert into student values
    (4,'vedshree','bms');
SQL>insert into student values
    (5,'vanshika','cs');
SQL>select * from student;
SQL>alter table student
    add(class varchar(20));
SQL>select * from student;
SQL>delete from student
    where rollno=4;
SQL>select * from student;
SQL>alter table student
    drop column branch;
SQL>select * from student;
SQL>alter table student
    modify(rollno number(8));
SQL>desc student;
SQL>delete from student;
SQL>select * from student;
SQL>drop table student;
SQL>select * from student;
SQL>desc student;