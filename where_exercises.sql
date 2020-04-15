-- PART ONE

-- TODO: 1. Create a file named where_exercises.sql. Make sure to use the employees database.
USE employees;

-- TODO: 2. Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- TODO: 3. Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT last_name FROM employees WHERE last_name LIKE 'e%';

-- TODO: 4. Find all employees hired in the 90s — 135,214 rows.
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date like '%199%';

-- TODO: 5. Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date like '%12-25%';

-- TODO: 6. Find all employees with a 'q' in their last name — 1,873 rows.
SELECT last_name FROM employees WHERE last_name LIKE '%q%';



-- PART TWO

-- TODO: 1. Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name FROM employees
WHERE first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya';

-- TODO: 2. Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT first_name, gender FROM employees
WHERE first_name LIKE 'Irena'
   OR first_name LIKE 'Vidya'
   OR first_name LIKE 'Maya'
    AND gender LIKE 'M';

-- TODO: 3. Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT last_name FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

-- TODO: 4. Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

-- TODO: 5. Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name, hire_date, birth_date FROM employees WHERE hire_date LIKE '%199%' AND birth_date LIKE '%12-25%';

-- TODO: 6. Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';