-- Project 1: Mini Inventory Database

DROP DATABASE IF EXISTS InventoryDB;

-- Step 1: Create Database
CREATE DATABASE InventoryDB;
GO

-- Step 2: Use the database
USE InventoryDB;
GO

-- Step 3: Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    country NVARCHAR(50)
);

-- Step 4: Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(100),
    price DECIMAL(10,2),
    stock_quantity INT
);
-- Step 5: Create Orders Table (with foreign keys)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    product_id INT FOREIGN KEY REFERENCES products(product_id),
    order_date DATE,
    quantity INT,
    sales DECIMAL(10,2)
);
