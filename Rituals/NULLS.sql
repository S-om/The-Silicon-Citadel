
USE SalesDB
-- NULL
SELECT 
    ISNULL(ShipAddress , 'unknown') ShipAddress
FROM Sales.Orders

SELECT 
    ISNULL(ShipAddress , BillAddress) ShipAddress
FROM Sales.Orders

-- COALESCE

SELECT 
    COALESCE(ShipAddress , BillAddress, 'unknown')
FROM Sales.Orders



-- Find the average scores for the customers

SELECT 
    CustomerID,
    Score,
    AVG(Score)  OVER () Average -- bad way to do it ; donot get accurate averages
FROM Sales.Customers


SELECT 
    CustomerID, 
    Score,
    AVG(COALESCE(Score , 0)) OVER () AvgScores -- correct way to do it to get accurate averages
FROM Sales.Customers



SELECT
    'A' + 'B'


-- Display the full name of customers in a single field by merging their first and last names 
-- and add 10 bonus points to each customers score

SELECT 
    CustomerID,
    FirstName , 
    LastName,
    FirstName + ' ' +  COALESCE(LastName , ' ') FullName,
    CONCAT_WS( ' ' , FirstName , LastName) FullName_using_concatws,
    Score , 
    COALESCE(Score , 0)  + 10 ScorewithBonus
FROM Sales.Customers



CREATE TABLE Null_Join(
    
    Year int NOT NULL,
    Type VARCHAR(10) ,
    Orders int 

)

CREATE TABLE Null_Join2(
    
    Year int NOT NULL,
    Type VARCHAR(10) ,
    Sales int 

)


INSERT INTO Null_Join2
VALUES
    (2024 , 'a' , 100 ),  
    (2024 ,NULL , 200),
    (2025 ,'b' , 300),
    (2025 ,NULL , 200)




SELECT 
    a.Year ,a.Type, a.Orders, b.Sales
FROM Null_Join a
JOIN Null_Join2 b
ON a.Year = b.Year
AND ISNULL(a.Type , '') = ISNULL(b.Type , '')



-- Sorting Data

-- Sort the customers from the lowest to highest scores , 
-- with nulls appearing last 

--Lazy Method [Reason is that we are attaching a static value]
SELECT 
    CustomerID,
    Score
FROM Sales.Customers
ORDER BY COALESCE(Score , 999999) ASC

-- Professional Way [Reason is that instead of a static value we are using logic]
SELECT 
    CustomerID,
    Score
FROM Sales.Customers
ORDER BY 
    CASE WHEN Score IS NULL THEN 1 ELSE 0 END ,
    Score

-- NULLIF
-- Find the sales price for each order by dividing sales by quantity 

SELECT 
    OrderID , Sales , Quantity, Sales/NULLIF(Quantity , 0) Price
FROM Sales.Orders

-- IS NULL & IS NOT NULL

-- Identify the customers who have no scores 

SELECT *
FROM Sales.Customers
WHERE Score IS NULL


SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL


-- List all details for customers who have not placed any orders 

SELECT c.* , o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL



WITH Orders AS(
    SELECT 1 Id, 'A' Category UNION
    SELECT 2 , NULL UNION
    SELECT 3 , '' UNION 
    SELECT 4 , ' ' 
)
SELECT 
    *,
    TRIM(Category) Policy1,
    NULLIF(TRIM(Category) , '') Policy2,
    COALESCE(NULLIF(Category,'') , 'Unknown')
    
FROM Orders