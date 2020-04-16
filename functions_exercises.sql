-- TODO: Copy the order_by_exercises.sql script and save it as functions_exercises.sql.

USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no ASC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '%199%'
  AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC;


-- TODO: Update your queries for employees whose names start and end with 'E'.
--       Use concat() to combine their first and last name together as a single column in your results.

SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
ORDER BY emp_no DESC;


-- TODO: For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
--       (Hint: You will also need to use now() or curdate())

SELECT concat( first_name, ' ', last_name,' has worked here for ', DATEDIFF (NOW() , hire_date), ' days')
FROM employees
WHERE hire_date LIKE '%199%'
  AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC;
