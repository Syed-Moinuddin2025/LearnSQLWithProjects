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
