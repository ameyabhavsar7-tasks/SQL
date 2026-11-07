create database xyz;
use xyz;

create table stud(id int,name varchar(200),email varchar(200),phone int); 

select * from stud;

rename table stud to stu;

alter table stu add column marks int;

alter table stu rename column marks to score;

alter table  stu drop column score;
