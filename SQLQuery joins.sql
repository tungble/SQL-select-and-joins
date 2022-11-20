-- Activity 3
SELECT P.ProductID, P.name, PI.Quantity, L.name 
  FROM Production.Product as P, Production.ProductInventory as PI, Production.Location as L
  WHERE P.ProductID = PI.ProductID AND L.LocationID = PI.LocationID

SELECT P.ProductID, P.name, PI.Quantity, L.LocationID, SUM(PI.Quantity)
  FROM Production.Product as P, Production.ProductInventory as PI, Production.Location as L
  WHERE P.ProductID = PI.ProductID AND L.LocationID = PI.LocationID

-- Activity 4 My Answer
SELECT PM.ProductModelID, P.ProductID
FROM Production.Product AS P, Production.ProductModel AS PM
WHERE PM.ProductModelID = P.ProductModelID AND P.ProductID IS NULL
-- Activity 4 Solution 
SELECT PM.ProductModelID, P.ProductID
  FROM Production.ProductModel AS PM LEFT OUTER JOIN Production.Product AS P ON P.ProductModelID = PM.ProductModelID
  WHERE P.ProductID IS NULL
  