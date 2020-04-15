-- TODO: 4 c. Create a file called delete_exercises.sql.
USE codeup_test_db;

-- TODO: 4 d. Write SELECT statements for:
--            1. Albums released after 1991
--            2. Albums with the genre 'disco'
--            3. Albums by 'Whitney Houston' (...or maybe an artist of your choice)

-- TODO: 4 e. Make sure to put appropriate captions before each SELECT.

SELECT 'Albums released after 1991' AS 'Exercise 4 d. 1';
SELECT * FROM albums WHERE release_date BETWEEN 1991 AND 2020;

SELECT 'Albums with the genre disco' AS 'Exercise 4 d. 2';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'Albums by The Beatles' AS 'Exercise 4 d. 3';
SELECT * FROM albums WHERE artist = 'The Beatles';


-- TODO: 4 f. Convert the SELECT statements to DELETE.

SELECT 'Albums released after 1991' AS 'Exercise 4 d. 1';
DELETE FROM albums WHERE release_date BETWEEN 1991 AND 2020;

SELECT 'Albums with the genre disco' AS 'Exercise 4 d. 2';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by The Beatles' AS 'Exercise 4 d. 3';
DELETE FROM albums WHERE artist = 'The Beatles';


SELECT * FROM albums;

-- TODO: 4 g. Use the MySQL command line client to make sure your records really were removed.