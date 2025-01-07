DROP TABLE marks;
-- Create the marks table
CREATE TABLE marks (
  id INTEGER,
  name VARCHAR(20),
  marathi INTEGER,
  english INTEGER,
  maths INTEGER
);

-- Insert data into the marks table
INSERT INTO marks (id, name, marathi, english, maths) VALUES
(1,'Bhavesh',90,85,50),
(2, 'Aarav', 78, 92, 67),
(3, 'Isha', 88, 74, 81),
(4, 'Vikram', 95, 82, 76),
(5, 'Priya', 72, 88, 69),
(6, 'Kiran', 80, 77, 85),
(7, 'Meera', 86, 89, 91),
(8, 'Rohit', 67, 84, 73),
(9, 'Anjali', 90, 79, 88),
(10, 'Nikhil', 83, 76, 72),
(11, 'Sanya', 78, 91, 80),
(12, 'Rajat', 84, 73, 88),
(13, 'Sneha', 89, 85, 77),
(14, 'Amit', 76, 80, 92),
(15, 'Geeta', 87, 79, 81),
(16, 'Sameer', 93, 88, 70),
(17, 'Tanvi', 85, 82, 74),
(18, 'Manoj', 74, 90, 89),
(19, 'Nisha', 91, 78, 86),
(20, 'Rajesh', 88, 84, 75);

-- Retrieve all data from marks
SELECT * FROM marks;

-- Find the maximum value in Marathi
SELECT MAX(marathi) FROM marks;

-- Find the minimum value in Marathi
SELECT MIN(marathi) FROM marks;

-- Retrieve the top 3 rows with the highest Marathi scores
SELECT * FROM marks ORDER BY marathi DESC LIMIT 3;

-- Retrieve the rows with the lowest Marathi score
SELECT * FROM marks ORDER BY marathi ASC LIMIT 2;

-- Calculate the average scores from Marathi, English, and Maths
SELECT AVG(marathi), AVG(english), AVG(maths) FROM marks;

-- Rank students based on Marathi marks
SELECT *, DENSE_RANK() OVER(ORDER BY marathi DESC) AS rank FROM marks;

-- Retrieve rows with pagination: rows 36 to 60
SELECT * FROM marks LIMIT 10 OFFSET 5;
