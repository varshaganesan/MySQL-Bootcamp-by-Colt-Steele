-- Aggregate Function exercise
-- Q1: Print the number of books in the database.
SELECT COUNT(title) AS book_count
FROM books;

-- Q2: Print out how many books were released in each year
SELECT released_year , COUNT(title) AS book_count
FROM books
GROUP BY released_year
ORDER BY released_year DESC;

-- Q3: Print out the total number of books in stock
SELECT SUM(stock_quantity) AS total_books
FROM books;

-- Q4: Find the average released_year for each author
SELECT AVG(released_year) AS avg_year , CONCAT ( author_fname , ' ' , author_lname) AS author
FROM books
GROUP BY author;

-- Q5: Find the full name of the author who wrote the longest book
SELECT CONCAT ( author_fname , ' ' , author_lname) AS author , pages
FROM books
WHERE pages = ( SELECT MAX(pages) FROM books);

-- Q6: Make this Happen : as shown in the image. 
SELECT released_year AS year , COUNT(title) AS '# books' , AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;
