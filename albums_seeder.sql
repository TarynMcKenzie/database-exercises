-- TODO: For this exercise, we will be creating a seeder script for our albums, that is, a script that that fills a table with data.
--       1. Create a new file named albums_seeder.sql.
--       2. At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
--
-- TODO: 4 a. Open up albums_seeder.sql, after your USE statement, add a TRUNCATE query to delete all records from the table before inserting.
-- TODO: 4 b. Test your change and make sure you no longer get any duplicate records when running albums_seeder.sql.
--

USE codeup_test_db;

-- Truncate all records before re seeding new data
TRUNCATE albums;


-- TODO: 3. Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables).
--          For sales data, use the 'sales certification' column of the tables, not 'claimed sales'.
--          For artists listed with 'Various Artists', just use the primary artist's name.
--              a. First write your queries as separate INSERT statements for each record and test. You should see no output.
--              b. Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
--          Note that running the albums_seeder.sql multiple times will generate duplicate data, don't worry about that for now (we'll fix it by the end of the exercise).

-- TODO: 3 a. First write your queries as separate INSERT statements for each record and test. You should see no output.

-- INSERT INTO albums (artist, name, release_date, genre, sales )
-- VALUES ('Michael Jackson','Thriller','1982','Pop/Rock/R&B','47.3');

-- INSERT INTO albums (artist, name, release_date, genre, sales )
-- VALUES ('AC/DC','Back in Black','1980','Hard rock','26.1');

-- TODO: 3 b. Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.

INSERT INTO albums (artist, `name`, release_date, genre, sales )
VALUES          ('Michael Jackson', 'Thriller', '1982', 'Pop/Rock/R&B', '47.3'),
                ('AC/DC', 'Back in Black', '1980', 'Hard rock', '26.1'),
                ('Pink Floyd', 'The Dark Side of the Moon', '1973', 'Progressive rock', '24.2'),
                ('Meat Loaf', 'Bat Out of Hell', '1977', 'Hard rock/Progressive rock', '21.5'),
                ('Whitney Houston', 'The Bodyguard', '1992', 'R&B/Soul/Pop/Soundtrack', '28.4'),
                ('Eagles', 'Their Greatest Hits (1971‚Äì1975)', '1976', 'Rock/Soft rock/Folk rock', '32.2'),
                ('Bee Gees', 'Saturday Night Fever', '1977', 'Disco', '21.6'),
                ('Fleetwood Mac', 'Rumours', '1977', 'Soft rock', '27.9'),
                ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', '1978', 'Soundtrack', '14.4'),
                ('Led Zeppelin', 'Led Zeppelin IV', '1971', 'Hard rock/Heavy metal/Folk', '29'),
                ('Michael Jackson', 'Bad', '1987', 'Pop/Funk/Rock', '19.3'),
                ('Alanis Morissette', 'Jagged Little Pill', '1995', 'Alternative rock', '24.4'),
                ('Shania Twain', 'Come On Over', '1997', 'Country/Pop', '29.6'),
                ('Celine Dion', 'Falling into You', '1996', 'Pop/Soft rock', '20.2'),
                ('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', '1967', 'Rock', '13.1'),
                ('Eagles', 'Hotel California', '1976', 'Rock/Soft rock/Folk rock', '21.5'),
                ('Various artists', 'Dirty Dancing', '1987', 'Pop/Rock/R&B', '17.9'),
                ('Adele', '21', '2011', 'Pop/Soul', '25.3'),
                ('Celine Dion', 'Lets Talk About Love', '1997', 'Pop/Soft rock', '19.3'),
                ('The Beatles', '1', '2000', 'Rock', '22.6'),
                ('Madonna', 'The Immaculate Collection', '1990', 'Pop/Dance', '19.4'),
                ('The Beatles', 'Abbey Road', '1969', 'Rock', '14.4'),
                ('Bruce Springsteen', 'Born in the U.S.A.', '1984', 'Rock', '19.6'),
                ('Dire Straits', 'Brothers in Arms', '1985', 'Rock/Pop', '17.7'),
                ('James Horner', 'Titanic: Music from the Motion Picture', '1997', 'Soundtrack', '18.1'),
                ('Metallica', 'Metallica', '1991', 'Thrash metal/Heavy metal', '21.2'),
                ('Nirvana', 'Nevermind', '1991', 'Grunge/Alternative rock', '16.7'),
                ('Pink Floyd', 'The Wall', '1979', 'Progressive rock', '17.6'),
                ('Santana', 'Supernatural', '1999', 'Rock', '20.5'),
#                 ('Guns N Roses', 'Appetite for Destruction', '1987', 'Hard rock', '21.6'),
                ('Guns N Roses', 'Appetite for Destruction', '1987', 'Hard rock', '21.6');

