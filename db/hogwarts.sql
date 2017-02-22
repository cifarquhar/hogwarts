DROP TABLE students;
DROP TABLE houses;

CREATE TABLE students(
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT2
);

CREATE TABLE houses(
  id SERIAL2 PRIMARY KEY,
  name VARCHAR(255),
  logo_url VARCHAR(255)
);