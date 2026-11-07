
-- Project: Online Store E-Commerce Database
-- File: 07_updates_and_deletes.sql

USE online_store;

-- Q21. Update product price
UPDATE Products
SET price = 60000
WHERE product_id = 101;

-- Q22. Change customer email
UPDATE Customers
SET email = 'newabhi@gmail.com'
WHERE customer_id = 1;

-- Q23. Update product category
UPDATE Products
SET category_id = 2
WHERE product_id = 101;

-- Q24. Delete cancelled orders
-- First delete related order items because of the foreign key.
DELETE oi
FROM Order_Items oi
INNER JOIN Orders o
ON oi.order_id = o.order_id
WHERE o.status = 'Cancelled';

-- Now delete cancelled orders
DELETE FROM Orders
WHERE status = 'Cancelled';

-- Q25. Delete customers with no orders
DELETE c
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
