USE RetailStoreDB;
GO

SELECT * FROM Sales.SalesOrderDetail;

SELECT Top 10 ProductID, SUM(LineTotal) AS TotalTerjual
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID
HAVING SUM(LineTotal) > 50000
ORDER BY TotalTerjual DESC;