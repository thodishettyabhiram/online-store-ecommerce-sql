
# Online Store E-Commerce SQL Project

## Project Overview

This project focuses on designing and managing an Online Store E-Commerce Database using MySQL.

It manages customer information, product categories, products, orders, and order details. SQL queries are used to retrieve, update, analyze, and report business data.

## Database Schema

The project contains five relational tables:

1. **Customers** - Stores customer details such as name, email, phone, city, and registration date.
2. **Categories** - Stores product categories and their descriptions.
3. **Products** - Stores product details, prices, stock quantities, and category references.
4. **Orders** - Stores customer orders, order dates, total amounts, and order statuses.
5. **Order_Items** - Stores individual products, quantities, prices, and subtotals for each order.

## Database Relationships

- Customers → Orders: One-to-Many
- Categories → Products: One-to-Many
- Orders → Order_Items: One-to-Many
- Products → Order_Items: One-to-Many

## SQL Concepts Used

- Database and Table Creation
- Primary Keys and Foreign Keys
- INSERT, UPDATE, and DELETE
- SELECT, WHERE, and ORDER BY
- Aggregate Functions (COUNT, SUM, AVG, MAX)
- INNER JOIN and LEFT JOIN
- Subqueries
- GROUP BY and HAVING
- Views
- Stored Procedures
- Business Analysis Queries

## Project Structure

```text
online-store-ecommerce-sql/
│
├── README.md
│
└── sql/
    ├── 01_create_tables.sql
    ├── 02_insert_sample_data.sql
    ├── 03_basic_queries.sql
    ├── 04_joins.sql
    ├── 05_aggregate_functions.sql
    ├── 06_subqueries.sql
    ├── 07_updates_and_deletes.sql
    ├── 08_views.sql
    ├── 09_stored_procedures.sql
    └── 10_business_analysis.sql
```

## Business Analysis

The project includes SQL reports to identify:

1. Top 5 best-selling products.
2. Most frequent customers.
3. Monthly sales performance.
4. Category generating the highest revenue.
5. Customer spending patterns.

## Tools and Technologies

- MySQL
- MySQL Workbench
- SQL
- GitHub

## How to Run the Project

1. Clone or download this repository.
2. Open MySQL Workbench.
3. Execute `01_create_tables.sql` to create the database and tables.
4. Execute `02_insert_sample_data.sql` to insert sample records.
5. Execute the remaining SQL files to explore queries, joins, aggregations, subqueries, views, stored procedures, and business reports.

**Important:** Execute `07_updates_and_deletes.sql` only when you intend to modify or delete sample records. Reload the database data before repeating demonstrations that require the original records.

## Project Purpose

The objective of this project is to gain practical experience in relational database design, SQL query writing, data manipulation, and business data analysis using a real-world e-commerce scenario.
