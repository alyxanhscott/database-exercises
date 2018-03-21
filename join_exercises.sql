# CREATE DATABASE join_test_db;
#
# CREATE TABLE roles (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   email VARCHAR(100) NOT NULL,
#   role_id INT UNSIGNED DEFAULT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#   ('Aloy', 'aloy@horizon.net', 1),
#   ('Farkas', 'farkas@skyrim.co', 1),
#   ('Link', 'link@hyrule.com', 1),
#   ('Resetti', 'resetti@animalcrossing.edu', 2);
#
# SELECT users.name, roles.name
# FROM users
# RIGHT JOIN roles on users.role_id = roles.id;
#
# SELECT concat(roles.name, ', # of users with this role: ', count(users.role_id))
# FROM users
# join roles on users.role_id = roles.id
# GROUP BY roles.name;
#
# TRUNCATE users;

use employees;

SHOW TABLES;
DESCRIBE dept_emp;
DESCRIBE employees;
DESCRIBE titles;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE salaries;


# shows each department along with the name of the current manager for that department.
SELECT concat(departments.dept_name, ', ', employees.first_name, ' ', employees.last_name),dept_manager.emp_no
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
on departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date like '%9999-%';

# Find the name of all departments currently managed by women.
SELECT concat(departments.dept_name, ', ', employees.first_name, ' ', employees.last_name),dept_manager.emp_no
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
on departments.dept_no = dept_manager.dept_no
WHERE employees.gender = 'F'
And dept_manager.to_date like '%9999-%';

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title,COUNT(titles.title)
FROM titles
JOIN dept_emp
ON dept_emp.emp_no = titles.emp_no
WHERE dept_emp.dept_no = 'd009'
AND dept_emp.to_date LIKE '9999-%'
AND titles.to_date LIKE '9999-%'
GROUP BY titles.title;

DESCRIBE employees;
# emp_no
DESCRIBE dept_manager;
# emp_no
DESCRIBE salaries;
# emp_no, salary
DESCRIBE departments;

# Find the current salary of all current managers.
SELECT concat(employees.first_name, ' ', employees.last_name), salaries.salary,' ', departments.dept_name
FROM employees
JOIN salaries
on salaries.emp_no = employees.emp_no
JOIN dept_manager
ON dept_manager.emp_no = salaries.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date like '9999-%'
AND salaries.to_date LIKE '9999-%';

DESCRIBE employees;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE dept_emp;

# Find the names of all current employees, their department name,
#  and their current manager's name.
SELECT concat(employees.first_name, ' ', employees.last_name) AS 'Employee',
departments.dept_name AS 'Department', mgmt.first_name AS 'Manager first name',
' ', mgmt.last_name AS 'Manager Last Name'
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees mgmt
ON mgmt.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date LIKE '9999-%'
and dept_manager.to_date like '9999-%'
ORDER BY employees.first_name;



