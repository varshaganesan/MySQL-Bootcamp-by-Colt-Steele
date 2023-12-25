-- CRUD BASICS Exercise
-- Create a new database shirts_db
CREATE DATABASE shirts_db;
USE shirts_db;
SELECT database();

-- Create a new table shirts,  as instructed.
CREATE TABLE shirts
( shirt_id INT PRIMARY KEY AUTO_INCREMENT,
  article VARCHAR (50),
  color VARCHAR (50),
  shirt_size VARCHAR (10),
  last_worn INT );
SHOW TABLES; 
DESC shirts; 
  
  -- Iserting data into the table
  INSERT INTO shirts ( article , color , shirt_size , last_worn )
  VALUES('t-shirt', 'white', 'S', 10),
		('t-shirt', 'green', 'S', 200),
        ('polo shirt', 'black', 'M', 10),
        ('tank top', 'blue', 'S', 50),
		('t-shirt', 'pink', 'S', 0),
		('polo shirt', 'red', 'M', 5),
        ('tank top', 'white', 'S', 200),
        ('tank top', 'blue', 'M', 15);
        
-- Checking the table
SELECT * FROM shirts;

-- Q1: Add A New Shirt : Purple polo shirt, size M last worn 50 days ago
INSERT INTO shirts ( article , color , shirt_size , last_worn )
VALUES ( 'polo shirt' , 'purple' , 'M' , 50 );

-- Q2 : SELECT all shirts But Only Print Out Article and Color
SELECT article , color
FROM shirts;

-- Q3: SELECT all medium shirts Print Out Everything But shirt_id
SELECT article, color, shirt_size , last_worn
FROM shirts
WHERE shirt_size = 'M' ;

-- Q4 : Update all polo shirts Change their size to L
SELECT * FROM shirts WHERE article = 'polo shirt' ;
UPDATE shirts SET shirt_size = 'L'
WHERE article = 'polo shirt' ;

-- Q5 : Update the shirt last worn 15 days ago Change last_worn to 0
SELECT * FROM shirts WHERE last_worn = 15;
UPDATE shirts SET last_worn = 0
WHERE last_worn = 15 ;

-- Q6 : Update all white shirts Change size to 'XS' and color to 'off white'
SELECT * FROM shirts WHERE color = 'white';
UPDATE shirts SET shirt_size = 'XS' , color = 'off-white'
WHERE color = 'white';

-- Q7: Delete all old shirts Last worn 200 days ago
SELECT * FROM shirts WHERE last_worn = 200;
DELETE FROM shirts WHERE last_worn = 200;

-- Q8: Delete all tank tops Your tastes have changed...
SELECT * FROM shirts WHERE article = 'tank top' ;
DELETE FROM shirts WHERE article = 'tank top';

-- Q9: Delete all shirts Catastrophe!
DELETE FROM shirts ;
SELECT * FROM shirts;

-- Q10: Drop the entire shirts table
DROP TABLE shirts;