-- Comparision Operators 

-- Retrieve all customers from the country Germany 

SELECT * 
FROM customers
WHERE country = 'Germany'

-- Retrieve all customers who are not from Germany 

SELECT * 
FROM customers
WHERE country != 'Germany'

-- Retrieve all customers with score greater than 500

SELECT *
FROM customers
WHERE score > 500

-- Retrieve all customers with score 500 or greater
SELECT *
FROM customers
WHERE score >= 500


-- Retrieve all customers with score less than 500

SELECT *
FROM customers
WHERE score < 500

-- Retrieve all customers with score 500 or less

SELECT *
FROM customers
WHERE score <= 500
ORDER BY score DESC

-- Logical Operators


-- AND

-- Retrieve all 