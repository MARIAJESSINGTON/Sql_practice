create database practice;
use practice;

create table product(
p_id int primary key,
P_name varchar(20),
price decimal(10,2)
);
desc product;
drop database practice;
insert into product values
(101,'laptop',100),
(102,'mouse',200),
(103,'trimer',300),
(104,'mobile',400),
(105,'smartwatch',500);

select*from product;

create table sales(
s_id int primary key,
p_id int,
cust_name varchar(20),
quantity int,
sales_amount DECIMAL(10,2),
foreign key(p_id) references product(p_id)
);
desc sales;
desc product;
insert into sales values
(1,101,"maria",1,1000),
(2,102,"jess",1,2000),
(3,103,"sam",4,3000),
(4,104,"raja",3,4000),
(5,105,"selva",2,8000);

select*from sales;

insert into sales values(1,222,'jess',6,12345);

select s.s_id,p.p_name,s.sales_amount,rank() over(order by s.sales_amount) as sales_rank
from product as p
join sales as s 
on p.p_id=s.p_id;

-- partician

select s.s_id,p.p_name,s.sales_amount,rank() over(partition by p.p_id order by s.sales_amount desc) as sales_rank
from product as p
join sales as s 
on p.p_id=s.p_id;

select*from batch;
select*from course_batch;

select b.batch,c.course
from batch as b
cross join course_batch as c;