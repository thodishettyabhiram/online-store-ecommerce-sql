
-- Project: Online Store E-Commerce Database
-- File: 03_basic_queries.sql

USE online_store;

-- Q2. Display products with price greater than 1000
SELECT *
FROM Products
WHERE price > 1000;

-- Q3. Show all customers from Hyderabad
SELECT *
FROM Customers
WHERE city = 'Hyderabad';

-- Q4. List products belonging to Electronics category
SELECT *
FROM Products
WHERE category_id = (
    SELECT category_id
    FROM Categories
    WHERE category_name = 'Electronics'
);

-- Q5. Display products added after 2024
SELECT *
FROM Products
WHERE added_date >= '2025-01-01';
