use employees;

DESCRIBE employees;

SELECT concat(emp_no, ' - ',last_name,' ', first_name) as 'Full names', birth_date as 'DOB'
FROM employees LIMIT 10;