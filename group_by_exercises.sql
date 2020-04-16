-- TODO: 1. Create a new file named group_by_exercises.sql.
USE employees;

-- TODO: 2. In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT title
FROM titles;


-- TODO: 3. Find your query for employees whose last names start and end with 'E'.
--          Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
--          The results should be:
# Eldridge
# Erbe
# Erde
# Erie
# Etalle

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
GROUP BY last_name;


-- TODO: 4. Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
--          You should get 846 rows.

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
GROUP BY first_name, last_name;


-- TODO: 5. Find the unique last names with a 'q' but not 'qu'.
--          Your results should be:
# Chleq
# Lindqvist
# Qiwen

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

-- TODO: 6. Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT DISTINCT last_name, COUNT(last_name)
FROM employees.employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) ASC;


-- TODO: 7. Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
--          Your results should be:
# 441 M
# 268 F

SELECT count(first_name), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY count(*) DESC;
