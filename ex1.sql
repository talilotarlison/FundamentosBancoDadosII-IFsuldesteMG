-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  genero TEXT NOT NULL
);


-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M');
INSERT INTO students VALUES (2, 'Joanna', 'F');

-- fetch some values
SELECT * FROM students WHERE genero = 'M';
