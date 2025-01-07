-- Create a database
CREATE DATABASE schooldb;


-- Recreate the students table
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY, -- SERIAL automatically handles increment
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    course_id INT
);

-- Insert data into the students table
INSERT INTO students (student_id, name, age, gender, course_id)
VALUES (1, 'Sakshi Jaiswal', 20, 'Female', 101);

-- Insert data into the students table with columns in a different order
INSERT INTO students(name, student_id, gender, age, course_id)
VALUES ('Bhavesh Patil', 2, 'Male', 22, 102);

-- Delete all rows from the students table
DELETE FROM students;

-- Retrieve all rows from the students table where student_id is greater than 3
SELECT * FROM students WHERE student_id > 3;

-- Retrieve all data from the students table again
SELECT * FROM students;

-- Delete row from the students table where student_id is greater than 3
DELETE FROM students WHERE student_id > 3;

-- Remove all rows from the students table but keep the table structure
TRUNCATE TABLE students;

-- Retrieve all data from the students table after truncation
SELECT * FROM students;

-- Update the course_id of a specific student
UPDATE students
SET course_id = 106
WHERE student_id = 2;

-- Retrieve data from the students table for a specific student
SELECT * FROM students WHERE student_id = 2;

-- Get the total number of rows in the students table
SELECT COUNT(*) FROM students;

-- Group by gender and get counts for students having more than 1 student
SELECT gender, COUNT(*) AS total_students
FROM students
GROUP BY gender
HAVING COUNT(*) > 1;

-- Retrieve distinct student names
SELECT DISTINCT(name) FROM students;

-- Insert new data into the students table
INSERT INTO students(student_id, name, age, gender, course_id)
VALUES (1001, 'Suman Duggal', 24, 'Female', 105);

-- Retrieve all data
SELECT * FROM students;
