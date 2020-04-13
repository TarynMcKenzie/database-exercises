USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'NONE',
    name  VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    sales DECIMAL(10, 2),
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
);