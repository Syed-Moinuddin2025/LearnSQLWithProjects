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
