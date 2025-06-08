--🔎 1. Show all products with category names (JOIN)
SELECT 
    P.ProductID,
    P.ProductName,
    P.Price,
    P.Quantity,
    C.CategoryName
FROM Products P
JOIN Categories C ON P.CategoryID = C.CategoryID;

--📉 2. List products with quantity less than 20 (low stock)
SELECT ProductName, Quantity
FROM Products
WHERE Quantity < 20;

--💲 3. Show total inventory value for each product (Price × Quantity)
SELECT 
ProductName,
Price,
Quantity,
(Price * Quantity) AS TotalValue
FROM Products

--🗃️ 4. Count how many products are in each category
SELECT 
    C.CategoryName,
    COUNT(P.ProductID) AS ProductCount
FROM Categories C
LEFT JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName;
