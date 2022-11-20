
SELECT OnlineOrderFlag, COUNT(SalesOrderID) AS 'number', AVG(TotalDue) AS 'avg', max(TotalDue) AS 'max'
FROM [AdventureWorks2012].[Sales].[SalesOrderHeader]
GROUP BY OnlineOrderFlag

-- Activity 1
SELECT
      JobTitle, COUNT(*) AS 'count'
  FROM [AdventureWorks2012].[HumanResources].[Employee]
  WHERE CurrentFlag =1
  GROUP BY JobTitle
-- Activity 2
SELECT
      JobTitle AS 'motherchud', COUNT(*) AS 'bangchud'
  FROM [AdventureWorks2012].[HumanResources].[Employee]
  WHERE CurrentFlag =1
  GROUP BY JobTitle
    HAVING COUNT(*) >1 