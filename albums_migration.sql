USE codeup_test_db;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50) NOT NULL,
  name VARCHAR(100) NOT NULL,
  release_date INT UNSIGNED NOT NULL DEFAULT 0,
  genre VARCHAR(50) NOT NULL,
  sales FLOAT UNSIGNED NOT NULL DEFAULT 0.0,
  PRIMARY KEY (id)
);

ALTER TABLE albums
  ADD UNIQUE (artist, name);

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  number VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (id)
);

DESCRIBE contacts;

INSERT INTO contacts (name, number, email, created_at,updated_at)
VALUES ('tristan', '1234567895', 'tht@gmail.com', now(), now()),
  ('allie', '6067488634','aaa@gmail.com', now(), now());

SELECT * from contacts;
# mysql -u codeup_test_user -p < albums_migration.sql

