create table Staff(
staff_id int IDENTITY(1,1) Primary key,
staff_first_name varchar(100) not null,
staff_Middle_name varchar(100),
staff_last_name varchar(100),
staff_Contact_number varchar(100),
staff_email varchar(100) unique,
staff_address varchar(100)
);

create table Client(
Client_id int IDENTITY(1,1) Primary key,
Client_first_name varchar(100) not null,
Client_Middle_name varchar(100),
Client_last_name varchar(100),
Client_Contact_number varchar(100),
Client_email varchar(100) unique,
Client_address varchar(100)
);


INSERT INTO Staff (staff_first_name, staff_Middle_name, staff_last_name, staff_Contact_number, staff_email, staff_address) VALUES
('Ram', 'Kumar', 'Sharma', '9841111111', 'ram.sharma@email.com', 'Kathmandu'),
('Sita', NULL, 'Adhikari', '9841111112', 'sita.adhikari@email.com', 'Lalitpur'),
('Hari', 'Prasad', 'Joshi', '9841111113', 'hari.joshi@email.com', 'Bhaktapur'),
('Gita', NULL, 'Thapa', '9841111114', 'gita.thapa@email.com', 'Pokhara'),
('Shyam', 'Bahadur', 'Karki', '9841111115', 'shyam.karki@email.com', 'Chitwan'),
('Anju', NULL, 'Shrestha', '9841111116', 'anju.shrestha@email.com', 'Dharan'),
('Ramesh', 'Kumar', 'Poudel', '9841111117', 'ramesh.poudel@email.com', 'Butwal'),
('Nisha', NULL, 'Rai', '9841111118', 'nisha.rai@email.com', 'Biratnagar'),
('Binod', 'Prasad', 'Chaudhary', '9841111119', 'binod.chaudhary@email.com', 'Nepalgunj'),
('Pooja', NULL, 'Maharjan', '9841111120', 'pooja.maharjan@email.com', 'Kirtipur'),
('Sunil', 'Kumar', 'Tamang', '9841111121', 'sunil.tamang@email.com', 'Hetauda'),
('Aarati', NULL, 'Giri', '9841111122', 'aarati.giri@email.com', 'Kavre'),
('Deepak', 'Raj', 'Bhandari', '9841111123', 'deepak.bhandari@email.com', 'Jhapa'),
('Saraswoti', NULL, 'Magar', '9841111124', 'saraswoti.magar@email.com', 'Dang'),
('Krishna', 'Prasad', 'Subedi', '9841111125', 'krishna.subedi@email.com', 'Surkhet');


INSERT INTO Client (Client_first_name, Client_Middle_name, Client_last_name, Client_Contact_number, Client_email, Client_address) VALUES
('Anil', 'Kumar', 'Shah', '9851111111', 'anil.shah@email.com', 'Kathmandu'),
('Maya', NULL, 'Devi', '9851111112', 'maya.devi@email.com', 'Lalitpur'),
('Rajesh', 'Prasad', 'Yadav', '9851111113', 'rajesh.yadav@email.com', 'Birgunj'),
('Soniya', NULL, 'Gurung', '9851111114', 'soniya.gurung@email.com', 'Pokhara'),
('Manoj', 'Bahadur', 'Singh', '9851111115', 'manoj.singh@email.com', 'Mahendranagar'),
('Sapana', NULL, 'Basnet', '9851111116', 'sapana.basnet@email.com', 'Itahari'),
('Prakash', 'Kumar', 'Dahal', '9851111117', 'prakash.dahal@email.com', 'Jhapa'),
('Kiran', NULL, 'Sherpa', '9851111118', 'kiran.sherpa@email.com', 'Solukhumbu'),
('Suman', 'Raj', 'Khatri', '9851111119', 'suman.khatri@email.com', 'Bhaktapur'),
('Rupa', NULL, 'Shrestha', '9851111120', 'rupa.shrestha@email.com', 'Banepa'),
('Santosh', 'Kumar', 'Mishra', '9851111121', 'santosh.mishra@email.com', 'Janakpur'),
('Kabita', NULL, 'Bista', '9851111122', 'kabita.bista@email.com', 'Dhangadhi'),
('Arjun', 'Prasad', 'Regmi', '9851111123', 'arjun.regmi@email.com', 'Palpa'),
('Laxmi', NULL, 'Rijal', '9851111124', 'laxmi.rijal@email.com', 'Gorkha'),
('Bikram', 'Bahadur', 'Gharti', '9851111125', 'bikram.gharti@email.com', 'Baglung');


Select * from Staff
UNION All
Select * from Client;

select * from Staff
union
select * from Client;

select * from Staff
union all
select * from Client;

select staff_first_name, staff_last_name from Staff
union
select Client_first_name, Client_last_name from Client;

select staff_first_name, staff_last_name from Staff
union all
select Client_first_name, Client_last_name from Client;

select staff_first_name, staff_email from Staff
union
select Client_first_name, Client_email from Client;

select staff_first_name, staff_Contact_number from Staff
union all
select Client_first_name, Client_Contact_number from Client;

select staff_first_name, staff_address from Staff
union
select Client_first_name, Client_address from Client;

select staff_address from Staff
union
select Client_address from Client;

select staff_address from Staff
union all
select Client_address from Client;

select staff_first_name, staff_last_name, staff_address from Staff
where staff_address = 'Kathmandu'
union all
select Client_first_name, Client_last_name, Client_address from Client
where Client_address = 'Kathmandu';

select staff_first_name, staff_last_name, staff_address from Staff
where staff_address = 'Pokhara'
union all
select Client_first_name, Client_last_name, Client_address from Client
where Client_address = 'Pokhara';

select staff_first_name, staff_last_name from Staff
where staff_first_name like 'S%'
union all
select Client_first_name, Client_last_name from Client
where Client_first_name like 'S%';

select staff_first_name, staff_last_name from Staff
where staff_last_name like '%Sh%'
union all
select Client_first_name, Client_last_name from Client
where Client_last_name like '%Sh%';

select staff_first_name, staff_Middle_name, staff_last_name from Staff
where staff_Middle_name is null
union all
select Client_first_name, Client_Middle_name, Client_last_name from Client
where Client_Middle_name is null;

select staff_first_name, staff_Middle_name, staff_last_name from Staff
where staff_Middle_name is not null
union all
select Client_first_name, Client_Middle_name, Client_last_name from Client
where Client_Middle_name is not null;

select staff_first_name + ' ' + staff_last_name as full_name from Staff
union all
select Client_first_name + ' ' + Client_last_name as full_name from Client;

select staff_first_name + ' ' + isnull(staff_Middle_name + ' ', '') + staff_last_name as full_name from Staff
union all
select Client_first_name + ' ' + isnull(Client_Middle_name + ' ', '') + Client_last_name as full_name from Client;

select staff_id, staff_first_name, staff_last_name from Staff
where staff_id between 1 and 5
union all
select Client_id, Client_first_name, Client_last_name from Client
where Client_id between 1 and 5;

select staff_id, staff_first_name, staff_last_name from Staff
where staff_id > 10
union all
select Client_id, Client_first_name, Client_last_name from Client
where Client_id > 10;

select staff_first_name, staff_last_name, staff_email from Staff
where staff_email like '%email.com'
union all
select Client_first_name, Client_last_name, Client_email from Client
where Client_email like '%email.com';

select 'Staff' as person_type, staff_first_name, staff_last_name, staff_email from Staff
union all
select 'Client' as person_type, Client_first_name, Client_last_name, Client_email from Client;

select 'Staff' as person_type, staff_id, staff_first_name, staff_last_name, staff_address from Staff
union all
select 'Client' as person_type, Client_id, Client_first_name, Client_last_name, Client_address from Client;

select 'Staff' as person_type, staff_first_name, staff_Contact_number from Staff
where staff_Contact_number like '984%'
union all
select 'Client' as person_type, Client_first_name, Client_Contact_number from Client
where Client_Contact_number like '985%';

select staff_first_name, staff_last_name, staff_address from Staff
where staff_address in ('Kathmandu', 'Lalitpur', 'Pokhara')
union all
select Client_first_name, Client_last_name, Client_address from Client
where Client_address in ('Kathmandu', 'Lalitpur', 'Pokhara');

select staff_first_name as first_name, staff_last_name as last_name, staff_address as address from Staff
union all
select Client_first_name as first_name, Client_last_name as last_name, Client_address as address from Client
order by first_name;

select staff_first_name as first_name, staff_last_name as last_name, staff_address as address from Staff
union all
select Client_first_name as first_name, Client_last_name as last_name, Client_address as address from Client
order by address;

select staff_address, count(*) as total from Staff
group by staff_address
union all
select Client_address, count(*) as total from Client
group by Client_address;

select 'Staff' as table_name, count(*) as total from Staff
union all
select 'Client' as table_name, count(*) as total from Client;

select count(*) as total_people from
(
select staff_id as id from Staff
union all
select Client_id as id from Client
) as all_people;

select address, count(*) as total from
(
select staff_address as address from Staff
union all
select Client_address as address from Client
) as all_address
group by address;

select address, count(*) as total from
(
select staff_address as address from Staff
union all
select Client_address as address from Client
) as all_address
group by address
having count(*) > 1;






