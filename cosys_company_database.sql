create database Cosys_DB;

use Cosys_DB;

create table Department (
Depid int primary key,
Dep_name varchar(100) not null unique,
Location varchar(100) not null,
Number_of_Employees int,
Department_number varchar(100),
Department_head varchar(100)
);

create table Employee (
Employee_id int primary key,
First_name varchar(100) not null,
Middle_name varchar(100),
Last_name varchar(100) not null,
Contact_number varchar(100) unique,
Age int,
Is_Active bit not null default 1,
Salary varchar(100),
Department_id int,
foreign key (Department_id) references Department(Depid)
);

insert into Department
(Depid, Dep_name, Location, Number_of_Employees, Department_number, Department_head)
values
(1, 'Data Migration', 'Lalitpur', 20, '9842908876', 'Ram'),
(2, 'Finance', 'Lalitpur', 18, '9842789076', 'Shyam'),
(3, 'Account', 'Lalitpur', 20, '9842908877', 'Hari'),
(4, 'Marketing', 'Harihar Bhawan', 12, '984289376', 'Sita'),
(5, 'Backend', 'Harihar Bhawan', 30, '9789908876', 'Kanhaiya'),
(6, 'Web Development', 'Kathmandu', 22, '986253876', 'Janaki'),
(7, 'Quality Assurance', 'Kathmandu', 10, '9825388876', 'Radha'),
(8, 'Deployment', 'Harihar Bhawan', 3, '98424526386', 'Krishna');

insert into Employee
(Employee_id, First_name, Middle_name, Last_name, Contact_number, Age, Is_Active, Salary, Department_id)
values
(101, 'Ishika', null, 'Bhattarai', '9851012345', 28, 1, '55000', 1),
(102, 'Sita', null, 'Thapa', '9841098765', 26, 1, '60000', 2),
(103, 'Hari', 'Prasad', 'Joshi', '9813045678', 32, 1, '50000', 3),
(104, 'Gita', null, 'Adhikari', '9802034567', 29, 1, '45000', 4),
(105, 'Krishna', 'Bahadur', 'Rai', '9860011223', 31, 1, '75000', 5),
(106, 'Aayusha', null, 'Pradhan', '9821122334', 24, 1, '40000', 6),
(107, 'Sandeep', 'Kumar', 'Chaudhary', '9847055667', 27, 1, '48000', 7),
(108, 'Anjali', null, 'Tamang', '9808099112', 30, 1, '65000', 8);

select * from Department;

select * from Employee;
