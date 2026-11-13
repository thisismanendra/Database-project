-- Student Database: beginner SQL practice project

CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    course VARCHAR(60),
    age INT
);

INSERT INTO students (student_id, full_name, email, course, age) VALUES
(1, 'Aarav Kumar', 'aarav@example.com', 'Computer Science', 20),
(2, 'Diya Sharma', 'diya@example.com', 'Information Technology', 19),
(3, 'Rohan Das', 'rohan@example.com', 'Computer Science', 21),
(4, 'Meera Patel', 'meera@example.com', 'Electronics', 20);

-- Display all students
SELECT * FROM students;

-- Select students from one course
SELECT full_name, course
FROM students
WHERE course = 'Computer Science';

-- Find students older than 19
SELECT *
FROM students
WHERE age > 19;

-- Sort students by name
SELECT *
FROM students
ORDER BY full_name ASC;

-- Count students in each course
SELECT course, COUNT(*) AS student_count
FROM students
GROUP BY course;
