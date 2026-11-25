.-- ============================================================
-- Sales practice 2 - MySQL Workbench (a bit harder)
-- Run: open the file, press the lightning bolt (Execute all).
-- It creates the database sales_practice2.
--
-- Tables : customers, products, salespeople, orders
-- Answer : data_issues (9 problems, Easy / Medium / Hard)
--
-- Rule: try to find the problems yourself BEFORE you SELECT
-- from data_issues. Work from Easy to Hard.
-- ============================================================

DROP DATABASE IF EXISTS sales_practice2;
CREATE DATABASE sales_practice2 CHARACTER SET utf8mb4;
USE sales_practice2;

-- NOTE: text columns that matter (names, city, status) use the
-- case-sensitive collation utf8mb4_bin, so 'Amman' and 'amman'
-- are different values, like in real dirty data.

CREATE TABLE customers (
  customer_id   INT,
  customer_name VARCHAR(60) COLLATE utf8mb4_bin,
  city          VARCHAR(30) COLLATE utf8mb4_bin,
  phone         VARCHAR(20),
  signup_date   DATE,
  segment       VARCHAR(20)
);

CREATE TABLE products (
  product_id   INT,
  product_name VARCHAR(40),
  category     VARCHAR(30),
  unit_price   VARCHAR(12)
);

CREATE TABLE salespeople (
  salesperson_id   INT,
  salesperson_name VARCHAR(40),
  region           VARCHAR(20)
);

CREATE TABLE orders (
  order_id       INT,
  order_date     VARCHAR(12),
  customer_id    INT,
  product_id     INT,
  salesperson_id INT,
  quantity       INT,
  discount_pct   INT,
  status         VARCHAR(20) COLLATE utf8mb4_bin
);

CREATE TABLE data_issues (
  issue_id      INT,
  level         VARCHAR(10),
  table_name    VARCHAR(30),
  column_name   VARCHAR(40),
  problem       VARCHAR(255),
  how_to_find   VARCHAR(255),
  rows_affected INT
);

INSERT INTO customers VALUES
  (1, 'Al Noor Trading', 'Beirut', '0747378288', '2024-01-02', 'Retail'),
  (2, 'Cedar Stores', 'Cairo', '0759612330', '2025-01-13', 'Corporate'),
  (3, 'Phoenix Group', 'AMMAN', '0797058715', '2024-03-20', 'Retail'),
  (4, 'Delta Office', 'Beirut', '0710728567', '2024-04-05', 'Retail'),
  (5, 'Orient Supplies', 'Riyadh', '0773133911', '2024-08-31', 'Corporate'),
  (6, 'Falcon Trading', 'Riyadh', '0735286457', '2024-07-16', 'Corporate'),
  (7, 'Zain Stores', ' Cairo', '0776401270', '2024-02-05', 'Retail'),
  (8, 'Horizon Group', 'Dubai', '0799589122', '2024-06-19', 'Corporate'),
  (9, 'Pearl Office', 'Dubai', '0794312126', '2024-03-22', 'Retail'),
  (10, 'Nile Supplies', 'Riyadh', '-', '2024-07-11', 'Retail'),
  (11, 'Atlas Trading', 'Cario', 'N/A', '2024-01-27', 'Corporate'),
  (12, 'Sahara Stores', 'Beirut', '', '2024-03-18', 'Corporate'),
  (13, 'Olive Group', 'Beirut', '0704287035', '2024-07-07', 'Corporate'),
  (14, 'Jasmine Office', 'Beirut', '0779742894', '2025-01-28', 'Retail'),
  (15, 'Palm Supplies', 'Cairo', '0762049539', '2024-05-11', 'Corporate'),
  (16, 'Amber Stores', 'Cairo', '0722216120', '2024-03-13', 'Retail'),
  (17, 'Coral Trading', 'beirut', 'N/A', '2024-11-14', 'Retail'),
  (18, 'Lotus Group', 'AMMAN', '', '2024-01-05', 'Corporate'),
  (19, 'Summit Office', 'Cario', '0771692349', '2025-01-16', 'Retail'),
  (20, 'Harbor Supplies', 'RIYADH', '-', '2024-02-20', 'Retail'),
  (21, 'phoenix group', 'Amman', '0797058715', '2024-04-19', 'Retail'),
  (22, 'HORIZON GROUP', 'Dubai', '0799589122', '2024-07-19', 'Corporate');

INSERT INTO products VALUES
  (1, 'Laptop', 'Electronics', '900.00'),
  (2, 'Mouse', 'Electronics', '25.00'),
  (3, 'Monitor', 'Electronics', '$300.00'),
  (4, 'Keyboard', 'Electronics', '70.00'),
  (5, 'Office Chair', 'Furniture', '180.00'),
  (6, 'Desk', 'Furniture', '420.00'),
  (7, 'Bookshelf', 'Furniture', '$130.00'),
  (8, 'Notebook Pack', 'Stationery', '15.00'),
  (9, 'Pen Box', 'Stationery', '$8.00'),
  (10, 'Printer Paper', 'Stationery', '22.00');

INSERT INTO salespeople VALUES
  (1, 'Omar Haddad', 'North'),
  (2, 'Lina Khoury', 'South'),
  (3, 'Samer Nasser', 'East'),
  (4, 'Rania Saleh', 'West'),
  (5, 'Tarek Mansour', 'North');

INSERT INTO orders VALUES
  (2001, '2025-01-03', 20, 3, 2, 1, 15, 'Completed'),
  (2002, '2025-01-05', 22, 10, 1, 0, 10, 'Cancelled'),
  (2003, '2025-01-09', 1, 10, 3, 10, 10, 'Completed'),
  (2004, '2025-01-11', 18, 8, 2, 1, 5, ' Completed'),
  (2005, '2025-01-20', 8, 5, 2, 3, 0, 'Completed'),
  (2006, '2025-01-21', 21, 5, 4, 5, 15, 'Cancelled'),
  (2007, '2025-01-27', 8, 6, 5, 2, 10, 'Completed'),
  (2008, '2025-01-28', 21, 2, 4, 9, 15, 'Returned'),
  (2009, '2025-02-03', 16, 6, 4, 2, 10, 'Completed'),
  (2010, '2025-02-05', 21, 3, 3, 2, 10, 'Completed'),
  (2011, '2025-02-09', 97, 9, 2, 4, 15, 'Completed'),
  (2012, '2025-02-09', 12, 5, 3, 1, 0, 'Completed'),
  (2013, '2025-02-11', 2, 10, 4, 5, 10, 'Completed'),
  (2014, '2025-02-12', 99, 7, 2, 6, 5, 'Completed'),
  (2015, '2025-02-14', 16, 6, 5, 1, 10, 'Completed'),
  (2016, '2025-02-17', 17, 2, 2, 6, 5, ' Completed'),
  (2017, '2025-02-18', 7, 1, 3, 3, 5, 'Completed'),
  (2018, '2025-02-19', 8, 9, 4, 2, 5, 'Cancelled'),
  (2019, '21/02/2025', 10, 7, 2, 2, 15, 'Completed'),
  (2020, '2025-02-24', 17, 1, 3, 3, 15, 'Completed'),
  (2021, '25/02/2025', 7, 3, 3, 1, 0, 'Cancelled'),
  (2022, '2025-02-28', 8, 9, 4, 1, 0, 'Completed'),
  (2023, '2025-03-01', 1, 8, 2, 10, 15, 'Completed'),
  (2024, '2025-03-03', 1, 9, 2, 2, 5, 'Completed'),
  (2025, '2025-03-06', 6, 7, 4, 4, 10, 'Completed'),
  (2026, '2025-03-09', 20, 1, 4, 3, 0, 'Completed'),
  (2027, '2025-03-09', 4, 10, 3, 4, 15, 'completed'),
  (2028, '2025-03-12', 22, 10, 4, 7, 10, ' Completed'),
  (2029, '2025-03-16', 11, 6, 4, 3, 5, 'Completed'),
  (2030, '2025-03-17', 2, 2, 3, 10, 0, ' Completed'),
  (2031, '2025-03-19', 8, 3, 2, 1, 10, 'Completed'),
  (2032, '2025-03-19', 11, 9, 4, 3, 10, 'Completed'),
  (2033, '2025-03-26', 10, 4, 1, 8, 0, 'Completed'),
  (2034, '2025-03-30', 16, 3, 2, 1, 5, 'Completed'),
  (2035, '2025-04-01', 18, 6, 5, 1, 0, 'returned'),
  (2036, '2025-04-05', 1, 6, 2, 1, 15, 'Completed'),
  (2037, '2025-04-09', 10, 10, 4, 9, 0, 'Completed'),
  (2038, '2025-04-10', 7, 8, 3, 1, 5, 'Completed'),
  (2039, '13/04/2025', 22, 4, 1, 1, 10, 'Completed'),
  (2040, '2025-04-13', 13, 6, 4, 1, 0, 'Completed'),
  (2041, '2025-04-14', 21, 10, 4, 3, 0, 'Returned'),
  (2042, '2025-04-19', 17, 2, 4, 4, 15, 'Cancelled'),
  (2043, '2025-04-21', 17, 1, 3, 1, 10, 'Completed'),
  (2044, '2025-04-22', 6, 1, 4, 3, 0, 'Completed'),
  (2045, '24/04/2025', 22, 1, 3, 3, 0, 'Completed'),
  (2046, '2025-04-25', 20, 2, 3, 2, 5, 'Completed'),
  (2047, '2025-04-26', 8, 6, 5, 2, 0, 'Completed'),
  (2048, '2025-05-08', 21, 8, 2, 1, 5, 'Returned'),
  (2049, '2025-05-09', 19, 1, 4, 3, 10, 'Completed'),
  (2050, '14/05/2025', 10, 10, 4, 8, 0, 'Returned'),
  (2051, '2025-05-14', 12, 1, 2, 1, 5, 'Completed'),
  (2052, '2025-05-14', 3, 1, 4, 2, 5, 'Cancelled'),
  (2053, '2025-05-17', 17, 6, 5, 2, 0, 'Completed'),
  (2054, '2025-05-17', 21, 2, 4, 2, 0, 'Completed'),
  (2055, '2025-05-18', 17, 7, 2, 4, 15, 'Completed'),
  (2056, '21/05/2025', 12, 7, 1, 6, 0, 'Completed'),
  (2057, '2025-05-22', 8, 4, 5, -2, 10, 'Cancelled'),
  (2058, '2025-05-26', 4, 4, 2, 7, 15, 'Completed'),
  (2059, '2025-05-29', 21, 1, 2, 3, 0, 'Completed'),
  (2060, '2025-06-02', 6, 6, 4, 1, 5, 'Completed'),
  (2061, '2025-06-05', 18, 10, 4, 8, 5, 'Completed'),
  (2062, '2025-06-07', 22, 5, 2, 7, 15, 'Completed'),
  (2063, '2025-06-14', 6, 1, 3, 2, 10, 'Completed'),
  (2064, '2025-06-16', 5, 5, 1, 1, 0, 'Completed'),
  (2065, '2025-06-19', 14, 10, 4, 8, 0, 'Completed'),
  (2066, '2025-06-19', 22, 8, 2, 1, 5, 'Completed'),
  (2067, '24/06/2025', 21, 8, 4, 9, 15, 'Completed'),
  (2068, '24/06/2025', 98, 5, 1, 1, 5, 'Completed'),
  (2069, '2025-06-25', 12, 7, 1, 10, 10, 'Completed'),
  (2070, '2025-06-28', 14, 1, 1, 3, 15, 'Completed'),
  (2071, '2025-06-29', 7, 9, 1, 2, 0, 'Completed'),
  (2072, '2025-07-03', 13, 3, 4, 2, 10, 'Completed'),
  (2073, '2025-07-05', 8, 10, 4, 8, 15, 'Completed'),
  (2074, '2025-07-05', 7, 1, 4, 3, 5, 'COMPLETED'),
  (2075, '2025-07-07', 22, 8, 1, 4, 15, 'Cancelled'),
  (2076, '2025-07-11', 21, 4, 2, -1, 10, 'Cancelled'),
  (2077, '13/07/2025', 15, 8, 5, 10, 0, 'Completed'),
  (2078, '2025-07-14', 20, 10, 3, 4, 10, 'Returned'),
  (2079, '2025-07-18', 15, 6, 1, 1, 10, 'COMPLETED'),
  (2080, '2025-07-19', 21, 10, 5, 10, 0, 'Returned'),
  (2007, '2025-01-27', 8, 6, 5, 2, 10, 'Completed'),
  (2018, '2025-02-19', 8, 9, 4, 2, 5, 'Cancelled'),
  (2001, '2025-01-03', 20, 3, 2, 1, 15, 'Completed');

INSERT INTO data_issues VALUES
  (1, 'Easy', 'orders', 'order_id (all columns)', 'Exact duplicate rows. The table has 83 rows but 3 of them are copies.', 'SELECT order_id, COUNT(*) FROM orders GROUP BY order_id HAVING COUNT(*) > 1;', 3),
  (2, 'Easy', 'orders', 'status', 'Status written in different ways (case and leading space). Should be Completed / Cancelled / Returned.', 'SELECT status, COUNT(*) FROM orders GROUP BY status;', 8),
  (3, 'Easy', 'orders', 'quantity', 'Quantity is zero or negative. Impossible for a sale (data entry error).', 'SELECT order_id, quantity FROM orders WHERE quantity <= 0;', 3),
  (4, 'Medium', 'customers', 'city', 'Same city written in different ways (case, leading space) and a misspelling (Cario instead of Cairo).', 'SELECT city, LENGTH(city), COUNT(*) FROM customers GROUP BY city;', 7),
  (5, 'Medium', 'customers', 'phone', 'Fake values instead of NULL: ''N/A'', ''-'' and empty text.', 'SELECT phone, COUNT(*) FROM customers GROUP BY phone ORDER BY COUNT(*) DESC;', 6),
  (6, 'Medium', 'products', 'unit_price', 'Price is stored as text and some values start with a $ sign.', 'SELECT product_name, unit_price FROM products WHERE unit_price LIKE ''$%'';', 3),
  (7, 'Hard', 'orders', 'order_date', 'Dates in two formats in the same text column: 2025-03-15 and 15/03/2025 (DD/MM/YYYY).', 'SELECT order_id, order_date FROM orders WHERE order_date LIKE ''%/%'';', 9),
  (8, 'Hard', 'orders', 'customer_id', 'Orders that belong to a customer who does not exist in customers (orphan rows).', 'SELECT o.order_id, o.customer_id FROM orders o LEFT JOIN customers c ON c.customer_id = o.customer_id WHERE c.customer_id IS NULL;', 3),
  (9, 'Hard', 'customers', 'customer_name', 'Same company twice with different customer_id (spelled with different case). 2 companies, 4 rows. Orders are split between the two ids.', 'SELECT LOWER(TRIM(customer_name)), COUNT(*) FROM customers GROUP BY LOWER(TRIM(customer_name)) HAVING COUNT(*) > 1;', 4);

-- Quick look:
-- SELECT * FROM customers;
-- SELECT * FROM products;
-- SELECT * FROM salespeople;
-- SELECT * FROM orders ;

-- -- ============================================================
-- -- CLEANING (we do it together, step by step)
-- -- Tip: never change the original tables. Create *_clean tables.
-- -- ============================================================
-- SELECT * FROM customers;
-- SELECT * FROM products;
-- SELECT * FROM salespeople;
-- SELECT * FROM orders ;
 
-- UPDATE customers 
-- set 
-- customer_name= CONCAT(upper(substring(trim(customer_name),1,1)),lower(substring(trim(customer_name),2))) ,
-- city=   CONCAT(upper(substring(trim(city),1,1)),lower(substring(trim(city),2))) ,
-- phone = case
-- when trim(phone) in ('','N/A','-') then NULL
-- else trim(phone)      #toput NULL in all gaps
-- end;
-- UPDATE customers SET city='cairo' where city = 'cario';
-- SELECT city FROM customers GROUP BY city ;




-- SELECT customer_id, signup_date,   # coud to know that data is rgiht
-- YEAR(signup_date) as y,month(signup_date) as m,day(signup_date) as d FROM customers;

-- #now we finish customer and then we go to order 

-- SELECT * FROM orders ;
-- UPDATE orders 
-- set 
-- status= CONCAT(upper(substring(trim(status),1,1)),lower(substring(trim(status),2))) ,
-- order_date = case 
-- when order_date like '%/%' then STR_TO_DATE(order_date, '%d/%m/%Y')
-- ELSE order_date
-- END;
--  DROP TABLE orders;  #(حدف الداتا بعد ما تعلها تحديث )
-- UPDATE orders SET quantity = null where quantity <=0; 
-- UPDATE products set unit_price = REPLACE(unit_price, '$','');
-- SELECT order_id , count(*) from orders
-- GROUP BY order_id 
-- HAVING count(*)>1;
-- CREATE TABLE order_clean as SELECT DISTINCT * from orders;
--  SELECT o.order_id,o.customer_id FROM order_clean o
-- LEFT JOIN customers c on c.customer_id =o.customer_id
-- WHERE c.customer_id is NULL ; 
-- DELETE FROM order_clean WHERE customer_id not in (select customer_id FROM customers );

-- #SELECT * FROM customers;
-- SELECT * FROM order_clean;
-- SELECT * FROM products;


 #اجابات 
--   select * from order_clean;
--   SELECT status FROM orders GROUP by status; 
--   select city,count(*) from customers GROUP BY city;
--   SELECT status,order_date FROM order_clean WHERE status = 'Completed'  ORDER BY status  desc  ;
--   SELECT status , count(*) FROM order_clean WHERE status = 'Completed' ;
--   SELECT product_name,unit_price FROM products  ORDER BY product_name  ASC LIMIT 5 ;
-- SELECT o.customer_id,  p.product_name,o.order_date FROM order_clean o
-- LEFT JOIN products p on o.customer_id=p.product_id ;
-- SELECT product_name , sum(unit_price) FROM products GROUP BY product_name;
-- SELECT c.customer_name , o.status, COUNT(o.status) FROM customers c 
-- LEFT JOIN order_clean o ON c.customer_id= o.customer_id 
-- GROUP BY c.customer_name , o.status;




