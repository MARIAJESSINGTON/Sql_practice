-- Day 2

-- order By

use sakila;

show tables;

select*from actor_info
where first_name LIKE 'S%';

select*from actor order by first_name;
select*from payment;
select*from payment order by amount asc;
select*from payment order by amount desc;

-- Between
select*from payment where amount between 0.99 and 2.00;
select*from actor;
select*from actor where first_name between 'a' and 'c';

-- in
show tables;
use maria;
desc employe2;
select*from employe1;
select*from employe1 where emp_desg in ('SQL','Python');


-- Creating another table name is employe2
select*from employe2;
create table employe2 as select *from employe1;

-- Delete
alter table employe2
add primary key (emp_id);

delete from employe2
where emp_id='104';

select*from employe2;
select*from employe2 where emp_salary in(20000);

-- Aggregrate Function

-- count Function
select count(*) from employe2 where emp_salary=20000;

-- Average Function
select*from employe2;
select avg(emp_age) from employe2;

-- Sum Function
select*from employe2;
select sum(emp_salary) from employe2;

-- minimum Function
select*from employe2;
select min(emp_salary) from employe2;

-- maximum Function
select*from employe2;
select max(emp_age) from employe2;

-- Alter 
select*from employe2;

alter table employe2
add emp_exp int after emp_age;

alter table employe2
modify emp_exp decimal(10,2);


-- Rename the table name and column
rename table employe2 to emp2;
desc emp2;

select*from emp2;

alter table emp2
rename column emp_id to empid;

-- Delecting column

 select*from emp2;

 alter table emp2
 drop column emp_exp;
 
 -- Truncate Table
 select*from emp2;
truncate table emp2;


-- Drop table and databases

drop table emp2;
drop database maria;
show tables;
