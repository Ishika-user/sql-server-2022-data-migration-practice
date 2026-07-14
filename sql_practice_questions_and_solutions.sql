-- display all columns for american cities with a population greater than 100000.
select *
from city
where countrycode = 'usa'
and population > 100000;

-- display the names of american cities with a population greater than 120000.
select name
from city
where countrycode = 'usa'
and population > 120000;

-- display all details of cities located in japan.
select *
from city
where countrycode = 'jpn';

-- display the names and populations of indian cities, starting with the largest population.
select name, population
from city
where countrycode = 'ind'
order by population desc;

-- display all unique districts found in american cities.
select distinct district
from city
where countrycode = 'usa';

-- display cities with populations between 100000 and 500000.
select *
from city
where population between 100000 and 500000;

-- display all cities that are not located in the usa.
select *
from city
where countrycode <> 'usa';

-- display cities whose names start with the letter a.
select *
from city
where name like 'a%';

-- display cities whose names end with the letter a.
select *
from city
where name like '%a';

-- display cities whose names contain the word ville.
select *
from city
where name like '%ville%';

-- display cities whose names contain exactly six characters.
select *
from city
where len(name) = 6;

-- display cities where the district value is missing.
select *
from city
where district is null;

-- display the five most populated cities.
select top 5 *
from city
order by population desc;

-- display the five least populated cities.
select top 5 *
from city
order by population asc;

-- count the total number of cities.
select count(*) as total_cities
from city;

-- count the number of cities for each country code.
select countrycode, count(*) as total_cities
from city
group by countrycode;

-- display the highest city population.
select max(population) as highest_population
from city;

-- display the lowest population among american cities.
select min(population) as lowest_usa_population
from city
where countrycode = 'usa';

-- display the average population of american cities.
select avg(population) as average_usa_population
from city
where countrycode = 'usa';

-- display the total city population for each country code.
select countrycode, sum(population) as total_population
from city
group by countrycode;

-- display country codes that have more than ten cities.
select countrycode, count(*) as total_cities
from city
group by countrycode
having count(*) > 10;

-- display the average city population for each american district.
select district, avg(population) as average_population
from city
where countrycode = 'usa'
group by district;

-- display cities with populations greater than the average city population.
select *
from city
where population > (
    select avg(population)
    from city
);

-- display city names, country names and continents for cities located in europe.
select
    c.name as city_name,
    co.name as country_name,
    co.continent
from city c
join country co
on c.countrycode = co.code
where co.continent = 'europe';

-- display countries that do not have any cities in the city table.
select *
from country co
where not exists (
    select 1
    from city c
    where c.countrycode = co.code
);

-- display all active employees.
select *
from employee
where is_active = 1;

-- display employees whose salaries are greater than 60000.
select *
from employee
where salary > 60000;

-- display employees between 25 and 35 years old.
select *
from employee
where age between 25 and 35;

-- display employees who work in departments 1, 2 or 3.
select *
from employee
where department_id in (1, 2, 3);

-- display employees who do not work in departments 4 or 5.
select *
from employee
where department_id not in (4, 5);

-- display employees who joined in 2025.
select *
from employee
where year(joining_date) = 2025;

-- display employees who joined in july 2025.
select *
from employee
where year(joining_date) = 2025
and month(joining_date) = 7;

-- display employees whose first names start with a or b.
select *
from employee
where first_name like 'a%'
or first_name like 'b%';

-- display employees whose last names contain the letters ar.
select *
from employee
where last_name like '%ar%';

-- display employees who do not have a middle name.
select *
from employee
where middle_name is null;

-- display the full name of every employee.
select
    concat(first_name, ' ', middle_name, ' ', last_name) as full_name
from employee;

-- display each employee's monthly and annual salary.
select
    employee_id,
    first_name,
    salary as monthly_salary,
    salary * 12 as annual_salary
from employee;

-- display the five highest-paid employees.
select top 5 *
from employee
order by salary desc;

-- display employees receiving the second-highest salary.
select *
from employee
where salary = (
    select max(salary)
    from employee
    where salary < (
        select max(salary)
        from employee
    )
);

-- display the average salary of all employees.
select avg(salary) as average_salary
from employee;

-- display employees earning more than the average salary.
select *
from employee
where salary > (
    select avg(salary)
    from employee
);

-- count the number of employees in each department.
select
    department_id,
    count(*) as total_employees
from employee
group by department_id;

-- display the average employee salary in each department.
select
    department_id,
    avg(salary) as average_salary
from employee
group by department_id;

-- display departments that have more than five active employees.
select
    department_id,
    count(*) as active_employees
from employee
where is_active = 1
group by department_id
having count(*) > 5;

-- display employee names with their department names and locations.
select
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    d.location
from employee e
join department d
on e.department_id = d.department_id;

-- display all departments and count the number of employees in each department.
select
    d.department_id,
    d.department_name,
    count(e.employee_id) as total_employees
from department d
left join employee e
on d.department_id = e.department_id
group by
    d.department_id,
    d.department_name;

-- display departments that do not have any employees.
select *
from department d
where not exists (
    select 1
    from employee e
    where e.department_id = d.department_id
);

-- display departments that have at least one active employee.
select *
from department d
where exists (
    select 1
    from employee e
    where e.department_id = d.department_id
    and e.is_active = 1
);

-- display employees earning more than at least one employee in department 1.
select *
from employee
where salary > any (
    select salary
    from employee
    where department_id = 1
    and salary is not null
);

-- display employees earning more than every employee in department 1.
select *
from employee
where salary > all (
    select salary
    from employee
    where department_id = 1
    and salary is not null
);

-- display employees whose salary matches any salary in department 2.
select *
from employee
where salary = any (
    select salary
    from employee
    where department_id = 2
    and salary is not null
);

-- display the highest-paid employee in each department.
select *
from employee e
where salary = (
    select max(e2.salary)
    from employee e2
    where e2.department_id = e.department_id
);

-- rank all employees according to salary using dense_rank.
select
    employee_id,
    first_name,
    last_name,
    salary,
    dense_rank() over (
        order by salary desc
    ) as salary_rank
from employee;

-- number employees within each department according to salary.
select
    employee_id,
    first_name,
    department_id,
    salary,
    row_number() over (
        partition by department_id
        order by salary desc
    ) as employee_number
from employee;

-- display a running total of employee salaries.
select
    employee_id,
    first_name,
    salary,
    sum(salary) over (
        order by employee_id
    ) as running_salary_total
from employee;

-- categorize employees as high, medium or low salary earners.
select
    employee_id,
    first_name,
    salary,
    case
        when salary >= 70000 then 'high salary'
        when salary >= 50000 then 'medium salary'
        else 'low salary'
    end as salary_category
from employee;

-- display the number of years each employee has worked.
select
    employee_id,
    first_name,
    joining_date,
    datediff(year, joining_date, getdate()) as years_of_service
from employee;

-- use a common table expression to display employees earning more than 60000.
with high_salary_employees as (
    select *
    from employee
    where salary > 60000
)
select *
from high_salary_employees;

-- display active and inactive employees together with their employment status.
select
    employee_id,
    first_name,
    last_name,
    'active' as employment_status
from employee
where is_active = 1

union all

select
    employee_id,
    first_name,
    last_name,
    'inactive' as employment_status
from employee
where is_active = 0;

-- display ten employees at a time using pagination.
select *
from employee
order by employee_id
offset 0 rows
fetch next 10 rows only;
