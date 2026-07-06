/*
===============================================================================
 File Name    : 02_clean_database_setup.sql
 Project      : Cosys Company Database
 Database     : Cosys_DB
 SQL Server   : SQL Server 2022
 Created By   : Ishika
 Purpose      : Clean and professional version of the Cosys company database
                setup script.

 Description:
 This script improves the original database setup by adding:
    - Database existence check
    - Proper USE database statement
    - Table existence checks
    - Clean formatting
    - Professional comments
    - Correct spelling and consistent data formatting

 Tables:
    - Department
    - Employee
===============================================================================
*/

-- ============================================================================
-- Create database if it does not already exist
-- ============================================================================

IF DB_ID('Cosys_DB') IS NULL
BEGIN
    CREATE DATABASE Cosys_DB;
END;
GO

USE Cosys_DB;
GO


-- ============================================================================
-- Create Department table
-- Purpose: Stores department information for Cosys company.
-- ============================================================================

IF OBJECT_ID('dbo.Department', 'U') IS NULL
BEGIN
    CREATE TABLE Department (
        Depid INT PRIMARY KEY,
        Dep_name VARCHAR(100) NOT NULL UNIQUE,
        Location VARCHAR(100) NOT NULL,
        Number_of_Employees INT,
        Department_number VARCHAR(100),
        Department_head VARCHAR(100)
    );
END;
GO


-- ============================================================================
-- Create Employee table
-- Purpose: Stores employee details and links employees to departments.
-- ============================================================================

IF OBJECT_ID('dbo.Employee', 'U') IS NULL
BEGIN
    CREATE TABLE Employee (
        Employee_id INT PRIMARY KEY,
        First_name VARCHAR(100) NOT NULL,
        Middle_name VARCHAR(100),
        Last_name VARCHAR(100) NOT NULL,
        Contact_number VARCHAR(100) UNIQUE,
        Age INT,
        Is_Active BIT NOT NULL DEFAULT 1,
        Salary VARCHAR(100),
        Department_id INT,

        CONSTRAINT FK_Employee_Department
            FOREIGN KEY (Department_id) REFERENCES Department(Depid)
    );
END;
GO


-- ============================================================================
-- Insert department records
-- Purpose: Adds sample department data for practice and reporting.
-- ============================================================================

IF NOT EXISTS (SELECT 1 FROM Department WHERE Depid = 1)
BEGIN
    INSERT INTO Department
        (Depid, Dep_name, Location, Number_of_Employees, Department_number, Department_head)
    VALUES
        (1, 'Data Migration', 'Lalitpur', 20, '9842908876', 'Ram'),
        (2, 'Finance', 'Lalitpur', 18, '9842789076', 'Shyam'),
        (3, 'Account', 'Lalitpur', 20, '9842908877', 'Hari'),
        (4, 'Marketing', 'Harihar Bhawan', 12, '984289376', 'Sita'),
        (5, 'Backend', 'Harihar Bhawan', 30, '9789908876', 'Kanhaiya'),
        (6, 'Web Development', 'Kathmandu', 22, '986253876', 'Janaki'),
        (7, 'Quality Assurance', 'Kathmandu', 10, '9825388876', 'Radha'),
        (8, 'Deployment', 'Harihar Bhawan', 3, '98424526386', 'Krishna');
END;
GO


-- ============================================================================
-- Insert employee records
-- Purpose: Adds sample employee data linked with departments.
-- ============================================================================

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Employee_id = 101)
BEGIN
    INSERT INTO Employee
        (Employee_id, First_name, Middle_name, Last_name, Contact_number, Age, Is_Active, Salary, Department_id)
    VALUES
        (101, 'Ishika', NULL, 'Bhattarai', '9851012345', 28, 1, '55000', 1),
        (102, 'Sita', NULL, 'Thapa', '9841098765', 26, 1, '60000', 2),
        (103, 'Hari', 'Prasad', 'Joshi', '9813045678', 32, 1, '50000', 3),
        (104, 'Gita', NULL, 'Adhikari', '9802034567', 29, 1, '45000', 4),
        (105, 'Krishna', 'Bahadur', 'Rai', '9860011223', 31, 1, '75000', 5),
        (106, 'Aayusha', NULL, 'Pradhan', '9821122334', 24, 1, '40000', 6),
        (107, 'Sandeep', 'Kumar', 'Chaudhary', '9847055667', 27, 1, '48000', 7),
        (108, 'Anjali', NULL, 'Tamang', '9808099112', 30, 1, '65000', 8);
END;
GO


-- ============================================================================
-- Verification queries
-- Purpose: Check inserted records.
-- ============================================================================

SELECT *
FROM Department;
GO

SELECT *
FROM Employee;
GO
