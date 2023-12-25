-- Refining Selections Exercise
-- Q1: Select Titles  That contain 'stories
SELECT title
FROM books
WHERE title LIKE '%stories%';

-- Q2: Find The Longest Book. Print Out the Title and Page Count
SELECT title , pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Q3: Print a summary containing the title and year, for the 3 most recent books
SELECT CONCAT ( title, ' - ' , released_year ) AS summary
FROM books
ORDER BY released_year DESC
LIMIT 3;

-- Q4: Find all books with an author_lname that contains a space(" ")
SELECT title , author_lname
FROM books
WHERE author_lname LIKE '% %';

-- Q5: Find The 3 Books With The Lowest Stock . Select title, year, and stock
SELECT title, released_year , stock_quantity
FROM books
ORDER BY stock_quantity , released_year DESC
LIMIT 3;

-- Q6: Print title and author_lname, sorted first by author_lname and then by title
SELECT title, author_lname
FROM books
ORDER BY author_lname , title;

-- Q7: Make This Happen : "MY FAVOURITE AUTHOR IS + author full name (caps)" . Sorted Alphabetically By Last Name. Name column as yell.
SELECT UPPER ( CONCAT ( 'My favourite author is ' , author_fname, ' ' , author_lname , ' !')) AS yell
FROM BOOKS
ORDER BY author_lname; 