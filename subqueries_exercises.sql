use employees;
SHOW TABLES;
DESCRIBE dept_emp;
DESCRIBE employees;
DESCRIBE titles;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE salaries;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.hire_date IN (
  SELECT employees.hire_date
  FROM employees
  WHERE employees.emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT * FROM titles
WHERE titles.emp_no IN (
  SELECT employees.emp_no FROM employees
  WHERE employees.first_name = 'Aamod'
);

# Find all the current department managers that are female.
SELECT employees.first_name, employees.last_name
FROM employees WHERE employees.emp_no IN (
  SELECT dept_manager.emp_no
  FROM dept_manager WHERE dept_manager.to_date like '%9999-%'
) AND employees.gender = 'F';

