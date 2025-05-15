CREATE PROCEDURE usp_GetTopProducts @TopN INT
AS
BEGIN
    SELECT TOP (@TopN)
        ProductName,
        SUM(LineTotal) AS TotalRevenue
    FROM vw_SalesSummary
    GROUP BY ProductName
    ORDER BY TotalRevenue DESC;
END;

EXEC usp_GetTopProducts @TopN = 10;