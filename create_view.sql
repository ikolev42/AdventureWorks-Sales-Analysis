CREATE VIEW vw_SalesSummary AS
SELECT
    soh.SalesOrderID,
    soh.OrderDate,
    soh.TotalDue,
    sod.ProductID,
    p.Name AS ProductName,
    sod.OrderQty,
    sod.LineTotal,
    c.CustomerID,
    per.FirstName + ' ' + per.LastName AS CustomerName,
    st.Name AS Territory
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Person.Person per ON c.PersonID = per.BusinessEntityID
JOIN Sales.SalesTerritory st ON soh.TerritoryID = st.TerritoryID
JOIN Production.Product p ON sod.ProductID = p.ProductID;
