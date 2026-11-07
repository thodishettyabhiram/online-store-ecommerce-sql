
-- Project: Online Store E-Commerce Database
-- File: 02_insert_sample_data.sql

USE online_store;

-- 1. Insert Customers
INSERT INTO Customers VALUES
(1, 'Abhi', 'abhi@gmail.com', '9876543210', 'Hyderabad', '2025-01-10'),
(2, 'Rahul', 'rahul@gmail.com', '9876543211', 'Hyderabad', '2025-02-15'),
(3, 'Priya', 'priya@gmail.com', '9876543212', 'Mumbai', '2025-03-20'),
(4, 'Kiran', 'kiran@gmail.com', '9876543213', 'Bangalore', '2025-04-05'),
(5, 'Sneha', 'sneha@gmail.com', '9876543214', 'Hyderabad', '2025-05-12'),
(6, 'Arjun', 'arjun@gmail.com', '9876543215', 'Chennai', '2025-06-18'),
(7, 'Divya', 'divya@gmail.com', '9876543216', 'Mumbai', '2025-07-22'),
(8, 'Vikram', 'vikram@gmail.com', '9876543217', 'Delhi', '2025-08-10'),
(9, 'Ananya', 'ananya@gmail.com', '9876543218', 'Hyderabad', '2025-09-15'),
(10, 'Rohit', 'rohit@gmail.com', '9876543219', 'Pune', '2025-10-20'),
(11, 'Manoj', 'manoj@gmail.com', '9876543220', 'Chennai', '2025-11-05'),
(12, 'Pooja', 'pooja@gmail.com', '9876543221', 'Bangalore', '2025-12-12');

-- 2. Insert Categories
INSERT INTO Categories VALUES
(1, 'Electronics', 'Electronic gadgets and devices'),
(2, 'Accessories', 'Computer and mobile accessories'),
(3, 'Clothing', 'Men and women clothing'),
(4, 'Home Appliances', 'Appliances for home'),
(5, 'Books', 'Educational and general books');

-- 3. Insert Products
INSERT INTO Products VALUES
(101, 'Laptop', 55000, 10, 1, '2025-01-15'),
(102, 'Smartphone', 25000, 20, 1, '2025-02-10'),
(103, 'Headphones', 1500, 30, 1, '2025-03-12'),
(104, 'Smart Watch', 3500, 15, 1, '2025-04-20'),
(105, 'Mouse', 500, 50, 2, '2025-05-15'),
(106, 'Keyboard', 1200, 25, 2, '2025-06-18'),
(107, 'USB Cable', 250, 100, 2, '2025-07-10'),
(108, 'T-Shirt', 799, 40, 3, '2025-08-05'),
(109, 'Jeans', 1800, 20, 3, '2025-09-12'),
(110, 'Microwave', 12000, 8, 4, '2025-10-15'),
(111, 'Mixer Grinder', 4500, 12, 4, '2025-11-20'),
(112, 'SQL Book', 650, 35, 5, '2025-12-10'),
(113, 'Python Book', 850, 25, 5, '2026-01-15'),
(114, 'Gaming Monitor', 18000, 10, 1, '2026-02-10'),
(115, 'Bluetooth Speaker', 2200, 18, 1, '2026-03-05');

-- 4. Insert Orders
INSERT INTO Orders VALUES
(1001, 1, '2025-01-20', 55500, 'Delivered'),
(1002, 2, '2025-02-15', 26500, 'Delivered'),
(1003, 1, '2025-03-10', 4500, 'Delivered'),
(1004, 3, '2025-04-05', 1200, 'Delivered'),
(1005, 4, '2025-05-12', 73000, 'Delivered'),
(1006, 2, '2025-06-18', 1700, 'Shipped'),
(1007, 5, '2025-07-20', 2599, 'Delivered'),
(1008, 6, '2025-08-15', 1800, 'Cancelled'),
(1009, 3, '2025-09-10', 12000, 'Delivered'),
(1010, 7, '2025-10-05', 4500, 'Delivered'),
(1011, 1, '2025-11-12', 25000, 'Delivered'),
(1012, 8, '2025-12-20', 850, 'Pending'),
(1013, 5, '2026-01-15', 18000, 'Delivered'),
(1014, 9, '2026-02-10', 55000, 'Shipped'),
(1015, 2, '2026-03-05', 2200, 'Delivered');

-- 5. Insert Order Items
INSERT INTO Order_Items VALUES
(1, 1001, 101, 1, 55000, 55000),
(2, 1001, 105, 1, 500, 500),
(3, 1002, 102, 1, 25000, 25000),
(4, 1002, 103, 1, 1500, 1500),
(5, 1003, 103, 3, 1500, 4500),
(6, 1004, 106, 1, 1200, 1200),
(7, 1005, 101, 1, 55000, 55000),
(8, 1005, 104, 1, 3500, 3500),
(9, 1005, 114, 1, 14500, 14500),
(10, 1006, 105, 1, 500, 500),
(11, 1006, 106, 1, 1200, 1200),
(12, 1007, 108, 1, 799, 799),
(13, 1007, 109, 1, 1800, 1800),
(14, 1008, 103, 1, 1500, 1500),
(15, 1008, 107, 1, 300, 300),
(16, 1009, 110, 1, 12000, 12000),
(17, 1010, 111, 1, 4500, 4500),
(18, 1011, 102, 1, 25000, 25000),
(19, 1012, 113, 1, 850, 850),
(20, 1013, 114, 1, 18000, 18000),
(21, 1014, 101, 1, 55000, 55000),
(22, 1015, 115, 1, 2200, 2200);
