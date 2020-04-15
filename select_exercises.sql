-- TODO: Create a new file called select_exercises.sql.
--       Remember to USE the codeup_test_db.

USE codeup_test_db;

-- TODO: 1. In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
--          a. The name of all albums by Pink Floyd.
--          b. The year Sgt. Pepper's Lonely Hearts Club Band was released
--          c. The genre for Nevermind
--          d. Which albums were released in the 1990s
--          e. Which albums had less than 20 million certified sales
--          f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- As always, commit your changes after each step and push them out to GitHub

-- TODO : 1 a. The name of all albums by Pink Floyd.
SELECT 'The name of all albums by Pink Floyd.' AS 'Exercise 1 a.';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- TODO: 1 b. The year Sgt. Pepper's Lonely Hearts Club Band was released <-- Swapped with different artist
SELECT 'The year Adele`s album 21 was released' AS 'Exercise 1 b.';
SELECT release_date FROM albums WHERE `name` = 21;

-- TODO: 1 c. The genre for Nevermind
SELECT 'The genre for Nevermind' AS 'Exercise 1 c.';
SELECT genre FROM albums WHERE `name` = 'Nevermind';

-- TODO: 1 d. Which albums were released in the 1990s
SELECT 'Which albums were released in the 1990s' AS 'Exercise 1 d.';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- TODO: 1 e. Which albums had less than 20 million certified sales
SELECT 'Which albums had less than 20 million certified sales' AS 'Exercise 1 e.';
SELECT * FROM albums WHERE sales <= 20;

-- TODO: 1 f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'All the albums with a genre of "Rock"' AS 'Exercise 1 f.';
SELECT * FROM albums WHERE genre = 'rock';-- find exact matches

SELECT * FROM albums WHERE genre LIKE '%rock%'; -- find partial matches