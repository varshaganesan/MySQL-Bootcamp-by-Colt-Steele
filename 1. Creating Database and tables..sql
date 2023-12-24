-- Creating a database, table and deleting it
 CREATE DATABASE bakery;
 -- To select the created database
USE bakery;
-- To view all databses
SHOW DATABASES;
-- To check which databse we're using
SELECT DATABASE ();
-- To create a new table
CREATE TABLE pastries
(name VARCHAR (50),
quantity  INT); 
-- To see the created table
SHOW TABLES;
-- To see the table columns in detail
DESC pastries;
-- To delete a table
DROP TABLE pastries;
-- To check if the table is deleted
SHOW TABLES;