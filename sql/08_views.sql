
-- Project: Online Store E-Commerce Database
-- File: 08_views.sql

USE online_store;

-- Q26. Create a view to display customer orders
CREATE OR REPLACE VIEW customer_orders AS
SELECT c.customer_id, c.name, c.email,
       o.order_id, o.order_date, o.total_amount, o.status
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT * FROM customer_orders;

-- Q27. Create a view for product details with category
CREATE OR REPLACE VIEW product_category_details AS
SELECT p.product_id, p.product_name, p.price,
       p.stock_quantity, c.category_name
FROM Products p
INNER JOIN Categories c
ON p.category_id = c.category_id;

SELECT * FROM product_category_details;

-- Q28. Create a view showing order item details
CREATE OR REPLACE VIEW order_item_details AS
SELECT oi.order_item_id, oi.order_id,
       p.product_name, oi.quantity,
       oi.price, oi.subtotal
FROM Order_Items oi
INNER JOIN Products p
ON oi.product_id = p.product_id;

SELECT * FROM order_item_details;

-- Q29. Create a view to display total spending by each customer
CREATE OR REPLACE VIEW customer_total_spending AS
SELECT c.customer_id, c.name,
       SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

SELECT * FROM customer_total_spending;

-- Q30. Create a view showing best-selling products
CREATE OR REPLACE VIEW best_selling_products AS
SELECT p.product_id, p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;

SELECT *
FROM best_selling_products
ORDER BY total_quantity_sold DESC;
