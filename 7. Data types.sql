-- DATA TYPES Exercise:
-- Q1: Print Out The Current Time
SELECT CURTIME();

-- Q2: Print Out The Current Date (but not time)
SELECT CURDATE();

-- Q3: Print Out The Current Day Of The Week (The Number)
SELECT DATE_FORMAT (CURDATE(), '%w');

-- Q4: Print Out The Current Day Of The Week (The Day Name)
SELECT DATE_FORMAT (CURDATE(), '%W');

-- Q5: Print out the current day and time using this format: mm/dd/yyyy
SELECT DATE_FORMAT (NOW() , '%m/%d/%Y');

-- Q6: Print out the current day and time using this format:January 2nd at 3:15
SELECT DATE_FORMAT (NOW() , '%M %D at %k:%i');

-- Q7: Create a tweets table that stores: The Tweet content , A Username, Time it was created
CREATE TABLE tweets (
tweet_content VARCHAR(280) , username VARCHAR (50) , created_time TIMESTAMP DEFAULT NOW()
);
