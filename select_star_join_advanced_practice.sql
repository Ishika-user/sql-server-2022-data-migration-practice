/* 01 Display all employees */
SELECT * 
FROM Employee;

/* 02 Display all departments */
SELECT * 
FROM Department;

/* 03 Display employees with department details */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id;

/* 04 Display employees with salary between 45000 and 70000 and department not IT */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE e.Salary BETWEEN 45000 AND 70000 
AND d.Dep_name <> 'IT';

/* 05 Display active employees whose first name ends with a */
SELECT * 
FROM Employee
WHERE First_name LIKE '%a' 
AND Is_Active = 1;

/* 06 Display employees who joined in 2023 */
SELECT * 
FROM Employee
WHERE YEAR(Joining_date) = 2023;

/* 07 Display employees where first or last name contains b and middle name contains a */
SELECT * 
FROM Employee
WHERE (First_name LIKE '%b%' OR Last_name LIKE '%b%') 
AND Middle_name LIKE '%a%'
ORDER BY Employee_id;

/* 08 Display employees with salary greater than 50000 */
SELECT * 
FROM Employee
WHERE Salary > 50000;

/* 09 Display employees with salary less than 50000 */
SELECT * 
FROM Employee
WHERE Salary < 50000;

/* 10 Display employees with salary between 40000 and 60000 */
SELECT * 
FROM Employee
WHERE Salary BETWEEN 40000 AND 60000;

/* 11 Display employees whose salary is not between 40000 and 60000 */
SELECT * 
FROM Employee
WHERE Salary NOT BETWEEN 40000 AND 60000;

/* 12 Display employees older than 25 */
SELECT * 
FROM Employee
WHERE Age > 25;

/* 13 Display employees younger than 30 */
SELECT * 
FROM Employee
WHERE Age < 30;

/* 14 Display employees between age 25 and 35 */
SELECT * 
FROM Employee
WHERE Age BETWEEN 25 AND 35;

/* 15 Display active employees */
SELECT * 
FROM Employee
WHERE Is_Active = 1;

/* 16 Display inactive employees */
SELECT * 
FROM Employee
WHERE Is_Active = 0;

/* 17 Display employees from department 1 */
SELECT * 
FROM Employee
WHERE Department_id = 1;

/* 18 Display employees not from department 1 */
SELECT * 
FROM Employee
WHERE Department_id <> 1;

/* 19 Display employees from departments 1, 2, and 3 */
SELECT * 
FROM Employee
WHERE Department_id IN (1, 2, 3);

/* 20 Display employees not from departments 1, 2, and 3 */
SELECT * 
FROM Employee
WHERE Department_id NOT IN (1, 2, 3);

/* 21 Display employees whose first name starts with A */
SELECT * 
FROM Employee
WHERE First_name LIKE 'A%';

/* 22 Display employees whose first name ends with a */
SELECT * 
FROM Employee
WHERE First_name LIKE '%a';

/* 23 Display employees whose first name contains an */
SELECT * 
FROM Employee
WHERE First_name LIKE '%an%';

/* 24 Display employees whose last name starts with B */
SELECT * 
FROM Employee
WHERE Last_name LIKE 'B%';

/* 25 Display employees whose last name contains ta */
SELECT * 
FROM Employee
WHERE Last_name LIKE '%ta%';

/* 26 Display employees whose last name does not contain b */
SELECT * 
FROM Employee
WHERE Last_name NOT LIKE '%b%';

/* 27 Display employees with missing middle name */
SELECT * 
FROM Employee
WHERE Middle_name IS NULL;

/* 28 Display employees with middle name available */
SELECT * 
FROM Employee
WHERE Middle_name IS NOT NULL;

/* 29 Display employees with missing contact number */
SELECT * 
FROM Employee
WHERE Contact_number IS NULL;

/* 30 Display employees with contact number available */
SELECT * 
FROM Employee
WHERE Contact_number IS NOT NULL;

/* 31 Display active employees with salary above 50000 */
SELECT * 
FROM Employee
WHERE Is_Active = 1 
AND Salary > 50000;

/* 32 Display employees with salary above 60000 or age below 25 */
SELECT * 
FROM Employee
WHERE Salary > 60000 
OR Age < 25;

/* 33 Display employees from department 2 with salary above 50000 */
SELECT * 
FROM Employee
WHERE Department_id = 2 
AND Salary > 50000;

/* 34 Display employees from department 1 or department 3 */
SELECT * 
FROM Employee
WHERE Department_id = 1 
OR Department_id = 3;

/* 35 Display employees sorted by salary highest to lowest */
SELECT * 
FROM Employee
ORDER BY Salary DESC;

/* 36 Display employees sorted by salary lowest to highest */
SELECT * 
FROM Employee
ORDER BY Salary ASC;

/* 37 Display employees sorted by age youngest to oldest */
SELECT * 
FROM Employee
ORDER BY Age ASC;

/* 38 Display employees sorted by age oldest to youngest */
SELECT * 
FROM Employee
ORDER BY Age DESC;

/* 39 Display employees sorted by department and salary */
SELECT * 
FROM Employee
ORDER BY Department_id ASC, Salary DESC;

/* 40 Display top 5 highest paid employees */
SELECT TOP 5 * 
FROM Employee
ORDER BY Salary DESC;

/* 41 Display top 5 lowest paid employees */
SELECT TOP 5 * 
FROM Employee
ORDER BY Salary ASC;

/* 42 Display top 3 youngest employees */
SELECT TOP 3 * 
FROM Employee
ORDER BY Age ASC;

/* 43 Display top 3 oldest employees */
SELECT TOP 3 * 
FROM Employee
ORDER BY Age DESC;

/* 44 Display employees joined after 2023 */
SELECT * 
FROM Employee
WHERE YEAR(Joining_date) > 2023;

/* 45 Display employees joined before 2024 */
SELECT * 
FROM Employee
WHERE YEAR(Joining_date) < 2024;

/* 46 Display employees joined in January */
SELECT * 
FROM Employee
WHERE MONTH(Joining_date) = 1;

/* 47 Display employees joined between two dates */
SELECT * 
FROM Employee
WHERE Joining_date BETWEEN '2023-01-01' AND '2023-12-31';

/* 48 Display employees with department details sorted by department name */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
ORDER BY d.Dep_name ASC;

/* 49 Display top 5 highest paid employees with department details */
SELECT TOP 5 * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
ORDER BY e.Salary DESC;

/* 50 Display active employees with department details and salary between 45000 and 70000 */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE e.Is_Active = 1 
AND e.Salary BETWEEN 45000 AND 70000
ORDER BY e.Salary DESC;

/* 51 Display employees from Finance department */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE d.Dep_name = 'Finance';

/* 52 Display employees not from Finance department */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE d.Dep_name <> 'Finance';

/* 53 Display employees from departments located in Lalitpur */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE d.Location = 'lalitpur';

/* 54 Display employees whose department name contains Data */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE d.Dep_name LIKE '%Data%';

/* 55 Display employees whose department head name starts with R */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE d.Department_head LIKE 'R%';

/* 56 Display employees ordered by department name and employee age */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
ORDER BY d.Dep_name ASC, e.Age ASC;

/* 57 Display employees ordered by location and salary */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
ORDER BY d.Location ASC, e.Salary DESC;

/* 58 Display employees with salary greater than average salary */
SELECT * 
FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

/* 59 Display employees with salary less than average salary */
SELECT * 
FROM Employee
WHERE Salary < (SELECT AVG(Salary) FROM Employee);

/* 60 Display employees with highest salary */
SELECT * 
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);

/* 61 Display employees with lowest salary */
SELECT * 
FROM Employee
WHERE Salary = (SELECT MIN(Salary) FROM Employee);

/* 62 Display employees older than average age */
SELECT * 
FROM Employee
WHERE Age > (SELECT AVG(Age) FROM Employee);

/* 63 Display employees from departments that exist in Department table */
SELECT * 
FROM Employee
WHERE Department_id IN (SELECT Depid FROM Department);

/* 64 Display employees from departments located in Lalitpur using subquery */
SELECT * 
FROM Employee
WHERE Department_id IN (
    SELECT Depid 
    FROM Department 
    WHERE Location = 'lalitpur'
);

/* 65 Display employees who are in departments with department head Ram */
SELECT * 
FROM Employee
WHERE Department_id IN (
    SELECT Depid 
    FROM Department 
    WHERE Department_head = 'Ram'
);

/* 66 Display departments that have employees */
SELECT * 
FROM Department d
WHERE EXISTS (
    SELECT 1 
    FROM Employee e 
    WHERE e.Department_id = d.Depid
);

/* 67 Display departments that do not have employees */
SELECT * 
FROM Department d
WHERE NOT EXISTS (
    SELECT 1 
    FROM Employee e 
    WHERE e.Department_id = d.Depid
);

/* 68 Display employees using left join including unmatched department records */
SELECT * 
FROM Department d
LEFT JOIN Employee e 
ON d.Depid = e.Department_id;

/* 69 Display employees with no matching department */
SELECT * 
FROM Employee e
LEFT JOIN Department d 
ON d.Depid = e.Department_id
WHERE d.Depid IS NULL;

/* 70 Display departments with no employees using left join */
SELECT * 
FROM Department d
LEFT JOIN Employee e 
ON d.Depid = e.Department_id
WHERE e.Employee_id IS NULL;

/* 71 Display employee salary category using CASE */
SELECT *,
CASE
    WHEN Salary >= 70000 THEN 'High Salary'
    WHEN Salary >= 50000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END AS SalaryCategory
FROM Employee;

/* 72 Display employee age category using CASE */
SELECT *,
CASE
    WHEN Age < 25 THEN 'Young Employee'
    WHEN Age BETWEEN 25 AND 35 THEN 'Mid Age Employee'
    ELSE 'Senior Employee'
END AS AgeCategory
FROM Employee;

/* 73 Display employee active status using CASE */
SELECT *,
CASE
    WHEN Is_Active = 1 THEN 'Active Employee'
    ELSE 'Inactive Employee'
END AS EmployeeStatus
FROM Employee;

/* 74 Display employees with salary ranking */
SELECT *,
RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employee;

/* 75 Display employees with row number by salary */
SELECT *,
ROW_NUMBER() OVER (ORDER BY Salary DESC) AS SalaryRowNumber
FROM Employee;

/* 76 Display employees with dense salary ranking */
SELECT *,
DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseSalaryRank
FROM Employee;

/* 77 Display employees with salary rank inside each department */
SELECT *,
RANK() OVER (PARTITION BY Department_id ORDER BY Salary DESC) AS DepartmentSalaryRank
FROM Employee;

/* 78 Display highest paid employee from each department */
WITH DepartmentSalaryRank AS (
    SELECT *,
    RANK() OVER (PARTITION BY Department_id ORDER BY Salary DESC) AS SalaryRank
    FROM Employee
)
SELECT * 
FROM DepartmentSalaryRank
WHERE SalaryRank = 1;

/* 79 Display latest joined employee from each department */
WITH LatestJoinedEmployee AS (
    SELECT *,
    ROW_NUMBER() OVER (PARTITION BY Department_id ORDER BY Joining_date DESC) AS JoinRank
    FROM Employee
)
SELECT * 
FROM LatestJoinedEmployee
WHERE JoinRank = 1;

/* 80 Display employees with duplicate contact numbers */
SELECT * 
FROM Employee
WHERE Contact_number IN (
    SELECT Contact_number 
    FROM Employee 
    GROUP BY Contact_number 
    HAVING COUNT(*) > 1
);

/* 81 Display employees with duplicate first name and last name */
SELECT * 
FROM Employee
WHERE First_name + Last_name IN (
    SELECT First_name + Last_name 
    FROM Employee 
    GROUP BY First_name, Last_name 
    HAVING COUNT(*) > 1
);

/* 82 Display employees whose salary is above department average salary */
SELECT * 
FROM Employee e
WHERE e.Salary > (
    SELECT AVG(e2.Salary) 
    FROM Employee e2 
    WHERE e2.Department_id = e.Department_id
);

/* 83 Display employees whose salary is below department average salary */
SELECT * 
FROM Employee e
WHERE e.Salary < (
    SELECT AVG(e2.Salary) 
    FROM Employee e2 
    WHERE e2.Department_id = e.Department_id
);

/* 84 Display employees who joined in the last 365 days */
SELECT * 
FROM Employee
WHERE Joining_date >= DATEADD(DAY, -365, GETDATE());

/* 85 Display employees with working years */
SELECT *,
DATEDIFF(YEAR, Joining_date, GETDATE()) AS WorkingYears
FROM Employee;

/* 86 Display employees with working months */
SELECT *,
DATEDIFF(MONTH, Joining_date, GETDATE()) AS WorkingMonths
FROM Employee;

/* 87 Display employees with formatted joining month */
SELECT *,
DATENAME(MONTH, Joining_date) AS JoiningMonth
FROM Employee;

/* 88 Display employees joined in current year */
SELECT * 
FROM Employee
WHERE YEAR(Joining_date) = YEAR(GETDATE());

/* 89 Display employees joined in previous year */
SELECT * 
FROM Employee
WHERE YEAR(Joining_date) = YEAR(GETDATE()) - 1;

/* 90 Display employees with department details and salary category */
SELECT *,
CASE
    WHEN e.Salary >= 70000 THEN 'High Salary'
    WHEN e.Salary >= 50000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END AS SalaryCategory
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id;

/* 91 Display top salary employee with ties */
SELECT TOP 1 WITH TIES * 
FROM Employee
ORDER BY Salary DESC;

/* 92 Display second page of employees using offset */
SELECT * 
FROM Employee
ORDER BY Employee_id
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

/* 93 Display employees except inactive employees */
SELECT * 
FROM Employee
WHERE Is_Active <> 0;

/* 94 Display employees whose department is not null and salary is valid */
SELECT * 
FROM Employee
WHERE Department_id IS NOT NULL 
AND Salary IS NOT NULL 
AND Salary > 0;

/* 95 Display employees with invalid age or invalid salary */
SELECT * 
FROM Employee
WHERE Age < 18 
OR Salary <= 0;

/* 96 Display employees with names starting from A to M */
SELECT * 
FROM Employee
WHERE First_name BETWEEN 'A' AND 'M';

/* 97 Display employees whose salary is above 50000 and department name is not Finance */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE e.Salary > 50000 
AND d.Dep_name <> 'Finance';

/* 98 Display active employees from Lalitpur location */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE e.Is_Active = 1 
AND d.Location = 'lalitpur';

/* 99 Display employees with department details joined after 2023 */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
WHERE YEAR(e.Joining_date) > 2023;

/* 100 Display employees with department details sorted by department and joining date */
SELECT * 
FROM Employee e
JOIN Department d 
ON d.Depid = e.Department_id
ORDER BY d.Dep_name ASC, e.Joining_date DESC;
