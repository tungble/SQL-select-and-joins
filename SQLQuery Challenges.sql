-- SQL Assignment 

USE AdventureWorks2012; /*Set current database*/

/*1, Display the total amount collected from the orders for each order date. */
/* Table: Sales.SalesOrderHeader*/
SELECT SUM(TotalDue), OrderDate
FROM Sales.SalesOrderHeader
GROUP BY OrderDate

/*2, Display the total amount collected from selling the products, FROM 700 to 800. Only list those products that have been sold more than 3000 units.*/
/* Table: Sales.SalesOrderDetail*/
SELECT SUM(LineTotal) AS TotalAmount, ProductID, SUM(OrderQty) AS Qty
FROM Sales.SalesOrderDetail
WHERE ProductID >= 700 AND ProductID <= 800
GROUP BY ProductID
HAVING SUM(OrderQty) > 3000
ORDER BY SUM(OrderQty) DESC

/*3, Write a query to display the sales person BusinessEntityID, last name and first name of ALL the sales persons and the name of the territory to which they belong*/
/* Tables: Sales.SalesPerson, Person.Person, Sales.SalesTerritory*/
SELECT SP.BusinessEntityID AS BID, PP.BusinessEntityID AS PID, PP.FirstName AS FirstName, PP.LastName AS LastName, ST.Name AS Region, ST.TerritoryID, SP.TerritoryID
FROM Sales.SalesTerritory AS ST, Sales.SalesPerson AS SP, Person.Person AS PP
WHERE SP.BusinessEntityID = PP.BusinessEntityID AND ST.TerritoryID = SP.TerritoryID


/*4,  Write a query to display the names of the customers that have the 'Vista' credit card.*/
/* Tables: Sales.CreditCard, Sales.PersonCreditCard, Person.Person*/
SELECT CC.CardType, PP.FirstName, PP.LastName
FROM Sales.CreditCard AS CC, Sales.PersonCreditCard AS PCC, Person.Person AS PP
WHERE CC.CreditCardID = PCC.CreditCardID AND PCC.BusinessEntityID = PP.BusinessEntityID
AND CC.CardType LIKE '%Vista'

/*5, Retrieve the number of customers for each type of credit card.*/
/* Tables: Sales.CreditCard, Sales.PersonCreditCard, Person.Person*/
SELECT CC.CardType, COUNT(DISTINCT(PCC.BusinessEntityID))
FROM Sales.CreditCard AS CC, Sales.PersonCreditCard AS PCC, Person.Person AS PP
WHERE CC.CreditCardID = PCC.CreditCardID AND PP.BusinessEntityID = PCC.BusinessEntityID
GROUP BY CC.CardType

/*6, Write a query to display ALL the product names along with their corresponding subcategory names.*/
/* Tables: Production.Product, Production.ProductSubcategory*/
SELECT P.Name AS P_Name, PS.Name AS PS_Name
FROM Production.Product AS P, Production.ProductSubcategory AS PS
WHERE P.ProductSubcategoryID = PS.ProductSubcategoryID 

/*7. List ALL the product names that do not belong to any subcategory.*/
-- left join, inner = null
SELECT P.Name AS P_name, PS.Name AS PS_Name
FROM Production.Product AS P lEFT JOIN Production.ProductSubcategory AS PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID 
WHERE PS.ProductSubcategoryID IS NULL 

/*8, Write a query to report the sales order ID of those orders where the total due is greater than the average of the total dues of all the orders. You need to use subquery. */
/* Table: Sales.SalesOrderHeader*/
SELECT SalesOrderID, SUM([TotalDue]) AS total_due
FROM Sales.SalesOrderHeader AS Header
GROUP BY SalesOrderID
HAVING SUM([TotalDue]) > (SELECT AVG([TotalDue]) FROM Sales.SalesOrderHeader)
