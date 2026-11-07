
-- Project: Online Store E-Commerce Database
-- File: 05_aggregate_functions.sql

USE online_store;

-- Q11. Count total number of products
SELECT COUNT(*) AS total_products
FROM Products;

-- Q12. Find average product price
SELECT AVG(price) AS average_product_price
FROM Products;

-- Q13. Calculate total sales amount
SELECT SUM(total_amount) AS total_sales
FROM Orders;

-- Q14. Count total orders placed
SELECT COUNT(order_id) AS total_orders
FROM Orders;

-- Q15. Find highest priced product
SELECT MAX(price) AS highest_product_price
FROM Products;
