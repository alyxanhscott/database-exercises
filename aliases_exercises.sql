use employees;

SHOW TABLES;
DESCRIBE employees;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE salaries;
DESCRIBE titles;

SELECT concat(emp_no, ' - ',last_name,' ', first_name) as 'Full names', birth_date as 'DOB'
FROM employees LIMIT 10;