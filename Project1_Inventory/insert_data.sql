-- Project 1: Mini Inventory Database

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

-- Insert Data into Customers
INSERT INTO customers VALUES
(1, 'Ali', 'UAE'),
(2, 'Zara', 'Qatar'),
(3, 'John', 'KSA');

-- Insert Data into Products
INSERT INTO products VALUES
(101, 'Laptop', 3000.00, 10),
(102, 'Mouse', 50.00, 100),
(103, 'Keyboard', 120.00, 60);

-- Insert Data into Orders
INSERT INTO orders VALUES
(1001, 1, 101, '2024-05-01', 1, 3000.00),
(1002, 2, 102, '2024-05-02', 2, 100.00),
(1003, 3, 103, '2024-05-03', 1, 120.00);
