create database joins;
use joins;

show databases;
SHOW TABLES;
SELECT*FROM SALES_DATASET;
select*from product_dataset;
select*from course_batch_dataset;

-- inner join
SELECT sd.SaleID, sd.productID
FROM product_dataset AS pd
INNER JOIN SALES_DATASET AS sd
ON pd.ProductID = sd.ProductID;

select*from product_dataset as pd
inner join SALES_DATASET as sd;

-- left join

create database leftjoin;
use leftjoin;

CREATE TABLE product_dataset (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
INSERT INTO product_dataset
(ProductID, ProductName, Category, Price)
VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Mouse', 'Electronics', 800),
(103, 'Keyboard', 'Electronics', 1500),
(104, 'Chair', 'Furniture', 3000),
(105, 'Table', 'Furniture', 6000);
CREATE TABLE SALES_DATASET (
    SalesID VARCHAR(10) PRIMARY KEY,
    ProductID INT,
    Quantity INT
);
INSERT INTO SALES_DATASET
(SalesID, ProductID, Quantity)
VALUES
('S1', 101, 2),
('S2', 102, 5),
('S3', 104, 3);

select*from sales_dataset;
SELECT * FROM product_dataset;

select pd.productID,pd.ProductName,sd.SalesID
from product_dataset as pd
left join SALES_DATASET as sd
on sd.productID =pd.productID;