-- ============================================================
-- Sales practice - MySQL Workbench
-- How to run: open this file in Workbench, press the lightning
-- bolt (Execute all). It creates the database sales_practice.
-- Tables: customers, orders (practice) + data_issues (the answer key).
-- Try to find the problems yourself BEFORE you SELECT from data_issues.
-- ============================================================

DROP DATABASE IF EXISTS sales_practice;
CREATE DATABASE sales_practice CHARACTER SET utf8mb4;
USE sales_practice;

-- NOTE: city and status use a case-sensitive collation (utf8mb4_bin)
-- so 'Amman' and 'amman' are treated as different values (like real dirty data).

CREATE TABLE customers (
  customer_id   INT,
  customer_name VARCHAR(50),
  city          VARCHAR(30) COLLATE utf8mb4_bin,
  segment       VARCHAR(20)
);

CREATE TABLE orders (
  order_id     INT,
  order_date   DATE,
  customer_id  INT,
  product      VARCHAR(30),
  category     VARCHAR(30),
  unit_price   DECIMAL(10,2),
  quantity     INT,
  discount_pct INT,
  status       VARCHAR(20) COLLATE utf8mb4_bin
);

CREATE TABLE data_issues (
  issue_id     INT,
  table_name   VARCHAR(30),
  column_name  VARCHAR(40),
  problem      VARCHAR(255),
  how_to_find  VARCHAR(255),
  rows_affected INT
);

INSERT INTO customers VALUES
  (1, 'Al Noor Trading', 'Dubai', 'Retail'),
  (2, 'Cedar Stores', 'CAIRO', 'Retail'),
  (3, 'Phoenix Group', 'AMMAN', 'Retail'),
  (4, 'Delta Office', 'Dubai', 'Retail'),
  (5, 'Orient Supplies', 'riyadh', 'Retail'),
  (6, 'Falcon Trading', 'Amman', 'Retail'),
  (7, 'Zain Stores', 'Cairo', 'Corporate'),
  (8, 'Horizon Group', 'Amman', 'Retail'),
  (9, 'Pearl Office', 'amman', 'Corporate'),
  (10, 'Nile Supplies', ' Amman', 'Retail'),
  (11, 'Atlas Trading', 'Beirut', 'Retail'),
  (12, 'Sahara Stores', 'Riyadh', 'Corporate'),
  (13, 'Olive Group', 'Amman', 'Retail'),
  (14, 'Jasmine Office', 'Amman', 'Retail'),
  (15, 'Palm Supplies', 'Dubai', 'Corporate');

INSERT INTO orders VALUES
  (1001, '2025-01-06', 1, 'Notebook Pack', 'Stationery', 15, 2, 15, 'Completed'),
  (1002, '2025-01-08', 13, 'Monitor', 'Electronics', 300, 8, 5, 'Completed'),
  (1003, '2025-01-17', 8, 'Monitor', 'Electronics', 300, 4, NULL, 'Completed'),
  (1004, '2025-01-19', 2, 'Desk', 'Furniture', 420, 7, 0, 'Completed'),
  (1005, '2025-01-19', 4, 'Notebook Pack', 'Stationery', 15, 5, NULL, 'Completed'),
  (1006, '2025-01-22', 12, 'Mouse', 'Electronics', 25, 3, 0, 'Completed'),
  (1007, '2025-01-23', 13, 'Notebook Pack', 'Stationery', 15, 7, 10, 'Completed'),
  (1008, '2025-01-26', 9, 'Office Chair', 'Furniture', 180, 1, NULL, 'Cancelled'),
  (1009, '2025-01-27', 8, 'Notebook Pack', 'Stationery', 15, 7, 0, 'Completed'),
  (1010, '2025-01-27', 1, 'Desk', 'Furniture', 420, 3, 15, 'Completed '),
  (1011, '2025-01-27', 4, 'Office Chair', 'Furniture', 180, 4, 5, 'Completed'),
  (1012, '2025-01-30', 8, 'Laptop', 'Electronics', 900, 1, NULL, 'Completed'),
  (1013, '2025-02-03', 1, 'Notebook Pack', 'Stationery', 15, 6, 10, 'Completed'),
  (1014, '2025-02-05', 7, 'Mouse', 'Electronics', 25, 4, 0, 'Completed'),
  (1015, '2025-02-08', 8, 'Office Chair', 'Furniture', 180, 1, NULL, 'Completed'),
  (1016, '2025-02-08', 3, 'Mouse', 'Electronics', 25, 8, 15, 'Completed'),
  (1017, '2025-02-12', 6, 'Mouse', 'Electronics', 25, 6, NULL, 'Completed'),
  (1018, '2025-02-19', 13, 'Mouse', 'Electronics', 25, 7, NULL, 'Cancelled'),
  (1019, '2025-02-21', 9, 'Office Chair', 'Furniture', 180, 6, NULL, 'Completed'),
  (1020, '2025-02-21', 8, 'Mouse', 'Electronics', 25, 7, NULL, 'Completed'),
  (1021, '2025-02-23', 8, 'Mouse', 'Electronics', 25, 2, 5, 'Completed'),
  (1022, '2025-03-05', 7, 'Office Chair', 'Furniture', 180, 8, 0, 'Completed'),
  (1023, '2025-03-08', 9, 'Mouse', 'Electronics', 25, 8, 0, 'Completed'),
  (1024, '2025-03-09', 5, 'Laptop', 'Electronics', 900, 1, 10, 'completed'),
  (1025, '2025-03-09', 8, 'Notebook Pack', 'Stationery', 15, 3, 15, 'Completed'),
  (1026, '2025-03-11', 8, 'Notebook Pack', 'Stationery', 15, 2, 0, 'Completed'),
  (1027, '2025-03-16', 9, 'Mouse', 'Electronics', 25, 6, 5, 'Completed'),
  (1028, '2025-03-21', 11, 'Desk', 'Furniture', 420, 8, 5, 'Completed'),
  (1029, '2025-03-21', 2, 'Mouse', 'Electronics', 25, 2, NULL, 'Completed'),
  (1030, '2025-04-04', 10, 'Laptop', 'Electronics', 900, 1, NULL, 'Completed'),
  (1031, '2025-04-07', 3, 'Notebook Pack', 'Stationery', 15, 5, 5, 'Completed'),
  (1032, '2025-04-08', 4, 'Mouse', 'Electronics', 25, 2, 0, 'Completed'),
  (1033, '2025-04-11', 8, 'Monitor', 'Electronics', 300, 2, NULL, 'Completed'),
  (1034, '2025-04-13', 9, 'Monitor', 'Electronics', 300, 3, NULL, 'Completed'),
  (1035, '2025-05-02', 2, 'Laptop', 'Electronics', 900, 2, 10, 'Completed'),
  (1036, '2025-05-02', 11, 'Monitor', 'Electronics', 300, 3, 15, 'Completed'),
  (1037, '2025-05-07', 6, 'Notebook Pack', 'Stationery', 15, 8, 5, 'Completed'),
  (1038, '2025-05-08', 11, 'Desk', 'Furniture', 420, 7, NULL, 'Completed'),
  (1039, '2025-05-08', 10, 'Office Chair', 'Furniture', 180, 2, NULL, 'Completed'),
  (1040, '2025-05-11', 1, 'Office Chair', 'Furniture', 180, 3, 15, 'Completed'),
  (1041, '2025-05-11', 9, 'Office Chair', 'Furniture', 180, 4, NULL, 'Completed'),
  (1042, '2025-05-13', 7, 'Desk', 'Furniture', 420, 3, 15, ' Completed'),
  (1043, '2025-05-16', 6, 'Mouse', 'Electronics', 25, 1, NULL, 'COMPLETED'),
  (1044, '2025-05-21', 12, 'Laptop', 'Electronics', 900, 3, 0, 'Completed'),
  (1045, '2025-05-21', 5, 'Notebook Pack', 'Stationery', 15, 7, 5, 'Completed'),
  (1046, '2025-05-23', 10, 'Monitor', 'Electronics', 300, 6, NULL, 'COMPLETED'),
  (1047, '2025-05-23', 1, 'Monitor', 'Electronics', 300, 8, NULL, 'Completed'),
  (1048, '2025-05-24', 1, 'Mouse', 'Electronics', 25, 4, 5, 'Completed'),
  (1049, '2025-05-30', 8, 'Monitor', 'Electronics', 300, 5, 0, 'Completed'),
  (1050, '2025-06-01', 8, 'Notebook Pack', 'Stationery', 15, 3, 15, 'CANCELLED'),
  (1051, '2025-06-04', 6, 'Office Chair', 'Furniture', 180, 6, 5, 'Completed'),
  (1052, '2025-06-06', 10, 'Monitor', 'Electronics', 300, 3, NULL, 'Cancelled'),
  (1053, '2025-06-08', 11, 'Notebook Pack', 'Stationery', 15, 1, 10, 'Cancelled'),
  (1054, '2025-06-09', 10, 'Laptop', 'Electronics', 900, 2, NULL, 'Completed'),
  (1055, '2025-06-14', 2, 'Notebook Pack', 'Stationery', 15, 5, 15, 'Completed'),
  (1056, '2025-06-14', 2, 'Notebook Pack', 'Stationery', 15, 2, 10, 'Completed'),
  (1057, '2025-06-18', 4, 'Laptop', 'Electronics', 900, 2, NULL, 'Completed'),
  (1058, '2025-06-21', 6, 'Laptop', 'Electronics', 900, 2, 5, 'Completed'),
  (1059, '2025-06-24', 13, 'Desk', 'Furniture', 420, 7, 10, 'Completed'),
  (1060, '2025-06-28', 13, 'Mouse', 'Electronics', 25, 2, 15, 'Completed'),
  (1026, '2025-03-11', 8, 'Notebook Pack', 'Stationery', 15, 2, 0, 'Completed'),
  (1057, '2025-06-18', 4, 'Laptop', 'Electronics', 900, 2, NULL, 'Completed'),
  (1032, '2025-04-08', 4, 'Mouse', 'Electronics', 25, 2, 0, 'Completed');

INSERT INTO data_issues VALUES
  (1, 'orders', 'order_id (all columns)', 'Exact duplicate rows: 3 orders appear twice. Table has 63 rows but only 60 real orders.', 'SELECT order_id, COUNT(*) FROM orders GROUP BY order_id HAVING COUNT(*) > 1;', 3),
  (2, 'customers', 'city', 'Same city written in different ways (case and extra spaces). 5 of 15 rows are dirty.', 'SELECT city, LENGTH(city), COUNT(*) FROM customers GROUP BY city;', 5),
  (3, 'orders', 'discount_pct', 'Missing discount (NULL). Should be treated as 0.', 'SELECT COUNT(*) FROM orders WHERE discount_pct IS NULL;', 23),
  (4, 'orders', 'status', 'Status written in different ways (case and extra spaces), e.g. ''completed '' or ''RETURNED''.', 'SELECT status, LENGTH(status), COUNT(*) FROM orders GROUP BY status;', 6);

-- Quick check:
SELECT * FROM customers;
SELECT * FROM orders ;
SELECT * FROM data_issues;







#YOU CAN SEE NOW THE CODESVTO CLEAN THIS FIRST DATEBASE
SELECT name,substring(name,1,2) as first_tow from students ;
SELECT CONCAT(name," From ",city) as nwe_name FROM students ;
SELECT COUNT(distinct city) from students ;
-- SELECT *, EXTRACT(year  from (your data )) as( any name you want ) from ( your tables )
-- if ypu want top filter anything we do this way eavery time 
SELECT *
FROM students       #you must remember ( in and between )
WHERE city= "homs" ;  #this the way
SELECT *
from students
WHERE age BETWEEN 20 and 25 ; # you can use ( >or <)
SELECT *
FROM students
WHERE name in ("omar", "lina" ) ;
SELECT *
FROM students
WHERE name like "%a%";    # (%) if you don't remember name or any thing and you must know (%F)(F%)(%F%)
SELECT name ,sum(age)  #(هون معتم هزا بدك تشتغل قسمين سوا سعني مثلا اسم لمنتج والسعر ) ( BETWEEN 1 hour to 1:11)
FROM students
GROUP BY name ;
SELECT name ,count(age)
FROM students
WHERE age BETWEEN 20 and 25
GROUP BY name ;
# YOU MUST KNOW ABIYT ( JOIN AND LEFTY JOIN ) YOU NEED TOW TABLES 

UPDATE customers 
SET
city = CONCAT(upper(substring(trim(city),1,1)),lower(substring(trim(city),2)));
SELECT city FROM customers ;
UPDATE orders 
SET
customer_id = TRIM(customer_id ) ,
status =  CONCAT(upper(substring(trim(status),1,1)),lower(substring(trim(status),2))),  
discount_pct = COALESCE(discount_pct,0);



SELECT *
FROM orders;
-- SELECT order_id, discount_pct, CONCAT('[', status, ']') AS status
-- FROM orders
-- WHERE CAST(status AS BINARY) NOT IN ('Completed','Cancelled','Returned');
select count(*) from orders ;
select order_id,count(*) from orders GROUP by order_id HAVING COUNT(*)>1 ;
SELECT city , LENGTH(city),count(*) FROM customers GROUP BY city ;

CREATE TABLE orders_clean as SELECT distinct * FROM orders ;
SELECT DISTINCT * FROM orders;


