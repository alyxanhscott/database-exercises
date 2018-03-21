CREATE DATABASE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('Aloy', 'aloy@horizon.net', 1),
  ('Farkas', 'farkas@skyrim.co', 1),
  ('Link', 'link@hyrule.com', 1),
  ('Resetti', 'resetti@animalcrossing.edu', 2);

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles on users.role_id = roles.id;

SELECT concat(roles.name, ', # of users with this role: ', count(users.role_id))
FROM users
join roles on users.role_id = roles.id
GROUP BY roles.name;

TRUNCATE users;


# shows each department along with the name of the current manager for that department.
