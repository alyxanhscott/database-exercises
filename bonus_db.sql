USE bonus_db;
# migration file

CREATE TABLE products (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  item VARCHAR(50) NOT NULL,
  price FLOAT UNSIGNED NOT NULL DEFAULT 0.0,
  has_sold BOOLEAN NOT NULL,
  PRIMARY KEY (id)
);

# seeder
INSERT INTO products (item, price, has_sold)
VALUES
  ('bike',250.00,true),
  ('cat',100.00,false),
  ('bat',30.00,true),
  ('fish',50.00,false),
  ('nes',200.00,true),
  ('n64',300.00,false),
  ('ps3',400.00,true),
  ('dog',75.00,false),
  ('drill',60.00,false);

# tests
SELECT item as 'Items that have sold' FROM products WHERE has_sold = true;

SELECT item as 'Products over $100' FROM products WHERE price > 100;

SELECT item, has_sold FROM products WHERE item = 'ps3';

SELECT price AS 'Dog price' FROM products WHERE item = 'dog';

SELECT item, has_sold FROM products WHERE price > 199;