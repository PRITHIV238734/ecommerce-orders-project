
-- ecommerce_queries.sql

-- 1. Get all customer names and their order total
SELECT c.Name, o.TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 2. Find most sold product
SELECT p.Name, SUM(oi.Quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC;

-- 3. Show revenue generated per month
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY Month;

-- 4. List customers who have spent more than 50,000
SELECT c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
HAVING TotalSpent > 50000;
