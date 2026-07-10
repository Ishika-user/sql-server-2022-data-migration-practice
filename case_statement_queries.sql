-- show employee salary category
select first_name, last_name, salary,
case
when salary > 70000 then 'high salary'
when salary between 50000 and 70000 then 'medium salary'
else 'low salary'
end as salary_category
from employee;

-- show employee age group
select first_name, last_name, age,
case
when age < 25 then 'young'
when age between 25 and 35 then 'adult'
else 'senior'
end as age_group
from employee;

-- show employee active status
select first_name, last_name, is_active,
case
when is_active = 1 then 'active employee'
else 'inactive employee'
end as employment_status
from employee;

-- show middle name status
select first_name, middle_name, last_name,
case
when middle_name is null or middle_name = '' then 'middle name not available'
else 'middle name available'
end as middle_name_status
from employee;

-- show employee joining status
select first_name, last_name, joining_date,
case
when year(joining_date) >= 2024 then 'new employee'
else 'old employee'
end as joining_status
from employee;

-- show employee bonus status
select first_name, last_name, salary,
case
when salary < 60000 then 'eligible for bonus'
else 'not eligible'
end as bonus_status
from employee;

-- show employee department type
select first_name, last_name, department_id,
case
when department_id = 1 then 'data team'
when department_id = 2 then 'finance team'
else 'other team'
end as department_type
from employee;

-- show department size
select dep_name, number_of_employees,
case
when number_of_employees > 20 then 'large department'
else 'small department'
end as department_size
from department;

-- show department location status
select dep_name, location,
case
when location = 'lalitpur' then 'main branch'
else 'other branch'
end as location_status
from department;

-- show staff location status
select first_name, last_name, address,
case
when address = 'jhapa' then 'from jhapa'
else 'from other place'
end as staff_location_status
from staff;

-- show client location status
select first_name, last_name, address,
case
when address = 'lalitpur' then 'local client'
else 'outside client'
end as client_location_status
from client;

-- show staff email status
select first_name, last_name, email,
case
when email is null or email = '' then 'email missing'
else 'email available'
end as email_status
from staff;

-- show client middle name status
select first_name, middle_name, last_name,
case
when middle_name is null or middle_name = '' then 'middle name missing'
else 'full name available'
end as name_status
from client;

-- show employee tax level
select first_name, last_name, salary,
case
when salary > 80000 then 'high tax'
when salary > 50000 then 'medium tax'
else 'low tax'
end as tax_level
from employee;

-- show employee increment status using average salary
select first_name, last_name, salary,
case
when salary < (select avg(salary) from employee) then 'needs increment'
else 'salary is good'
end as increment_status
from employee;

-- order employees by salary level using case
select first_name, last_name, salary,
case
when salary > 70000 then 'high salary'
when salary between 50000 and 70000 then 'medium salary'
else 'low salary'
end as salary_category
from employee
order by
case
when salary > 70000 then 1
when salary between 50000 and 70000 then 2
else 3
end;

-- show department priority
select dep_name,
case
when dep_name = 'finance' then 'high priority'
else 'normal priority'
end as department_priority
from department;

-- show employee work area using join and case
select e.first_name, e.last_name, d.dep_name,
case
when d.dep_name = 'finance' then 'finance area'
when d.dep_name = 'it' then 'it area'
else 'general area'
end as work_area
from employee e
join department d
on e.department_id = d.depid;

-- count active and inactive employees using case
select
sum(case when is_active = 1 then 1 else 0 end) as active_employees,
sum(case when is_active = 0 then 1 else 0 end) as inactive_employees
from employee;

-- count employees by salary category using case
select
sum(case when salary > 70000 then 1 else 0 end) as high_salary_employees,
sum(case when salary between 50000 and 70000 then 1 else 0 end) as medium_salary_employees,
sum(case when salary < 50000 then 1 else 0 end) as low_salary_employees
from employee;

-- show employee salary grade
select first_name, last_name, salary,
case
when salary >= 90000 then 'grade a'
when salary >= 70000 then 'grade b'
when salary >= 50000 then 'grade c'
else 'grade d'
end as salary_grade
from employee;

-- show employee career stage
select first_name, last_name, age,
case
when age >= 60 then 'near retirement'
when age >= 40 then 'experienced employee'
else 'early career employee'
end as career_stage
from employee;

-- show department capacity status
select dep_name, number_of_employees,
case
when number_of_employees >= 25 then 'full capacity'
when number_of_employees >= 15 then 'medium capacity'
else 'low capacity'
end as capacity_status
from department;

-- show employee contact number status
select first_name, last_name, contact_number,
case
when contact_number is null or contact_number = '' then 'contact missing'
else 'contact available'
end as contact_status
from employee;

-- show department head status
select dep_name, department_head,
case
when department_head is null or department_head = '' then 'head not assigned'
else 'head assigned'
end as department_head_status
from department;

-- show salary comparison with department 2 max salary
select first_name, last_name, salary,
case
when salary > (select max(salary) from employee where department_id = 2) then 'higher than department 2 max salary'
else 'not higher than department 2 max salary'
end as salary_comparison
from employee;

-- show salary comparison with company average
select first_name, last_name, salary,
case
when salary > (select avg(salary) from employee) then 'above company average'
when salary = (select avg(salary) from employee) then 'equal to company average'
else 'below company average'
end as average_salary_status
from employee;

-- show staff address category
select first_name, last_name, address,
case
when address = 'lalitpur' then 'valley staff'
when address = 'jhapa' then 'eastern staff'
else 'other region staff'
end as address_category
from staff;

-- show client email domain status
select first_name, last_name, email,
case
when email like '%gmail.com' then 'gmail user'
when email like '%yahoo.com' then 'yahoo user'
else 'other email user'
end as email_domain_status
from client;

-- show employee profile status
select first_name, middle_name, last_name, contact_number,
case
when middle_name is not null and contact_number is not null then 'complete profile'
else 'incomplete profile'
end as profile_status
from employee;
