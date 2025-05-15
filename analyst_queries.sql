-- ======================================
-- 02_analysis_queries.sql
-- Analytical queries using AdventureWorks2022
-- ======================================
-- Total revenue by product
SELECT 
    p.Name AS Product,
    SUM(sod.LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalRevenue DESC;

-- Number of orders per customer
SELECT 
    c.CustomerID,
    COUNT(soh.SalesOrderID) AS OrdersCount
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY OrdersCount DESC;

-- Average order value by customer
SELECT 
    c.CustomerID,
    AVG(soh.TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY AvgOrderValue DESC;
