-- create backup database
create database cosys_backup_db;

-- backup full employee table in same database
select *
into employee_backup
from employee;

-- backup full department table in same database
select *
into department_backup
from department;

-- backup full staff table in same database
select *
into staff_backup
from staff;

-- backup full client table in same database
select *
into client_backup
from client;

-- backup employee table to another database
select *
into cosys_backup_db.dbo.employee_backup
from cosys_db.dbo.employee;

-- backup department table to another database
select *
into cosys_backup_db.dbo.department_backup
from cosys_db.dbo.department;

-- backup staff table to another database
select *
into cosys_backup_db.dbo.staff_backup
from cosys_db.dbo.staff;

-- backup client table to another database
select *
into cosys_backup_db.dbo.client_backup
from cosys_db.dbo.client;

-- backup employee names only
select first_name, middle_name, last_name
into employee_name_backup
from employee;

-- backup employee salary details
select employee_id, first_name, last_name, salary
into employee_salary_backup
from employee;

-- backup employee contact details
select employee_id, first_name, last_name, contact_number
into employee_contact_backup
from employee;

-- backup active employees only
select *
into active_employee_backup
from employee
where is_active = 1;

-- backup inactive employees only
select *
into inactive_employee_backup
from employee
where is_active = 0;

-- backup employees with salary greater than 50000
select *
into high_salary_employee_backup
from employee
where salary > 50000;

-- backup employees with salary less than 50000
select *
into low_salary_employee_backup
from employee
where salary < 50000;

-- backup employees aged above 25
select *
into employee_age_above_25_backup
from employee
where age > 25;

-- backup employees aged between 20 and 30
select *
into employee_age_20_30_backup
from employee
where age between 20 and 30;

-- backup employees from department 1
select *
into department_1_employee_backup
from employee
where department_id = 1;

-- backup employees from department 2
select *
into department_2_employee_backup
from employee
where department_id = 2;

-- backup employees joined in 2023
select *
into employee_joined_2023_backup
from employee
where year(joining_date) = 2023;

-- backup employees joined in 2024
select *
into employee_joined_2024_backup
from employee
where year(joining_date) = 2024;

-- backup employees joined after 2023
select *
into employee_joined_after_2023_backup
from employee
where joining_date >= '2024-01-01';

-- backup employees with no middle name
select *
into employee_no_middle_name_backup
from employee
where middle_name is null;

-- backup employees whose first name starts with a
select *
into employee_name_a_backup
from employee
where first_name like 'a%';

-- backup employee and department joined data
select e.employee_id, e.first_name, e.last_name, e.salary, d.dep_name, d.location
into employee_department_backup
from employee e
join department d
on e.department_id = d.depid;

-- backup finance department employees
select e.*
into finance_employee_backup
from employee e
join department d
on e.department_id = d.depid
where d.dep_name = 'finance';

-- backup it department employees
select e.*
into it_employee_backup
from employee e
join department d
on e.department_id = d.depid
where d.dep_name = 'it';

-- backup employees from lalitpur department location
select e.employee_id, e.first_name, e.last_name, d.dep_name, d.location
into lalitpur_employee_backup
from employee e
join department d
on e.department_id = d.depid
where d.location = 'lalitpur';

-- backup department heads only
select depid, dep_name, department_head
into department_head_backup
from department;

-- backup departments located in lalitpur
select *
into lalitpur_department_backup
from department
where location = 'lalitpur';

-- backup departments with more than 15 employees
select *
into large_department_backup
from department
where number_of_employees > 15;

-- backup department contact numbers
select depid, dep_name, department_number
into department_contact_backup
from department;

-- backup staff names only
select staff_id, first_name, middle_name, last_name
into staff_name_backup
from staff;

-- backup staff contact details
select staff_id, first_name, last_name, email, address
into staff_contact_backup
from staff;

-- backup staff living in jhapa
select *
into jhapa_staff_backup
from staff
where address = 'jhapa';

-- backup staff with no middle name
select *
into staff_no_middle_name_backup
from staff
where middle_name is null;

-- backup client names only
select client_id, first_name, middle_name, last_name
into client_name_backup
from client;

-- backup client contact details
select client_id, first_name, last_name, email, address
into client_contact_backup
from client;

-- backup clients living in lalitpur
select *
into lalitpur_client_backup
from client
where address = 'lalitpur';

-- backup clients with no middle name
select *
into client_no_middle_name_backup
from client
where middle_name is null;

-- backup employee table structure only
select *
into employee_empty_backup
from employee
where 1 = 0;

-- backup department table structure only
select *
into department_empty_backup
from department
where 1 = 0;

-- backup staff table structure only
select *
into staff_empty_backup
from staff
where 1 = 0;

-- backup client table structure only
select *
into client_empty_backup
from client
where 1 = 0;

-- backup employees with salary above average
select *
into above_average_salary_employee_backup
from employee
where salary > (
    select avg(salary)
    from employee
);

-- backup employee with highest salary
select *
into highest_salary_employee_backup
from employee
where salary = (
    select max(salary)
    from employee
);

-- backup employees earning more than any employee in department 2
select *
into salary_greater_than_any_dep2_backup
from employee
where salary > any (
    select salary
    from employee
    where department_id = 2
);

-- backup employees earning more than all employees in department 2
select *
into salary_greater_than_all_dep2_backup
from employee
where salary > all (
    select salary
    from employee
    where department_id = 2
);

-- backup employee department data to another database
select e.employee_id, e.first_name, e.last_name, e.salary, d.dep_name, d.location, d.department_head
into cosys_backup_db.dbo.employee_department_backup
from cosys_db.dbo.employee e
join cosys_db.dbo.department d
on e.department_id = d.depid;
