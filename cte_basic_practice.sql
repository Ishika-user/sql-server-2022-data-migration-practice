-- show all active employees
with activeemployees as
(
    select *
    from employee
    where is_active = 1
)
select *
from activeemployees;


-- show employees whose salary is greater than 50000
with highsalaryemployees as
(
    select *
    from employee
    where salary > 50000
)
select *
from highsalaryemployees;


-- show employees whose salary is between 50000 and 80000
with salaryrange as
(
    select *
    from employee
    where salary between 50000 and 80000
)
select *
from salaryrange;


-- show employees who joined after 1 january 2023
with recentemployees as
(
    select *
    from employee
    where joining_date > '2023-01-01'
)
select *
from recentemployees;


-- show employees who joined before 1 january 2022
with oldemployees as
(
    select *
    from employee
    where joining_date < '2022-01-01'
)
select *
from oldemployees;


-- show employees working in department id 1
with departmentemployees as
(
    select *
    from employee
    where department_id = 1
)
select *
from departmentemployees;


-- show employees whose first name starts with a
with employeenamefilter as
(
    select *
    from employee
    where first_name like 'a%'
)
select *
from employeenamefilter;


-- show employees whose last name ends with a
with employeenamefilter as
(
    select *
    from employee
    where last_name like '%a'
)
select *
from employeenamefilter;


-- show employees whose first name contains i
with employeenamefilter as
(
    select *
    from employee
    where first_name like '%i%'
)
select *
from employeenamefilter;


-- calculate a 10 percent bonus for every employee
with employeebonus as
(
    select
        employee_id,
        first_name,
        last_name,
        salary,
        salary * 0.10 as bonus
    from employee
)
select *
from employeebonus;


-- calculate salary after adding a 10 percent bonus
with employeebonus as
(
    select
        employee_id,
        first_name,
        last_name,
        salary,
        salary * 0.10 as bonus
    from employee
)
select
    employee_id,
    first_name,
    last_name,
    salary,
    bonus,
    salary + bonus as total_salary
from employeebonus;


-- show employee names with their department names
with employeedepartment as
(
    select
        e.employee_id,
        e.first_name,
        e.last_name,
        e.salary,
        d.dep_name
    from employee e
    join department d
        on e.department_id = d.depid
)
select *
from employeedepartment;


-- show employees working in the it department
with itemployees as
(
    select
        e.employee_id,
        e.first_name,
        e.last_name,
        e.salary,
        d.dep_name
    from employee e
    join department d
        on e.department_id = d.depid
    where d.dep_name = 'it'
)
select *
from itemployees;


-- show active employees with their department names
with activeemployeedepartment as
(
    select
        e.employee_id,
        e.first_name,
        e.last_name,
        e.salary,
        d.dep_name
    from employee e
    join department d
        on e.department_id = d.depid
    where e.is_active = 1
)
select *
from activeemployeedepartment;


-- show employees earning more than the overall average salary
with averagesalary as
(
    select avg(salary) as average_salary
    from employee
)
select
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    a.average_salary
from employee e
cross join averagesalary a
where e.salary > a.average_salary;


-- show employees earning less than the overall average salary
with averagesalary as
(
    select avg(salary) as average_salary
    from employee
)
select
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    a.average_salary
from employee e
cross join averagesalary a
where e.salary < a.average_salary;


-- count employees in each department
with departmentcount as
(
    select
        department_id,
        count(*) as total_employees
    from employee
    group by department_id
)
select *
from departmentcount;


-- show departments that have more than two employees
with departmentcount as
(
    select
        department_id,
        count(*) as total_employees
    from employee
    group by department_id
)
select *
from departmentcount
where total_employees > 2;


-- calculate the average salary of each department
with departmentsalary as
(
    select
        department_id,
        avg(salary) as average_salary
    from employee
    group by department_id
)
select *
from departmentsalary;


-- calculate the total salary of each department
with departmentsalary as
(
    select
        department_id,
        sum(salary) as total_salary
    from employee
    group by department_id
)
select *
from departmentsalary;


-- show the minimum salary in each department
with departmentsalary as
(
    select
        department_id,
        min(salary) as minimum_salary
    from employee
    group by department_id
)
select *
from departmentsalary;


-- show the maximum salary in each department
with departmentsalary as
(
    select
        department_id,
        max(salary) as maximum_salary
    from employee
    group by department_id
)
select *
from departmentsalary;


-- show employees earning more than their department average salary
with departmentaverage as
(
    select
        department_id,
        avg(salary) as average_salary
    from employee
    group by department_id
)
select
    e.employee_id,
    e.first_name,
    e.last_name,
    e.department_id,
    e.salary,
    d.average_salary
from employee e
join departmentaverage d
    on e.department_id = d.department_id
where e.salary > d.average_salary;


-- show employees earning less than their department average salary
with departmentaverage as
(
    select
        department_id,
        avg(salary) as average_salary
    from employee
    group by department_id
)
select
    e.employee_id,
    e.first_name,
    e.last_name,
    e.department_id,
    e.salary,
    d.average_salary
from employee e
join departmentaverage d
    on e.department_id = d.department_id
where e.salary < d.average_salary;


-- create two ctes and show active employees earning more than 50000
with activeemployees as
(
    select *
    from employee
    where is_active = 1
),
highsalaryemployees as
(
    select *
    from activeemployees
    where salary > 50000
)
select *
from highsalaryemployees;


-- create two ctes and show recent employees from department id 1
with recentemployees as
(
    select *
    from employee
    where joining_date > '2023-01-01'
),
departmentemployees as
(
    select *
    from recentemployees
    where department_id = 1
)
select *
from departmentemployees;


-- show duplicate contact numbers
with duplicatecontacts as
(
    select
        contact_number,
        count(*) as total
    from employee
    group by contact_number
    having count(*) > 1
)
select *
from duplicatecontacts;


-- show duplicate first names
with duplicatenames as
(
    select
        first_name,
        count(*) as total
    from employee
    group by first_name
    having count(*) > 1
)
select *
from duplicatenames;


-- show employees who have duplicate contact numbers
with duplicatecontacts as
(
    select
        contact_number
    from employee
    group by contact_number
    having count(*) > 1
)
select
    e.employee_id,
    e.first_name,
    e.last_name,
    e.contact_number
from employee e
join duplicatecontacts d
    on e.contact_number = d.contact_number;


-- show employees with a salary category
with salarycategory as
(
    select
        employee_id,
        first_name,
        last_name,
        salary,
        case
            when salary >= 80000 then 'high salary'
            when salary >= 50000 then 'medium salary'
            else 'low salary'
        end as salary_category
    from employee
)
select *
from salarycategory;


-- show active employees with a salary category
with activeemployees as
(
    select *
    from employee
    where is_active = 1
),
salarycategory as
(
    select
        employee_id,
        first_name,
        last_name,
        salary,
        case
            when salary >= 80000 then 'high salary'
            when salary >= 50000 then 'medium salary'
            else 'low salary'
        end as salary_category
    from activeemployees
)
select *
from salarycategory;


-- calculate total and average salary of active employees
with activeemployees as
(
    select *
    from employee
    where is_active = 1
)
select
    count(*) as total_active_employees,
    sum(salary) as total_salary,
    avg(salary) as average_salary
from activeemployees;


-- update employees earning less than 40000
with lowsalaryemployees as
(
    select *
    from employee
    where salary < 40000
)
update lowsalaryemployees
set salary = salary + 5000;


-- deactivate employees who joined before 2020
with oldemployees as
(
    select *
    from employee
    where joining_date < '2020-01-01'
)
update oldemployees
set is_active = 0;


-- delete inactive employees who joined before 2019
with oldinactiveemployees as
(
    select *
    from employee
    where is_active = 0
    and joining_date < '2019-01-01'
)
delete from oldinactiveemployees;
