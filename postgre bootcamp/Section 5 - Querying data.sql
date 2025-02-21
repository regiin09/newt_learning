--Section  5 Querying Data
-- contans select, alias, expression, order by, null, distinct

SELECT * from movies;
SELECT * from actors;
-- SQL  from actors reds this first SELECT * second, 
-- SQL statemts are case - in sensitive

SELECT first_name from actors;


-- adding alias to column

SELECT actor_id  as id from actors;

SELECT first_name as NAME from actors;

-- if spac is required double quotes can be used

SELECT first_name as "FIRST NAME" from actors;

-- for multiple columns

SELECT first_name as "First NAme" , date_of_birth as "DoB" from actors;

-- instead of as "" can be used but not single quotes

SELECT first_name "First Name" from actors;

-- if SELECT first_name 'First Name' from actors; if sigle quotes is used it will be a error , when single quotes is used it cosider as column
SELECT first_name AS "FirstName" from actors;



-- Can contanetae values

SELECT first_name||' '||last_name "FULL NAME" from actors;


-- Expression without column name
SELECT 20 /10;

-- OREDER by for asc and desc

-- sort based on single column

SELECT * FROM movies 
ORDER BY release_date ASC;

-- without giving asc
SELECT * FROM movies 
ORDER BY release_date ; -- it will be also in ASC

--Descending
SELECT * from movies
ORDER BY release_date DESC;


-- Sort based on multiple columns

SELECT
	*
FROM movies
ORDER BY 
	movie_name ASC,
	release_date DESC;

-- ORDER with alias column name

SELECT movie_name "ASC movie names" from movies 
ORDER BY "ASC movie names" DESC; -- !!!!!!!!!!! Alias name can be used for order by

-- Ordering using expression

SELECT first_name AS "NAME", LENGTH(first_name) AS len 
FROM actors
ORDER BY len DESC;  -- I used length function to order, and used alias name for ordering

-- COlumn number can be used instead of column name

SELECT first_name,last_name 
FROM actors
ORDER BY 
	2 DESC; -- here 1, 2 xolumn anme are  not actual column number in table , they are no of columns from the select statement


--ORDER by null values


CREATE TABLE nums(
	num INT
);

INSERT INTO nums(num) 
VALUES (1),(2);
-- inserting NULL value
INSERT INTO nums(num) 
VALUES (NULL);

SELECT num FROM nums ORDER BY num DESC NULLS LAST; -- this pushes null to last

DROP TABLE nums;

-- DISTINCT 
SELECT DISTINCT movie_lang, director_id FROM movies ORDER by 1;

-- to get all distinct from a table

SELECT DISTINCT * FROM movies ORDER BY 1; 
