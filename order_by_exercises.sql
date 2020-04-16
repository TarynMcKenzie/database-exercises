-- TODO: 1. Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.

USE employees;

SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT last_name FROM employees WHERE last_name LIKE 'e%';
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date like '%199%';
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date like '%12-25%';
SELECT last_name FROM employees WHERE last_name LIKE '%q%';

SELECT first_name FROM employees
WHERE first_name LIKE 'Irena'
   OR first_name LIKE 'Vidya'
   OR first_name LIKE'Maya' ;

SELECT first_name, gender FROM employees
WHERE first_name LIKE 'Irena'
   OR first_name LIKE 'Vidya'
   OR first_name LIKE 'Maya'
    AND gender = 'M';

SELECT last_name FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT first_name, last_name, hire_date, birth_date FROM employees
WHERE hire_date LIKE '%199%'
  AND birth_date LIKE '%12-25%';

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';


-- TODO: 2. Modify your first query to order by first name.
--          The first result should be Irena Reutenauer and the last result should be Vidya Simmen.

SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;


-- TODO: 3. Update the query to order by first name and then last name.
--          The first result should now be Irena Acton and the last should be Vidya Zweizig.

SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC, last_name ASC;


-- TODO: 4. Change the order by clause so that you order by last name before first name.
--          Your first result should still be Irena Acton but now the last result should be Maya Zyda.

SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name ASC, first_name ASC;


-- TODO: 5. Update your queries for employees with 'E' in their last name to sort the results by their employee number.
--          Your results should not change!

SELECT last_name FROM employees WHERE last_name LIKE 'e%'ORDER BY emp_no ASC;


-- TODO: 6. Now reverse the sort order for both queries.

SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;

SELECT last_name FROM employees WHERE last_name LIKE 'e%'ORDER BY emp_no DESC;

-- TODO: 7. Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last.
--          It should be Khun Bernini.

SELECT first_name, last_name, hire_date, birth_date FROM employees
WHERE hire_date LIKE '%199%'
  AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC;