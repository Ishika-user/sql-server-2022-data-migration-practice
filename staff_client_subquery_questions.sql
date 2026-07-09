--Find staff whose address is also used by client
select * from Staff
where staff_address in (
select Client_address from Client
);

--Find clients whose address is also used by staff
select * from Client
where Client_address in (
select staff_address from Staff
);

--Find staff whose address is not used by any client
select * from Staff
where staff_address not in (
select Client_address from Client
);

--Find clients whose address is not used by any staff
select * from Client
where Client_address not in (
select staff_address from Staff
);

--Find staff whose first name is also used by client
select * from Staff
where staff_first_name in (
select Client_first_name from Client
);

--Find clients whose first name is also used by staff
select * from Client
where Client_first_name in (
select staff_first_name from Staff
);

--Find staff whose last name is also used by client
select * from Staff
where staff_last_name in (
select Client_last_name from Client
);

--Find clients whose last name is also used by staff
select * from Client
where Client_last_name in (
select staff_last_name from Staff
);

--Find staff who have same address as client named Anil
select * from Staff
where staff_address in (
select Client_address from Client
where Client_first_name = 'Anil'
);

--Find clients who have same address as staff named Ram
select * from Client
where Client_address in (
select staff_address from Staff
where staff_first_name = 'Ram'
);

--Find staff whose address has more than one client
select * from Staff
where staff_address in (
select Client_address from Client
group by Client_address
having count(*) > 1
);

--Find clients whose address has more than one staff
select * from Client
where Client_address in (
select staff_address from Staff
group by staff_address
having count(*) > 1
);

--Find staff whose address has only one client
select * from Staff
where staff_address in (
select Client_address from Client
group by Client_address
having count(*) = 1
);

--Find clients whose address has only one staff
select * from Client
where Client_address in (
select staff_address from Staff
group by staff_address
having count(*) = 1
);

--Find staff whose id is greater than average client id
select * from Staff
where staff_id > (
select avg(Client_id) from Client
);

--Find clients whose id is greater than average staff id
select * from Client
where Client_id > (
select avg(staff_id) from Staff
);

--Find staff whose id is less than average client id
select * from Staff
where staff_id < (
select avg(Client_id) from Client
);

--Find clients whose id is less than average staff id
select * from Client
where Client_id < (
select avg(staff_id) from Staff
);

--Find staff whose id is equal to highest client id
select * from Staff
where staff_id = (
select max(Client_id) from Client
);

--Find client whose id is equal to highest staff id
select * from Client
where Client_id = (
select max(staff_id) from Staff
);

--Find staff whose id is equal to lowest client id
select * from Staff
where staff_id = (
select min(Client_id) from Client
);

--Find client whose id is equal to lowest staff id
select * from Client
where Client_id = (
select min(staff_id) from Staff
);

--Find staff who have middle name and address is also in client table
select * from Staff
where staff_Middle_name is not null
and staff_address in (
select Client_address from Client
);

--Find clients who have middle name and address is also in staff table
select * from Client
where Client_Middle_name is not null
and Client_address in (
select staff_address from Staff
);

--Find staff who do not have middle name and address is also in client table
select * from Staff
where staff_Middle_name is null
and staff_address in (
select Client_address from Client
);

--Find clients who do not have middle name and address is also in staff table
select * from Client
where Client_Middle_name is null
and Client_address in (
select staff_address from Staff
);

--Find staff if there is any client from Kathmandu
select * from Staff
where exists (
select * from Client
where Client_address = 'Kathmandu'
);

--Find clients if there is any staff from Pokhara
select * from Client
where exists (
select * from Staff
where staff_address = 'Pokhara'
);

--Find staff whose address matches any client address using exists
select * from Staff s
where exists (
select * from Client c
where c.Client_address = s.staff_address
);

--Find clients whose address matches any staff address using exists
select * from Client c
where exists (
select * from Staff s
where s.staff_address = c.Client_address
);

--Find staff whose address does not match any client address using not exists
select * from Staff s
where not exists (
select * from Client c
where c.Client_address = s.staff_address
);

--Find clients whose address does not match any staff address using not exists
select * from Client c
where not exists (
select * from Staff s
where s.staff_address = c.Client_address
);
