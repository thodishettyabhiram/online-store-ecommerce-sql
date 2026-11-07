
-- Project: Online Store E-Commerce Database
-- File: 09_stored_procedures.sql

USE online_store;

-- Q31. Procedure to insert a new customer
DROP PROCEDURE IF EXISTS insert_customer;

DELIMITER $$

CREATE PROCEDURE insert_customer(
    IN c_name VARCHAR(100),
    IN c_email VARCHAR(100),
    IN c_phone VARCHAR(15),
    IN c_city VARCHAR(255),
    IN c_registration_date DATE
)
BEGIN
    INSERT INTO Customers
    (name, email, phone, city, registration_date)
    VALUES
    (c_name, c_email, c_phone, c_city, c_registration_date);
END $$

DELIMITER ;

-- Example:
-- CALL insert_customer(
--     'Abhishek',
--     'abhishek@gmail.com',
--     '9876543210',
--     'Hyderabad',
--     '2026-11-06'
-- );


-- Q32. Procedure to update product price
DROP PROCEDURE IF EXISTS update_product_price;

DELIMITER $$

CREATE PROCEDURE update_product_price(
    IN p_id INT,
    IN new_price DECIMAL(10,2)
)
BEGIN
    UPDATE Products
    SET price = new_price
    WHERE product_id = p_id;
END $$

DELIMITER ;

-- Example:
-- CALL update_product_price(101, 60000);


-- Q33. Procedure to display all orders of a customer
DROP PROCEDURE IF EXISTS customer_orders;

DELIMITER $$

CREATE PROCEDURE customer_orders(
    IN c_id INT
)
BEGIN
    SELECT *
    FROM Orders
    WHERE customer_id = c_id;
END $$

DELIMITER ;

-- Example:
-- CALL customer_orders(1);


-- Q34. Procedure to calculate total sales
DROP PROCEDURE IF EXISTS total_sales;

DELIMITER $$

CREATE PROCEDURE total_sales()
BEGIN
    SELECT SUM(total_amount) AS total_sales_amount
    FROM Orders;
END $$

DELIMITER ;

-- Example:
-- CALL total_sales();


-- Q35. Procedure to list products in a category
DROP PROCEDURE IF EXISTS products_by_category;

DELIMITER $$

CREATE PROCEDURE products_by_category(
    IN c_id INT
)
BEGIN
    SELECT *
    FROM Products
    WHERE category_id = c_id;
END $$

DELIMITER ;

-- Example:
-- CALL products_by_category(1);
