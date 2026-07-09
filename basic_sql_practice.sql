
/*
Display all records from tables
*/

SELECT *
FROM Employee;

SELECT *
FROM Department;


/*
Select specific columns from Employee table
*/

SELECT First_name
FROM Employee;

SELECT Last_name
FROM Employee;

SELECT Salary
FROM Employee;

SELECT Age
FROM Employee;

SELECT Department_id
FROM Employee;

SELECT 
    First_name,
    Last_name
FROM Employee;

SELECT 
    Employee_id,
    First_name,
    Last_name,
    Salary
FROM Employee;

SELECT 
    Employee_id,
    First_name,
    Last_name,
    Age,
    Salary,
    Department_id
FROM Employee;


/*
Select specific columns from Department table
*/

SELECT Depid
FROM Department;

SELECT Dep_name
FROM Department;

SELECT Location
FROM Department;

SELECT Department_number
FROM Department;

SELECT Department_head
FROM Department;

SELECT 
    Depid,
    Dep_name,
    Location
FROM Department;


/*
Use column aliases
*/

SELECT First_name AS FirstName
FROM Employee;

SELECT Last_name AS LastName
FROM Employee;

SELECT Salary AS MonthlySalary
FROM Employee;

SELECT Age AS EmployeeAge
FROM Employee;

SELECT Department_id AS DepartmentID
FROM Employee;

SELECT Dep_name AS DepartmentName
FROM Department;

SELECT Department_head AS DepartmentHead
FROM Department;

SELECT 
    First_name AS FirstName,
    Last_name AS LastName,
    Salary AS MonthlySalary
FROM Employee;


/*
Use DISTINCT to display unique values
*/

SELECT DISTINCT Age
FROM Employee;

SELECT DISTINCT Salary
FROM Employee;

SELECT DISTINCT Department_id
FROM Employee;

SELECT DISTINCT Is_Active
FROM Employee;

SELECT DISTINCT Dep_name
FROM Department;

SELECT DISTINCT Location
FROM Department;


/*
ORDER BY queries
*/

SELECT *
FROM Employee
ORDER BY Salary ASC;

SELECT *
FROM Employee
ORDER BY Salary DESC;

SELECT *
FROM Employee
ORDER BY Age ASC;

SELECT *
FROM Employee
ORDER BY Age DESC;

SELECT *
FROM Employee
ORDER BY First_name ASC;

SELECT *
FROM Employee
ORDER BY Last_name ASC;

SELECT *
FROM Employee
ORDER BY Employee_id ASC;

SELECT *
FROM Employee
ORDER BY Employee_id DESC;

SELECT *
FROM Employee
ORDER BY Department_id ASC;

SELECT *
FROM Employee
ORDER BY Department_id DESC;

SELECT *
FROM Employee
ORDER BY Department_id ASC, Salary DESC;

SELECT *
FROM Employee
ORDER BY Department_id ASC, Salary ASC;

SELECT *
FROM Employee
ORDER BY Department_id ASC, Age ASC;

SELECT *
FROM Employee
ORDER BY Department_id ASC, Last_name ASC;

SELECT *
FROM Department
ORDER BY Dep_name ASC;

SELECT *
FROM Department
ORDER BY Location ASC;

SELECT *
FROM Department
ORDER BY Depid ASC;


/*
TOP records
*/

SELECT TOP 5 *
FROM Employee;

SELECT TOP 5 *
FROM Employee
ORDER BY Salary DESC;

SELECT TOP 5 *
FROM Employee
ORDER BY Salary ASC;

SELECT TOP 3 *
FROM Employee
ORDER BY Age ASC;

SELECT TOP 3 *
FROM Employee
ORDER BY Age DESC;

SELECT TOP 1 *
FROM Employee
ORDER BY Salary DESC;

SELECT TOP 1 *
FROM Employee
ORDER BY Salary ASC;

SELECT TOP 1 *
FROM Employee
ORDER BY Age ASC;

SELECT TOP 1 *
FROM Employee
ORDER BY Age DESC;

SELECT TOP 3 *
FROM Department
ORDER BY Dep_name ASC;


/*
WHERE condition queries
*/

SELECT *
FROM Employee
WHERE Salary > 50000;

SELECT *
FROM Employee
WHERE Salary < 50000;

SELECT *
FROM Employee
WHERE Salary >= 50000;

SELECT *
FROM Employee
WHERE Salary <= 50000;

SELECT *
FROM Employee
WHERE Age > 25;

SELECT *
FROM Employee
WHERE Age < 30;

SELECT *
FROM Employee
WHERE Age >= 25;

SELECT *
FROM Employee
WHERE Age <= 30;

SELECT *
FROM Employee
WHERE Department_id = 1;

SELECT *
FROM Employee
WHERE Department_id <> 1;

SELECT *
FROM Employee
WHERE Is_Active = 1;

SELECT *
FROM Employee
WHERE Is_Active = 0;

SELECT *
FROM Department
WHERE Location = 'lalitpur';

SELECT *
FROM Department
WHERE Dep_name = 'Data Migration';


/*
WHERE with AND and OR
*/

SELECT *
FROM Employee
WHERE Salary > 50000 AND Age > 25;

SELECT *
FROM Employee
WHERE Salary > 50000 OR Age > 30;

SELECT *
FROM Employee
WHERE Department_id = 1 AND Salary > 50000;

SELECT *
FROM Employee
WHERE Department_id = 2 OR Department_id = 3;

SELECT *
FROM Employee
WHERE Is_Active = 1 AND Salary > 50000;

SELECT *
FROM Employee
WHERE Age > 25 AND Department_id = 1;

SELECT *
FROM Employee
WHERE Age < 30 OR Salary > 60000;


/*
BETWEEN queries
*/

SELECT *
FROM Employee
WHERE Salary BETWEEN 40000 AND 70000;

SELECT *
FROM Employee
WHERE Age BETWEEN 25 AND 35;

SELECT *
FROM Employee
WHERE Employee_id BETWEEN 101 AND 105;

SELECT *
FROM Department
WHERE Depid BETWEEN 1 AND 5;


/*
IN queries
*/

SELECT *
FROM Employee
WHERE Department_id IN (1, 2, 3);

SELECT *
FROM Employee
WHERE Age IN (25, 26, 27);

SELECT *
FROM Employee
WHERE Employee_id IN (101, 102, 103);

SELECT *
FROM Department
WHERE Dep_name IN ('Data Migration', 'Finance', 'Account');

SELECT *
FROM Department
WHERE Depid IN (1, 2, 3);


/*
LIKE queries
*/

SELECT *
FROM Employee
WHERE First_name LIKE 'A%';

SELECT *
FROM Employee
WHERE First_name LIKE 'B%';

SELECT *
FROM Employee
WHERE Last_name LIKE '%a';

SELECT *
FROM Employee
WHERE First_name LIKE '%an%';

SELECT *
FROM Employee
WHERE Last_name LIKE '%ta%';

SELECT *
FROM Department
WHERE Dep_name LIKE '%Data%';

SELECT *
FROM Department
WHERE Location LIKE 'l%';


/*
NULL checking queries
*/

SELECT *
FROM Employee
WHERE Middle_name IS NULL;

SELECT *
FROM Employee
WHERE Middle_name IS NOT NULL;

SELECT *
FROM Employee
WHERE Contact_number IS NULL;

SELECT *
FROM Employee
WHERE Contact_number IS NOT NULL;

SELECT *
FROM Employee
WHERE Salary IS NULL;

SELECT *
FROM Employee
WHERE Department_id IS NULL;


/*
Aggregate functions
*/

SELECT COUNT(*) AS TotalEmployees
FROM Employee;

SELECT COUNT(Employee_id) AS TotalEmployeeIds
FROM Employee;

SELECT COUNT(DISTINCT Department_id) AS TotalDepartmentsUsed
FROM Employee;

SELECT COUNT(DISTINCT Age) AS TotalUniqueAges
FROM Employee;

SELECT SUM(Salary) AS TotalSalary
FROM Employee;

SELECT AVG(Salary) AS AverageSalary
FROM Employee;

SELECT MIN(Salary) AS LowestSalary
FROM Employee;

SELECT MAX(Salary) AS HighestSalary
FROM Employee;

SELECT MIN(Age) AS YoungestAge
FROM Employee;

SELECT MAX(Age) AS OldestAge
FROM Employee;

SELECT AVG(Age) AS AverageAge
FROM Employee;

SELECT COUNT(*) AS TotalDepartments
FROM Department;


/*
Aggregate functions with WHERE
*/

SELECT COUNT(*) AS ActiveEmployees
FROM Employee
WHERE Is_Active = 1;

SELECT COUNT(*) AS InactiveEmployees
FROM Employee
WHERE Is_Active = 0;

SELECT COUNT(*) AS EmployeesWithHighSalary
FROM Employee
WHERE Salary > 50000;

SELECT COUNT(*) AS EmployeesAboveAgeTwentyFive
FROM Employee
WHERE Age > 25;

SELECT AVG(Salary) AS AverageSalaryForDepartmentOne
FROM Employee
WHERE Department_id = 1;

SELECT MAX(Salary) AS HighestSalaryForDepartmentOne
FROM Employee
WHERE Department_id = 1;

SELECT MIN(Salary) AS LowestSalaryForDepartmentOne
FROM Employee
WHERE Department_id = 1;

SELECT SUM(Salary) AS TotalSalaryForDepartmentOne
FROM Employee
WHERE Department_id = 1;


/*
GROUP BY queries
*/

SELECT 
    Department_id,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department_id;

SELECT 
    Department_id,
    SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department_id;

SELECT 
    Department_id,
    AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department_id;

SELECT 
    Department_id,
    MIN(Salary) AS LowestSalary
FROM Employee
GROUP BY Department_id;

SELECT 
    Department_id,
    MAX(Salary) AS HighestSalary
FROM Employee
GROUP BY Department_id;

SELECT 
    Department_id,
    AVG(Age) AS AverageAge
FROM Employee
GROUP BY Department_id;

SELECT 
    Is_Active,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Is_Active;

SELECT 
    Age,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Age;


/*
GROUP BY with ORDER BY
*/

SELECT 
    Department_id,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department_id
ORDER BY TotalEmployees DESC;

SELECT 
    Department_id,
    AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department_id
ORDER BY AverageSalary DESC;

SELECT 
    Department_id,
    MAX(Salary) AS HighestSalary
FROM Employee
GROUP BY Department_id
ORDER BY HighestSalary DESC;

SELECT 
    Department_id,
    MIN(Salary) AS LowestSalary
FROM Employee
GROUP BY Department_id
ORDER BY LowestSalary ASC;

SELECT 
    Department_id,
    SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department_id
ORDER BY TotalSalary DESC;

SELECT 
    Age,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Age
ORDER BY Age ASC;


/*
HAVING queries
*/

SELECT 
    Department_id,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department_id
HAVING COUNT(*) > 1;

SELECT 
    Department_id,
    AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department_id
HAVING AVG(Salary) > 50000;

SELECT 
    Department_id,
    MAX(Salary) AS HighestSalary
FROM Employee
GROUP BY Department_id
HAVING MAX(Salary) > 60000;

SELECT 
    Department_id,
    SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department_id
HAVING SUM(Salary) > 100000;

SELECT 
    Age,
    COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Age
HAVING COUNT(*) > 1;


/*
Data quality checking queries
*/

SELECT *
FROM Employee
WHERE First_name IS NULL;

SELECT *
FROM Employee
WHERE Last_name IS NULL;

SELECT *
FROM Employee
WHERE Contact_number IS NULL;

SELECT *
FROM Employee
WHERE Department_id IS NULL;

SELECT *
FROM Employee
WHERE Salary IS NULL;

SELECT *
FROM Employee
WHERE Salary <= 0;

SELECT *
FROM Employee
WHERE Age < 18;

SELECT *
FROM Employee
WHERE Age > 65;

SELECT *
FROM Department
WHERE Dep_name IS NULL;

SELECT *
FROM Department
WHERE Location IS NULL;

SELECT 
    Contact_number,
    COUNT(*) AS DuplicateContactCount
FROM Employee
GROUP BY Contact_number
HAVING COUNT(*) > 1;

SELECT 
    First_name,
    Last_name,
    COUNT(*) AS DuplicateNameCount
FROM Employee
GROUP BY First_name, Last_name
HAVING COUNT(*) > 1;

SELECT 
    Department_id,
    COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department_id;


/*
CASE statement practice
*/

SELECT 
    Employee_id,
    First_name,
    Last_name,
    Salary,
    CASE
        WHEN Salary >= 70000 THEN 'High Salary'
        WHEN Salary >= 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryCategory
FROM Employee;

SELECT 
    Employee_id,
    First_name,
    Last_name,
    Age,
    CASE
        WHEN Age < 25 THEN 'Young Employee'
        WHEN Age BETWEEN 25 AND 35 THEN 'Mid Age Employee'
        ELSE 'Senior Employee'
    END AS AgeCategory
FROM Employee;

SELECT 
    Employee_id,
    First_name,
    Last_name,
    Is_Active,
    CASE
        WHEN Is_Active = 1 THEN 'Active'
        ELSE 'Inactive'
    END AS EmployeeStatus
FROM Employee;


/*
Final basic report style queries without JOIN
*/

SELECT 
    Employee_id,
    First_name,
    Last_name,
    Age,
    Salary,
    Department_id
FROM Employee
ORDER BY Department_id ASC, Salary DESC;

SELECT TOP 5
    Employee_id,
    First_name,
    Last_name,
    Salary,
    Department_id
FROM Employee
ORDER BY Salary DESC;

SELECT 
    Department_id,
    COUNT(*) AS TotalEmployees,
    AVG(Salary) AS AverageSalary,
    MIN(Salary) AS LowestSalary,
    MAX(Salary) AS HighestSalary,
    SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department_id
ORDER BY AverageSalary DESC;
