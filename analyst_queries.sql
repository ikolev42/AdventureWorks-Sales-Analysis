SELECT [ProductName], 
sum(linetotal) as TotalRavenue

  FROM [AdventureWorks2022].[dbo].[vw_SalesSummary]
 group by productname
 order by productname desc


 SELECT
    Territory,
    SUM(TotalDue) AS TotalSales
FROM vw_SalesSummary
GROUP BY Territory
ORDER BY TotalSales DESC;