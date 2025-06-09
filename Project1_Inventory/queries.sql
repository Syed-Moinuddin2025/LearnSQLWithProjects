use InventoryDB
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

--💰 5. Total inventory value per category
SELECT 
    c.CategoryName ,
    SUM(P.Price * P.Quantity) AS TotalCategoryValue
FROM Categories C
JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY CategoryName;

--🧾 6. Show most expensive product in each category
SELECT 
    C.CategoryName,
    P.ProductName,
    P.Price
FROM Products P
JOIN Categories C ON P.CategoryID = C.CategoryID
WHERE P.Price = (
    SELECT MAX(P2.Price)
    FROM Products P2
    WHERE P2.CategoryID = P.CategoryID
);

--⏳ 7. Products sorted by Quantity (low to high)
SELECT ProductName, Quantity
FROM Products
ORDER BY Quantity ASC;

--📊 8. Group products by price range
SELECT 
    CASE 
        WHEN Price < 10 THEN 'Under $10'
        WHEN Price BETWEEN 10 AND 50 THEN '$10 - $50'
        ELSE 'Above $50'
    END AS PriceRange,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY 
    CASE 
        WHEN Price < 10 THEN 'Under $10'
        WHEN Price BETWEEN 10 AND 50 THEN '$10 - $50'
        ELSE 'Above $50'
    END;

