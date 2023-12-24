-- Exercise - Inserting data to a table. Question below:
-- id - number(automatically increments) and  primary key
-- last_name - text, mandatory
-- first_name - text, mandatory
-- middle_name - text, not mandatory
-- age - number mandatory
-- current_status - text, mandatory, defaults to 'employed'


-- Creating a database and table
CREATE DATABASE Workforce_management;
USE workforce_management;
CREATE TABLE employees 
(id_no INT PRIMARY KEY AUTO_INCREMENT,
 last_name VARCHAR (100) NOT NULL,
 first_name VARCHAR (100) NOT NULL,
 middle_name VARCHAR (100),
 age INT NOT NULL,
 current_status VARCHAR (100) NOT NULL DEFAULT 'employed');

-- Checking the created table
DESC employees;

-- Inserting data into the table
INSERT INTO employees (last_name , first_name , age)
VALUES ('Halpert' , 'JIM' , 34),
	   ('Beesly' , 'Pam' , 32),
       ('Scott' , 'Michael' , 46);
SELECT * FROM employees;
