-- Q1
SELECT *
  FROM [AdventureWorks2012].[HumanResources].[Employee]
-- Q2
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
-- Q2a
SELECT 
        [BusinessEntityID] 
        ,[HireDate]
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
-- Q3a
SELECT
        [VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE VacationHours > 97
-- Q3b
SELECT
        [VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE VacationHours > 97 AND VacationHours < 99
-- Q3c
SELECT
        [VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE VacationHours > 97 AND MaritalStatus = 'M'
-- Q3d
SELECT
        [VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE VacationHours > 97 AND MaritalStatus != 'M'
-- Q3e
SELECT *
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE HireDate BETWEEN '2011-01-01' AND '2011-02-28'
-- Q3f is same as Q3e
-- Q3g
SELECT *
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE HireDate NOT BETWEEN '2011-01-01' AND '2011-02-28'
-- Q3h
SELECT * 
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE JobTitle ='Design Engineer' OR JobTitle = 'Tool Designer'
-- Q3i
SELECT * 
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE JobTitle ='Design Engineer' OR JobTitle = 'Tool Designer' OR JobTitle = 'Engineering Manager' OR JobTitle = 'Marketing Manager'
-- Q4
SELECT COUNT(*) AS c
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE JobTitle ='Design Engineer'
-- Q5 - Need to join BusinessEntityID & locate JobTitle
SELECT 
        EPH_table.BusinessEntityID AS EPHid,
        E_table.BusinessEntityID AS Eid,
        EPH_table.Rate AS Rate,
        E_table.JobTitle As JobTitle
    FROM [AdventureWorks2012].[HumanResources].[EmployeePayHistory] AS EPH_table
    JOIN [AdventureWorks2012].[HumanResources].[Employee] AS E_table
        ON E_table.BusinessEntityID = EPH_table.BusinessEntityID
    WHERE E_table.BusinessEntityID = 25 
-- Q6a
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE JobTitle LIKE '%chief%'
-- Q6b   
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE JobTitle LIKE 'chief%'
-- Q6c BETWEEN DATES
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE BIRTHDATE BETWEEN '1960-01-01' AND '1969-12-31'
-- Q6d Birthdate in March
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
    WHERE BIRTHDATE LIKE '%____-03-__%'
-- Q7a 
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
ORDER BY VacationHours Desc;
-- Q7b
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
ORDER BY BirthDate Desc;
-- Q7c
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
ORDER BY HireDate Desc;
-- Q7d
SELECT 
        [BusinessEntityID] 
        ,[JobTitle] 
        ,[BirthDate] 
        ,[MaritalStatus]
        ,[HireDate]
        ,[VacationHours]
    FROM [AdventureWorks2012].[HumanResources].[Employee]
ORDER BY JobTitle;
