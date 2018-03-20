use employees;

show TABLES;

#functions exercise, work copied from order by exercise
SELECT * from employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
ORDER BY first_name;

SELECT * from employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
ORDER BY last_name, first_name DESC;

SELECT CONCAT(first_name,' ', last_name) FROM employees
WHERE last_name like 'E%' OR last_name LIKE '%e'
ORDER BY emp_no DESC ;

SELECT
concat(first_name, ' ', last_name, ', days w/ co: ', DATEDIFF(now(), hire_date)) FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%12-25'
ORDER BY birth_date ASC, hire_date DESC;