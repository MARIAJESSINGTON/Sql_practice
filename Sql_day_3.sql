show databases;
create database product;
use product;
 drop table product;


 create table product(
 pr_id varchar(20),
 pname varchar(20),
 catogory varchar(20),
 unitprice int
 );
desc product;
drop table product;
truncate table product;

INSERT INTO product VALUES
('101','Laptop', 'Electronics', 40000),
('102','Mobile', 'Electronics', 20000),
('103','Chair', 'Furniture', 3500),
('104','Table', 'Furniture', 7000),
('105','Headphone', 'Accessories', 2500);

select*from product;

 create table sales(
 sales_id int,
 pr_id int,
 cust_name varchar(20),
 quantity int,
 sales_amount decimal(10,2)
 );
 drop table sales;
truncate table sales;
INSERT INTO sales VALUES
(1, 101, 'Maria', 2, 80000.00),
(2, 102, 'Raj', 3, 60000.00),
(3, 103, 'Kumar', 2, 7000.00),
(4, 104, 'Arun', 1, 7000.00),
(5, 105, 'Abdul', 4, 10000.00);
 select*from sales;
 
 insert into sales(sales_id,pr_id,quantity,sales_amount) values('6','106','2',1500);
 
 -- like
select *from product where pname like '%e';
select *from product where pname like 'm%';
select *from product where pname like '%e';
select *from product where pname like '%ai%';
select *from product where pname like 'm%e';
select *from product where pname like '____e';
select *from product where pname like 'l_____';

-- IS NULL/IS NOT NULL

select*from sales where cust_name is null;
select*from sales where cust_name is NOT null;

-- LIMIT
select*from sales LIMIT 3;
select*from sales LIMIT 3 offset 3;   -- last 3 values of the table
select*from sales order by sales_amount asc limit 3;

-- Group BY

select pr_id,sum(sales_amount) as total_sales from sales group by pr_id;
select pr_id,count(sales_amount) as total_sales from sales group by pr_id;
select pr_id,cust_name,sum(sales_amount) as total_sales from sales group by pr_id,cust_name;

-- Having clause


-- SUBQUARY

SELECT*from sales where sales_amount=(select(min(sales_amount)) from sales);
SELECT*from sales where product in 
(select pr_id from product where catogory='Electronics');


-- Joins
-- inner join

select p.pr_id,p.pname,s.cust_name,s.quantity from product as p
inner join sales as s on p.pr_id=s.pr_id;