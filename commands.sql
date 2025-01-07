DROP TABLE students;
-- Create the students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    course_id INT
);

-- Insert data into the students table
INSERT INTO students (student_id, name, age, gender, course_id)
VALUES 
    (1, 'Sakshi Jaiswal', 20, 'Female', 101),
    (2, 'Bhavesh Patil', 22, 'Male', 102),
    (3, 'Parag Patil', 21, 'Male', 103),
    (4, 'Aditi Jha', 23, 'Female', 104),
    (5, 'Urvashi Kolate', 24, 'Female', 105);

-- Retrieve all data from the students table
SELECT * FROM students;

-- Add a new column to the students table
ALTER TABLE students
ADD COLUMN grade_level INT;

-- Drop the newly added column from the students table
ALTER TABLE students
DROP COLUMN grade_level;

-- Drop the students table
DROP TABLE IF EXISTS students;

-- Recreate the students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    course_id INT
);

-- Insert data into the students table
INSERT INTO students (student_id, name, age, gender, course_id)
VALUES (1, 'Sakshi Jaiswal', 20, 'Female', 101);

-- Insert data into the students table with columns in a different order
INSERT INTO students (name, student_id, gender, age, course_id)
VALUES ('Bhavesh Patil', 2, 'Male', 22, 102);

-- Delete all rows from the students table
DELETE FROM students;

-- Retrieve all rows from the students table where student_id is greater than 3
SELECT * FROM students WHERE student_id > 3;

-- Retrieve all data from the students table again
SELECT * FROM students;

-- Delete rows from the students table where student_id is greater than 3
DELETE FROM students WHERE student_id > 3;

-- Retrieve all data from the students table after deletion
SELECT * FROM students;

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
SELECT DISTINCT name FROM students;

-- Insert new data into the students table
INSERT INTO students (student_id, name, age, gender, course_id)
VALUES (1001, 'Suman Duggal', 24, 'Female', 105);

-- Retrieve all data from the students table
SELECT * FROM students;