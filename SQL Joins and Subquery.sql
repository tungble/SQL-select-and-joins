-- Q1
SELECT [SalesOrderID]
      ,[SalesOrderDetailID]
      ,[OrderQty]
      ,[ProductID]
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  WHERE SalesOrderID = 43659
-- Q2
SELECT
        COUNT(SalesOrderDetailID) AS 'count',
        SUM(OrderQty) AS 'sumQty'
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  WHERE SalesOrderID = 43659
  GROUP BY SalesOrderID
  HAVING SUM(OrderQty) > 12
-- Q3a 
SELECT [SalesOrderID],
        SalesOrderDetailID,
        OrderQty
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
-- Q3b
SELECT
        SalesOrderID AS 'SalesOrderID',
        SUM(OrderQty) AS 'Total Order Qty'
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  GROUP BY SalesOrderID
-- Q3c
SELECT
        SalesOrderID AS 'SalesOrderID',
        SUM(OrderQty) AS 'Total Order Qty'
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  GROUP BY SalesOrderID
ORDER BY SUM(OrderQty) DESC
-- Q3d
SELECT
        SalesOrderID AS 'SalesOrderID',
        SUM(OrderQty) AS 'Total Order Qty',
        COUNT(SalesOrderDetailID) AS '# suborders'
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  GROUP BY SalesOrderID
ORDER BY COUNT(SalesOrderDetailID) DESC
-- Q3e
SELECT
        SalesOrderID AS 'SalesOrderID',
        SUM(OrderQty) AS 'Total Order Qty',
        COUNT(SalesOrderDetailID) AS '# suborders'
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  GROUP BY SalesOrderID
HAVING SUM(OrderQty) > 400
-- Q3f
SELECT
        SalesOrderID AS 'SalesOrderID',
        SUM(OrderQty) AS 'Total Order Qty',
        COUNT(SalesOrderDetailID) AS '# suborders'
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
  GROUP BY SalesOrderID
HAVING SUM(OrderQty) > 400
ORDER BY SUM(OrderQty)
