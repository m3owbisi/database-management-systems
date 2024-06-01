SQL>create table course
    (
        courseid varchar(4) primary key,
        coursename varchar(20)
    );
SQL>create table student
    (
        studentid varchar(8),
        firstname varchar(20),
        lastname varchar(20),
        courseid varchar(4) references course(courseid)
    );
SQL>insert into course values('a004','accounts');
SQL>insert into course values('c002','computing');
SQL>insert into course values('p301','history');
SQL>insert into course values('s042','short course');
SQL>insert into student values
    ('l0002345','jim','black','c002');
SQL>insert into student values
    ('l0001254','james','harradine','a004');
SQL>insert into student values
    ('l0002349','amanda','holland','c002');
SQL>insert into student values
    ('l0001198','simon','mccloud','s042');
SQL>select * from course;
SQL>select * from student;