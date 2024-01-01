CREATE DATABASE School;
USE School;

-- Relationships and Joins Exercise
-- Q1: WRITE THIS SCHEMA: STUDENTS : id ,first_name PAPERS: title, grade, student_id
SELECT DATABASE();
CREATE TABLE students (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL);

CREATE TABLE papers(
title VARCHAR(150) ,
grade INT ,
student_id INT ,
FOREIGN KEY (student_id) REFERENCES students (id));

DESC students;
DESC papers;

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT * FROM students;
SELECT * FROM papers;

-- Q2 : PRINT THIS: As shown in picture.
SELECT first_name , title , grade 
FROM students
INNER JOIN papers ON id = student_id
ORDER BY grade DESC;

-- Q3: PRINT THIS: As shown in picture.
SELECT first_name , title , grade 
FROM students
LEFT JOIN papers ON id = student_id;

-- Q4: PRINT THIS :  As shown in picture.
SELECT first_name , IFNULL (title, 'MISSING') , IFNULL (grade, 0)
FROM students
LEFT JOIN papers ON id = student_id;

-- Q5: Print this : Find the avg grade
SELECT first_name, IFNULL (AVG(grade), 0) AS average
FROM students
LEFT JOIN papers ON id = student_id
GROUP BY first_name
ORDER BY average DESC;

-- Q5 Print this : Passing grade or not
SELECT first_name, IFNULL (AVG(grade), 0) AS average , 
CASE WHEN AVG(grade) >= 75 THEN 'PASSING'
ELSE 'FAILING'
END AS passing_status
FROM students
LEFT JOIN papers ON id = student_id
GROUP BY first_name
ORDER BY average DESC;







