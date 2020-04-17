-- TODO: 1. Create a database named join_test_db and run the SQL provided in the Join Example DB section above;
--          to create the same setup used for this lesson.

USE join_test_db;

TRUNCATE join_test_db.users;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),

-- TODO: 1. Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

('sam', 'sam@example.com', 4),
('noah', 'noah@example.com', 4),
('donald', 'donald@example.com', 4),
('mattis', 'mattis@example.com', 4);


-- TODO: 1. Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson.
--          Before you run each query, guess the expected number of results.

SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

-- 8 users displayed (two users are Null in the role value)

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

-- all users are displayed (including the null role users)
-- operations are looking at the left side then the right side

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

-- 8 users displayed (two users are Null in the role value)
-- operations are looking at the right side then the left side

-- TODO: 1. Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
--          Use count and the appropriate join type to get a list of roles along with the number of users that have a given role.
--          Hint: You will also need to use group by in the query.

SELECT count(roles.id) AS 'Aggregate Count', roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;