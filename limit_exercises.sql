USE EMPLOYEES;

SHOW TABLES;
# list distinct last names, (10) descending order
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC LIMIT 10;

# prev exercise, xmas bday, oldest, descending first 5 offset 45 to view "10th page"
SELECT first_name, last_name FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;