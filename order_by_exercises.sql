use employees;

show TABLES;

# orders by first name in asc
SELECT * from employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
ORDER BY first_name;

# order by last name first then first name then desc
SELECT * from employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
ORDER BY last_name, first_name DESC;

# ordering by employee id # then desc
SELECT * FROM employees
WHERE last_name like 'E%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

# bday on xmas, hired in the 90s, oldest employee who was hired last in 90s
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%12-25'
ORDER BY birth_date ASC, hire_date DESC;





