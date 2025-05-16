-- DATABASE CREATION SECTION
USE master;
GO

-- Check if database exists and drop it
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ICE_Task3_DB')
BEGIN
    DROP DATABASE ICE_Task3_DB;
END;
GO

-- Create a fresh new database
CREATE DATABASE ICE_Task3_DB;
GO

-- Switch to the new database
USE ICE_Task3_DB;
GO

-- TABLE CREATION SECTION
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Course NVARCHAR(100),
    YearOfStudy INT
);
GO

-- TABLE INSERTION SECTION
INSERT INTO Students (FullName, Email, Course, YearOfStudy)
VALUES 
('Lebo Dlamini', 'lebo.d@example.com', 'Computer Science', 2),
('Ayanda Mokoena', 'ayanda.m@example.com', 'Information Systems', 3);
GO

-- TABLE MANIPULATION SECTION
SELECT * FROM Students;
GO

