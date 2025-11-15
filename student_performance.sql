
CREATE DATABASE StudentPerformanceDB;
USE StudentPerformanceDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    grade_level INT,
    math_score INT,
    science_score INT,
    english_score INT
);

INSERT INTO Students (name, grade_level, math_score, science_score, english_score) VALUES
('Rahul Kumar', 10, 85, 78, 88),
('Sneha Reddy', 10, 92, 89, 95),
('Ajay Singh', 9, 76, 81, 72),
('Priya Sharma', 9, 88, 84, 91),
('Kiran Das', 10, 69, 74, 70);

SELECT * FROM Students;

SELECT name, math_score 
FROM Students 
ORDER BY math_score DESC 
LIMIT 1;

SELECT 
    AVG(math_score) AS avg_math,
    AVG(science_score) AS avg_science,
    AVG(english_score) AS avg_english
FROM Students;

SELECT name 
FROM Students
WHERE math_score > 80 
  AND science_score > 80 
  AND english_score > 80;

UPDATE Students
SET math_score = 90
WHERE name = 'Ajay Singh';

DELETE FROM Students
WHERE name = 'Kiran Das';
