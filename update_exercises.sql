-- TODO: 1. Create a file called update_exercises.sql.
USE codeup_test_db;


-- TODO: 2. Write SELECT statements to output each of the following with a caption:
--          a. All albums in your table.
--          b. All albums released before 1980
--          c. All albums by Michael Jackson

SELECT 'All albums in your table' AS 'Exercise 2 a.';
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Exercise 2 b.';
SELECT * FROM albums WHERE release_date BETWEEN 1900 AND 1980;

SELECT 'All albums by Michael Jackson' AS 'Exercise 2 c.';
SELECT * FROM albums WHERE artist = 'Michael Jackson';


-- TODO 3. After each SELECT add an UPDATE statement to:
--         a. Make all the albums 10 times more popular (sales * 10)
--         b. Move all the albums before 1980 back to the 1800s.
--         c. Change 'Michael Jackson' to 'Peter Jackson'
-- TODO: 4. Add SELECT statements after each UPDATE so you can see the results of your handiwork.

SELECT 'Make all the albums 10 times more popular (sales * 10)' AS 'Exercise 3 a.';
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

SELECT 'Move all the albums before 1980 back to the 1800s' AS 'Exercise 3 b.';
UPDATE albums SET release_date = concat('18', SUBSTRING(release_date FROM 3));
SELECT * FROM albums WHERE release_date BETWEEN 1800 AND 1900;

SELECT 'Change Michael Jackson to Peter Jackson' AS 'Exercise 3 c.';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
