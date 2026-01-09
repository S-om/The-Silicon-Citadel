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

-- Retrieve all customers who are from USA and have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' AND score>500


-- OR

-- Retrieve all customers who are either from USA or have a score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500


-- NOT 

-- Retrieve all customers with a score NOT less than 500

SELECT *
FROM customers
WHERE NOT score < 500



-- Range Operator 

-- Between 

-- Retrieve all customers whose score falls in the range between 100 and 500

SELECT * 
FROM customers
WHERE score  BETWEEN 100 AND 500

-- or 

SELECT * 
FROM customers
WHERE score >= 100 AND score <=500

-- Membership Operator 

-- IN 

-- Retrieve all customers from either Germany or USA

SELECT *
FROM customers
WHERE country IN ('Germany' , 'USA')

-- Search Operator 

-- LIKE

-- Find all customers whose name starts with a 'M'


SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- Find all customers whose first name ends with a 'n'

SELECT *
FROM customers
WHERE first_name LIKE '%n'

-- Find all customers whose first name contains an 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

-- Find all customers whose first name contains an 'r' in the third postion

SELECT *
FROM customers
WHERE first_name LIKE '__r%'