
-- Project: Online Store E-Commerce Database
-- File: 04_joins.sql

USE online_store;

-- Q6. Show customer name with their orders
SELECT c.name, o.*
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- Q7. Display product name with order quantity
SELECT p.product_name, oi.quantity
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id;

-- Q8. Show order details with customer information
SELECT o.*, c.*
FROM Orders o
INNER JOIN Customers c
ON o.customer_id = c.customer_id;

-- Q9. List products with category name
SELECT p.product_name, c.category_name
FROM Products p
INNER JOIN Categories c
ON p.category_id = c.category_id;

-- Q10. Show customers with products they purchased
SELECT DISTINCT c.customer_id, c.name, p.product_name
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
INNER JOIN Order_Items oi
ON o.order_id = oi.order_id
INNER JOIN Products p
ON oi.product_id = p.product_id;
