use employees;
show TABLES;
DESCRIBE titles;

# shows all job titles from titles table
SELECT DISTINCT count(title), title
FROM titles GROUP BY title;

#shows distinct last names beginning and ending with "e", added count() to show employees
SELECT count(last_name), last_name FROM employees
WHERE last_name like 'E%' AND last_name LIKE '%e'
GROUP BY last_name;

# shows distinct first + last names whose last names begin and end w/ "e"
SELECT first_name, last_name FROM employees
WHERE last_name like 'e%' and last_name like '%e'
GROUP BY first_name, last_name
ORDER BY first_name, last_name;

# choosing distinct last names with a "q" but not a "qu"
SELECT count(last_name),last_name from employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

# shows the number of male and female employees with the first names as seen below
SELECT count(*), gender FROM employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
GROUP BY gender;