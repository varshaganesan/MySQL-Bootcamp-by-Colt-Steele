-- Many to Many Joins exercise
-- Q1: Produce a title and rating table
SELECT title , rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id;

-- Q2: Produce a title and avg_rating table
SELECT title, ROUND(AVG(rating) , 2) AS avg_rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER by avg_rating;

-- Q3: Produce a first_name, last_name, rating
SELECT first_name, last_name, rating
FROM reviewers
INNER JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- Q4: produce a table for unreviwed_series
SELECT title AS unreviwed_series
FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Q5: produce a genre , avg_rating  table
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- Q6: Produce first_name, last_name, count, min, max, avg and status table
SELECT first_name, last_name, 
COUNT(rating) AS count,
IFNULL(MIN(rating), 0) AS min,
IFNULL(MAX(rating), 0) AS max,
IFNULL(AVG(rating), 0) AS avg,
IF (COUNT(rating) > 0, 'ACTIVE' ,'INACTIVE') AS status
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- Q7: Produce title, rating , reviewer full name table
SELECT title, rating, CONCAT (first_name, ' ',  last_name) AS reviewer
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
INNER JOIN reviewers ON reviewers.id = reviews.reviewer_id
ORDER BY title;
