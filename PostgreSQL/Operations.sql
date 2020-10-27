
-- DML => Data Manipulation Language => Manipulating Data
-- Used to read the entire table and brings objects whose age is greater than 34 and organizes them by age (asc)
select * from users where ages > 34 order by ages

-- Used to read particular field (username) and order alphabetically by username 
select username from users order by username  

-- Used to Add info to the table
insert into users (username, pass, ages) values ('orlando', 'pass', 34)
insert into users (username, pass, ages) values ('dunieski', 'pass', 44)
insert into users (username, pass, ages) values ('yanet', 'pass', 36)

-- This will insert multiple records at the same time
insert into users (username, pass, ages) values 
('julio', 'pass', 37),
('antonio', 'pass', 49)

-- Used to Update the table
update users set pass='pass' where userid = 4

-- Used to Delete a record from a table
delete from users where userid = 4 

-- Used to read unique records from tables
select distinct username, pass from users


-- DDL => Data Definition Language => Manipulating Tables
-- Delete a table named users, both data and structure
drop table users

-- Create a table named users
create table users
(userid serial primary key,
username text not null,
pass text not null,
ages int not null)

-- Truncate a table => empty the table but not delete the table structure
truncate table users 
