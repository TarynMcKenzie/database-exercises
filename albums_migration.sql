USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'NONE',
    name  VARCHAR(100) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(500) DEFAULT 'NONE',
    PRIMARY KEY (id),
    UNIQUE (name, artist)

);

-- INDEXES SECTION EXERCISES
-- TODO: 1. USE your employees database.
-- TODO: 2. DESCRIBE each table and inspect the keys and see which columns have indexes and keys.

-- TODO: 3. USE your codeup_test_db database.
-- TODO: 4. Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
