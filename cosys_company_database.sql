create database Cosys_DB;

CREATE TABLE Department (
Depid INT PRIMARY KEY,
Dep_name VARCHAR(100) NOT NULL UNIQUE,
Location VARCHAR(100) NOT NULL,
Number_of_Employees INT,
Department_number varchar(100),
Department_head varchar(100),
);

Create table Employee (
Employee_id int Primary Key,
First_name varchar(100) NOT NULL,
Middle_name varchar(100),
Last_name varchar(100) NOT NULL,
Contact_number varchar(100) unique,
Age int,
Is_Active BIT NOT NULL DEFAULT 1,
Salary varchar(100),
Department_id INT,
FOREIGN KEY (Department_id) REFERENCES Department(Depid)
);



select * from Department;
select* from Employee;

Insert into Department( depId ,dep_Name, Location, Number_of_Employees, Department_number, Department_head) 
VALUES 
(1, 'Data Migration','lalitpur',20,'9842908876', 'Ram'),
(2,'Fianance','lalitpur',18 ,'9842789076', 'Shyam'),
(3,'Account','lalitpur',20,'9842908876', 'hari'),
(4,'Marketing','harihar bhawan',12,'984289376', 'Sita'),
(5, 'Backend','harihar bhawan',30,'9789908876', 'Kanhaiya'),
(6, 'Web development','ktm',22,'986253876', 'Janaki'),
(7, 'Quality assurance','ktm',10,'9825388876', 'Radha'),
(8, 'Deployment','harihar bhawan',3,'98424526386', 'Krishna');

select * from Department;


INSERT INTO Employee (Employee_id, First_name, Middle_name, Last_name, Contact_number, Age, Is_Active, Salary, Department_id)
VALUES 
(101,'Ishika', Null, 'Bhattarai', '9851012345', 28, 1, '55000', 1),
(102, 'Sita', NULL, 'Thapa', '9841098765', 26, 1, '60000', 2),
(103, 'Hari', 'Prasad', 'Joshi','9813045678', 32, 1, '50000', 3),
(104, 'Gita', NULL, 'Adhikari','9802034567', 29, 1, '45000', 4),
(105, 'Krishna','Bahadur', 'Rai', '9860011223', 31, 1, '75000', 5),
(106, 'Aayusha', NULL, 'Pradhan', '9821122334', 24, 1, '40000', 6),
(107, 'Sandeep', 'Kumar', 'Chaudhary', '9847055667', 27, 1, '48000', 7),
(108, 'Anjali', NULL, 'Tamang', '9808099112', 30, 1, '65000', 8);

SELECT * FROM Employee;









