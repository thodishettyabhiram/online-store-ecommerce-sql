
-- Project: Online Store E-Commerce Database
-- File: 06_subqueries.sql

USE online_store;

-- Q16. Find customers who never placed orders
SELECT *
FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);

-- Q17. Find products never ordered
SELECT *
FROM Products
WHERE product_id NOT IN (
    SELECT product_id
    FROM Order_Items
);

-- Q18. Show products with price greater than average price
SELECT *
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);

-- Q19. Find customers who spent more than average spending
SELECT c.customer_id, c.name,
       SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.total_amount) > (
    SELECT AVG(customer_spending)
    FROM (
        SELECT SUM(total_amount) AS customer_spending
        FROM Orders
        GROUP BY customer_id
    ) AS avg_spending
);

-- Q20. Show orders above average total amount
SELECT *
FROM Orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM Orders
);
