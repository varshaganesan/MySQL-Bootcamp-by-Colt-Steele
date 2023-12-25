-- String Function Exercise
-- Q1 : Reverse and Uppercase the following sentence : "Why does my cat look at me with such hatred?"
SELECT REVERSE ( UPPER ("Why does my cat look at me with such hatred?"));

-- Q2: Replace spaces in titles with '->'. eg : The->Namesake
SELECT REPLACE (title , ' ' , '->') AS title
FROM books;

-- Q3: Print Out author's last name in both correct and reverse order and alias the tables as forwards and backwards.
SELECT author_lname AS forwards , REVERSE (author_lname) AS backwards
FROM books;

-- Q4: Author's full name in caps.
SELECT UPPER(CONCAT(author_fname , ' ' , author_lname)) AS 'full name in caps'
FROM books;

-- Q5: Make this happen: title + was released in + released_year
SELECT CONCAT_WS ( ' was released in ' , title , released_year ) AS blurb
FROM books;

-- Q6: Print book titles and the length of each title
SELECT title , cHAR_LENGTH(title) AS character_count
FROM books;

-- Q7: Make a short title of 10 characters , author name as eg: Gaiman,Neil and quantity as No.+ in stock.alter
SELECT 
CONCAT (SUBSTRING(title, 1, 10) , '...') AS 'short title', 
CONCAT_WS ( ',' , author_lname , author_fname ) AS author , 
CONCAT (stock_quantity , " in stock") AS quantity
FROM books;
