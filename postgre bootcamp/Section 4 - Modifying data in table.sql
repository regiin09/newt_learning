--##SECTION 4 modifying data in tables include- insert, update, returning, delete, upsert
-- Insert in a table

-- 1. Create table customers


CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	emai VARCHAR(150),
	age INT
);

-- see the table
SELECT * from customers;

-- Inserting single record in table

INSERT INTO customers (first_name,last_name,emai,age) VALUES ('Regiin','John','regii@gmail.com',22);

-- -- Inserting multiple single record in table

INSERT INTO customers(first_name,last_name,emai,age) VALUES
('rini','john','rini@gmail.com',27),
('amali','joanna','amali@gmail.com',45);


-- Insert data which has quotes (') when it is a quoate add additional qoute to it

INSERT INTO customers (first_name, last_name, emai, age) VALUES
	('Regiin''j','rithik''j','regiin@gmail.com',22);

--Using 'RETURNING' to get info on return rows
INSERT INTO customers (last_name) VALUES
	('Regiin''j') RETURNING *;
	
INSERT INTO customers (last_name) VALUES
	('Regiin''j') RETURNING last_name;

-- UPDATE DATA in table multiple column
UPDATE customers
SET emai='rinij@gmail.com', age = 26
WHERE customer_id = 2;

-- Updating a row and returning a updated 
UPDATE customers
SET first_name='Arul',last_name='j'
WHERE 
RETURNING *;

-- Updating all row by not giving where clause
UPDATE customers
SET age=10;

--Delete data from a table
DELETE FROM customers
where first_name = 'rini'
RETURNING *;
-- ethu delete agutho atha return pannuhtu

--to delete entire data  in a table

DELETE from customers;

--USING UPSERT 
--update+insert UPSERT
/*
Syntax
 INSERT INTO table_name(column_name)
 VALUES(value)
 ON CONFLICT target action;

Syntax for 'action'
	ON CONFLICT ku aprm

	DO NOTHING - it wont do anything if the row already exists
	DO UPDATE SET column_name = value  - will update in table

*/
CREATE TABLE t_tags(
	id SERIAL PRIMARY KEY, 
	tag text UNIQUE, -- UNIQUE will make the text in the column as unique
	update_date TIMESTAMP DEFAULT now() -- TIMPESTAMP will save year, month, date, hours, minute, second, now() will save curent sate and  time
	--DEFAULT will insert default values if the patricular column data is not given as input
);

SELECT * from t_tags;

INSERT INTO t_tags(tag)
VALUES ('tag1')
RETURNING *;
--"2025-02-21 14:20:42.399146" is for pen

INSERT INTO t_tags(tag)
VALUES('tag1')
ON CONFLICT (tag)
DO
	UPDATE SET
		tag=EXCLUDED.tag,
		update_date=now();

SELECT * from t_tags;
--"2025-02-21 14:32:47.438099" updated time

INSERT INTO t_tags(tag)
VALUES('tag1')
ON CONFLICT (tag)
DO
	UPDATE SET
		tag=EXCLUDED.tag||'2', -- to add something with value use ||
		update_date=now();
--"tag12" is updated now before it was as tag1