show databases;
show tables;
CREATE DATABASE maria;

USE MARIA;

create table employe1(
emp_id varchar(20),
emp_age int,
emp_name varchar(20),
emp_desg varchar(20),
emp_salary int
);
desc employe1;
select*from employe1;

insert into employe1 values
('101','20','Maria','SQL','10000'),
('102','21','jess','Python',20000),
('103','22','logesh','IT','20000');

alter table employe1
add primary key(emp_id);

update employe1
set emp_desg ='Networking'
where emp_id='103';

delete from employe1
where emp_id='104';

update employe1
set emp_desg='Network'
where emp_id='103';

insert into employe1 (emp_id,emp_name,emp_salary)values
('104','raja','20000');

-- Temprovary show name --- Alias Name
select emp_salary as salary from employe1;

select emp_id,emp_name from employe1;

select*from employe1 where emp_id>1;

select*from employe1 where emp_age>=21;

select*from employe1;

select*from employe1 where emp_salary=20000;

select*from employe1;

select*from employe1 where emp_id>=20 and emp_id>=101;
