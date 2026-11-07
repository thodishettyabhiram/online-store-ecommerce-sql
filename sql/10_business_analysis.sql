
-- Project: Online Store E-Commerce Database
-- File: 10_business_analysis.sql

USE online_store;

-- Q1. Top 5 best-selling products
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
INNER JOIN Orders o
ON oi.order_id = o.order_id
WHERE o.status <> 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- Q2. Most frequent customers
SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.status <> 'Cancelled'
GROUP BY c.customer_id, c.name
ORDER BY total_orders DESC;


-- Q3. Monthly sales report
SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(total_amount) AS monthly_sales
FROM Orders
WHERE status <> 'Cancelled'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY sales_year, sales_month;


-- Q4. Category generating highest revenue
SELECT
    c.category_id,
    c.category_name,
    SUM(oi.subtotal) AS total_revenue
FROM Categories c
INNER JOIN Products p
ON c.category_id = p.category_id
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
INNER JOIN Orders o
ON oi.order_id = o.order_id
WHERE o.status <> 'Cancelled'
GROUP BY c.category_id, c.category_name
ORDER BY total_revenue DESC
LIMIT 1;


-- Q5. Customer spending analysis
SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spending,
    AVG(o.total_amount) AS average_order_value,
    MAX(o.total_amount) AS highest_order
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.status <> 'Cancelled'
GROUP BY c.customer_id, c.name
ORDER BY total_spending DESC;
