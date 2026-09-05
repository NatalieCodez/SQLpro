-- ============================================================
-- SQL LEARNING DIARY
-- ============================================================


-- ============================================================
-- DATABASE SETUP
-- ============================================================

-- Create the database.
-- NOTE: Only run this ONCE.
CREATE DATABASE LearnSQL;

-- Select the database we're working with.
USE LearnSQL;


-- ============================================================
-- LESSON 1: CREATE A TABLE
-- ============================================================

-- Create our Students table.
--
-- StudentID  = unique ID for each student
-- FirstName  = student's first name
-- LastName   = student's last name
-- Age        = student's age

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);


-- ============================================================
-- LESSON 2: INSERT DATA
-- ============================================================

-- INSERT adds a new row to a table.

INSERT INTO Students
VALUES (1, 'Alice', 'Smith', 20);

INSERT INTO Students
VALUES (2, 'Bob', 'Jones', 22);

INSERT INTO Students
VALUES (3, 'Charlie', 'Brown', 19);


-- ============================================================
-- LESSON 3: SELECT DATA
-- ============================================================

-- SELECT retrieves data from a table.
--
-- * means "all columns"

SELECT *
FROM Students;


-- ============================================================
-- LESSON 4: ADDING ANOTHER STUDENT
-- ============================================================

INSERT INTO Students
VALUES (4, 'David', 'Something', 30);


-- ============================================================
-- LESSON 5: DELETE
-- ============================================================

-- DELETE removes rows from a table.
--
-- WARNING:
-- This deletes ALL rows because there is no WHERE clause.
--
-- I used this while learning because I accidentally
-- inserted Alice, Bob, and Charlie more than once.
--
-- DO NOT RUN THIS unless you intentionally want to
-- remove all students.

-- DELETE FROM Students;


-- ============================================================
-- LESSON 6: PRIMARY KEYS
-- ============================================================

-- A PRIMARY KEY uniquely identifies each row.
--
-- StudentID is our primary key, so SQL Server will not
-- allow two students to have the same StudentID.
--
-- We originally tried to add this later, but SQL Server
-- complained because StudentID was nullable.
--
-- Our current CREATE TABLE already defines StudentID
-- as a PRIMARY KEY, so the commands below are kept here
-- as learning notes and should NOT be executed again.

-- ALTER TABLE Students
-- ALTER COLUMN StudentID INT NOT NULL;

-- ALTER TABLE Students
-- ADD CONSTRAINT PK_Students
-- PRIMARY KEY (StudentID);


-- ============================================================
-- EXPERIMENTS / QUERIES
-- ============================================================

-- Put new SQL experiments below this line.
--
-- Remember:
-- Highlight only the query you want to execute.
--
-- Example:
--
-- SELECT *
-- FROM Students;

SELECT COUNT(*) AS TotalStudents
FROM Students;

SELECT COUNT(*) AS TotalStudents
FROM Students
WHERE Age > 20;

-- ============================================================
-- NOTES TO MYSELF
-- ============================================================

-- SQL file = my collection of SQL commands and notes.
--
-- Database = where the actual data is stored.
--
-- SELECT = get data
-- INSERT = add data
-- DELETE = remove data
-- UPDATE = change data
-- CREATE = create something
-- ALTER = change something that already exists
--
-- I can keep adding queries to this file.
-- I do NOT need to delete old queries.
-- I can highlight individual queries and execute only those.