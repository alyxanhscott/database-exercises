USE employees;

SHOW TABLES;

# list employees with first names as seen in green
SELECT * FROM employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya');

# same as above but with 'or' vs 'in'
SELECT * from employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# same as above but refactored to locate male employees
SELECT * FROM employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
AND gender = 'M';

# last name starts with E
SELECT * FROM employees
WHERE last_name like 'E%';

# same as above but last begins or ends with 'e'
SELECT * FROM employees
WHERE last_name like 'E%' OR last_name LIKE '%e';

# same as above, but last name starts AND ends with 'e'
SELECT * FROM employees
WHERE last_name like 'E%' AND last_name LIKE '%e';

# hired in the 90's
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# bday on xmas
SELECT * FROM employees
WHERE birth_date like '%12-25';

# same as above but those born in the 90's and have bday's on xmas
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%12-25';

# employees with a Q in their last name
SELECT * FROM employees
WHERE last_name like '%q%';

# same as above but not with 'qu' in last name at all
SELECT * FROM employees
WHERE last_name like '%q%'
and last_name NOT LIKE '%qu%';
