CREATE NONCLUSTERED INDEX idx_ProductID
ON Sales.SalesOrderDetail(ProductID);

CREATE NONCLUSTERED INDEX idx_CustomerID
ON Sales.SalesOrderHeader(CustomerID);

SET STATISTICS IO ON;
SET STATISTICS TIME ON;

SELECT
    ProductID,
    COUNT(*) AS OrdersCount,
    SUM(LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail
WHERE ProductID = 776
GROUP BY ProductID;

SELECT
    soh.CustomerID,
    COUNT(soh.SalesOrderID) AS OrderCount,
    SUM(soh.TotalDue) AS TotalSpent
FROM Sales.SalesOrderHeader soh
WHERE soh.CustomerID = 11000
GROUP BY soh.CustomerID;

SET STATISTICS IO OFF;
SET STATISTICS TIME OFF;

-- DROP INDEX Sales.SalesOrderDetail.idx_ProductID;
-- DROP INDEX Sales.SalesOrderHeader.idx_CustomerID;
