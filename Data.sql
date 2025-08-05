-- Create a sample table for demonstration
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    course TEXT DEFAULT 'Undeclared',
    marks INTEGER,
    phone TEXT
);

-- 1️⃣ INSERT: Adding rows
INSERT INTO Students (student_id, name, email, course, marks, phone)
VALUES (1, 'Anu', 'anu123@gmail.com', 'Mathematics', 85, '9876543210');

INSERT INTO Students (student_id, name, email, course, marks, phone)
VALUES (2, 'Raju', 'raju34@gmail.com', 'Science', 90, NULL);

-- Using DEFAULT for course
INSERT INTO Students (student_id, name, email, marks, phone)
VALUES (3, 'Priya', 'priyaka79@gmail.com', 75, '9876501234');

-- Inserting NULL explicitly
INSERT INTO Students (student_id, name, email, course, marks, phone)
VALUES (4, 'Trupti', 'trupti99@gmail.com', NULL, NULL, NULL);

-- 2️⃣ UPDATE: Modify data
-- Update one student’s marks
UPDATE Students
SET marks = 95
WHERE student_id = 1;

-- Update multiple rows: change course for all students without course
UPDATE Students
SET course = 'General Studies'
WHERE course IS NULL;

-- 3️⃣ DELETE: Remove rows
-- Delete one student by ID
DELETE FROM Students
WHERE student_id = 4;

-- Delete all students with marks < 80
DELETE FROM Students
WHERE marks < 80;

-- 4️⃣ Example: Rollback demonstration (works in transaction-supported DBs)
BEGIN TRANSACTION;
DELETE FROM Students WHERE student_id = 2;
ROLLBACK; -- Undo the delete

-- 5️⃣ Insert values using SELECT
INSERT INTO Students (student_id, name, email, course, marks, phone)
SELECT 5, 'Pooja', 'pooja45@gmail.com', 'Physics', 88, '9988776655';

-- View final table
SELECT * FROM Students;
