-- Single Row Functions 

--- String Functions

---- Manipulations

-- CONCAT


CREATE TABLE pp (
    id INT NOT NULL ,
    firstName VARCHAR(50),
    lastName VARCHAR (50),
    CONSTRAINT pk_pp PRIMARY KEY(id)
)

INSERT INTO pp 
VALUES
    (1 , 'Somesh' , 'Mohanty'),
    (2 , 'Shree' , 'Kanungo'),
    (3 , 'Seeddhartha' , 'Mohantee')

SELECT * FROM pp


SELECT 
    id,
    CONCAT(firstName ,' ',lastName) AS fullName
FROM pp 


SELECT 
    CONCAT(FirstName , ' ' , Country) AS name_country
 FROM Sales.Customers


SELECT 
    CONCAT_WS( ' ', FirstName , Country) AS name_country
 FROM Sales.Customers


SELECT 
    LastName ,
    LOWER(LastName) AS lower_name,
    UPPER(LastName) AS upper_name
FROM Sales.Customers


-- TRIM 

SELECT
    first_name,
    LEN(first_name) AS len_name
FROM customers
WHERE first_name != TRIM(first_name)


SELECT
    first_name,
    LEN(first_name) AS len_name,
    TRIM(first_name) AS trimmed_name,
    LEN(TRIM(first_name)) AS len_trimmed_name
FROM customers



SELECT 
    '123-456-7890' ,
    REPLACE('123-456-7890' , '-' , '') AS replaced_number

