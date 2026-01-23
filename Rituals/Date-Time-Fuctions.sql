-- Part Extraction

SELECT 
    OrderID,
    DAY(OrderDate) Day,
    MONTH(OrderDate) Month,
    YEAR(OrderDate) Year,
    CONCAT_WS('-', DAY(OrderDate),MONTH(OrderDate),YEAR(OrderDate)) OverallDate,
    OrderDate,
    ShipDate,
    CreationTime
FROM Sales.Orders


-- SELECT 
--     FirstName,
--     LastName,
--     CONCAT(FirstName,'.mba','@npti.ac.in') MailId

-- FROM Sales.Customers 



-- DATEPART
USE SalesDB



SELECT 
    CreationTime,
    -- DATEPART examples
    DATEPART(HOUR , CreationTime) Hour_dp,
    DATEPART(QUARTER , CreationTime) Quarter_dp,
    -- DATENAME examples
    DATENAME(MONTH, CreationTime) Month_name,
    DATENAME(WEEKDAY, CreationTime) Weekday_name,
    -- DATETRUNC() examples
    DATETRUNC(MINUTE , CreationTime)
FROM Sales.Orders


SELECT 
    DATETRUNC(MONTH , CreationTime) Creation,
    Count(*) No_of_orders
FROM Sales.Orders
GROUP BY DATETRUNC(MONTH , CreationTime)




