SELECT count(*) as 'number of rows'
    FROM [AdventureWorks2012].[Production].[Product]

-- Select all from Sales Order Detail table 
SELECT * 
    FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
-- Count 
SELECT count(*)
    FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
-- Select top 1000
SELECT TOP(1000) *
    FROM AdventureWorks2012.Sales.SalesOrderDetail
-- Q4
SELECT TOP(100) 
        [SalesOrderId] as 'SalesOrder Id'
        ,[OrderQty] as 'Order Quantity'
        ,[UnitPrice] as 'Unit Price'
    FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
-- Q5
SELECT TOP(100) 
        [SalesOrderId] as 'SalesOrder Id'
        ,[OrderQty] as 'Order Quantity'
        ,[UnitPrice] as 'Unit Price'
    FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
    WHERE OrderQty > 40
-- Q6
SELECT 
        [Name],
        [ListPrice]
    FROM [AdventureWorks2012].[Production].[Product]
    WHERE name = 'Sport-100 Helmet, Blue'
-- Select price of products whose names begin w/ word “Sport”
SELECT 
        [Name]
    FROM [AdventureWorks2012].[Production].[Product]
    WHERE name LIKE 'Sport%'