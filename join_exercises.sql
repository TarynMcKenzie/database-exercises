-- TODO: 1. Create a file named join_exercises.sql to do your work in.
USE employees;


-- TODO: 2. Using the example in the Associative Table Joins section as a guide,
--          write a query that shows each department along with the name of the current manager for that department.

#   Department Name    | Department Manager
#  --------------------+--------------------
#   Customer Service   | Yuchang Weedman
#   Development        | Leon DasSarma
#   Finance            | Isamu Legleitner
#   Human Resources    | Karsten Sigstam
#   Marketing          | Vishwani Minakawa
#   Production         | Oscar Ghazalie
#   Quality Management | Dung Pesch
#   Research           | Hilary Kambil
#   Sales              | Hauke Zhang


-- How Karen finds out who the manager is.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
         JOIN dept_manager AS dm
              ON dm.dept_no = d.dept_no
         JOIN employees AS e
              ON e.emp_no = dm.emp_no
WHERE dm.to_date > CURDATE()
ORDER BY d.dept_name;



-- TODO: 3. Find the name of all departments currently managed by women.
# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d
         JOIN dept_manager AS dm
              ON dm.dept_no = d.dept_no
         JOIN employees AS e
              ON e.emp_no = dm.emp_no
WHERE dm.to_date > CURDATE()
  AND e.gender = 'F'
ORDER BY d.dept_name;

-- TODO: 4. Find the current titles of employees currently working in the Customer Service department.
# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241

SELECT t.title AS 'Title', COUNT(t.title) AS 'Count'
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE d.dept_no = 'D009'
  AND t.to_date > CURDATE()
  AND de.to_date > CURDATE()
GROUP BY t.title;

-- TODO: 5. Find the current salary of all current managers.
# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987


SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name',
       s.salary                               AS 'Salary'
FROM departments AS d
         JOIN dept_manager AS dm
              ON dm.dept_no = d.dept_no
         JOIN employees AS e
              ON e.emp_no = dm.emp_no
         JOIN salaries AS s
              on e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE()
  AND s.to_date > CURDATE()
ORDER BY d.dept_name;

-- TODO: BONUS. Find the names of all current employees, their department name, and their current manager's name.
#     240,124 Rows
#
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#
#      .....


-- Also how Karen finds out who the manager is.
SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee Name',
       d.dept_name                              AS 'Department Name',
       CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_emp AS de
              on e.emp_no = de.emp_no
         JOIN departments AS d
              on de.dept_no = d.dept_no
         JOIN dept_manager AS dm
              on de.dept_no = dm.dept_no
         JOIN employees AS em
              on dm.emp_no = em.emp_no
WHERE dm.to_date > CURDATE()
  AND de.to_date > CURDATE()
ORDER BY d.dept_name, e.emp_no;