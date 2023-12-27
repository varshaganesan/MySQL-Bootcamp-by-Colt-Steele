-- Logical Operators Exercise:
-- Q1: Select All Books Written Before 1980 (non inclusive)  
SELECT * FROM books
WHERE released_year < 1980;

-- Q2: Select All Books Written By Eggers Or Chabon
SELECT * From books
WHERE author_lname IN ( 'Eggers' , 'Chabon');

-- Q3: Select All Books Written By Lahiri, Published after 2000
SELECT * FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000 ;

-- Q4: Select All books with page counts between 100 and 200
SELECT * FROM books
WHERE pages BETWEEN 100 AND 200;

-- Q5: Select all books where author_lname  starts with a 'C' or an 'S''
SELECT * FROM books
WHERE author_lname LIKE 'c%' OR author_lname LIKE 's%' ;

-- Q6: If title contains 'stories'   -> Short Stories. Just Kids and A Heartbreaking Work  -> Memoir. Everything Else -> Novel
SELECT title, author_lname,
CASE
WHEN title LIKE '%stories%' THEN 'Short Stories'
WHEN title IN ('Just Kids' , 'A Heartbreaking Work') THEN 'Memoir'
ELSE 'Novel'
END AS type
FROM books;

-- Q7: Make This Happen: 
SELECT author_fname, author_lname, 
CASE
WHEN COUNT(title) > 1 THEN CONCAT( COUNT(title), ' ' , 'books')
ELSE '1 book'
END AS count
FROM books
GROUP BY author_fname , author_lname;