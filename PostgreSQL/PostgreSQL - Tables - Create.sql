
-- IF NOT EXISTS => This will check if the table exists before creating it 
-- keywords need to be enclosed in double quotes to be able to use them
create table if not exists "user" 
(
userid serial primary key,
firstname varchar(10) not null,
lastname varchar(12) not null,
"password" varchar(10) not null 
--creation_time timestamp 
--start_time timestamp not null,
--end_time timestamp not null,
--intvl interval not null
)

select * from "user"
drop table "user"


-- firstname contains more than 10 character which throws an error, it won't compile
-- insert into users (firstname, lastname) values ('dlajsfljsfasdjfaskjflasdlfjklasdjfkljasdklfjlkasjdf', 'otano')

insert into users (firstname, lastname) values ('Dunieski', 'Ramos')
insert into users (firstname, lastname) values ('Orlando', 'Ramos')

-- Confirm table was created
select * from users 

-- This will return the length of the firstnames
select length(firstname) from users 

-- This will return every field/column/attributes with aliases (The column name)
select firstname as "First Name", lastname as "Last Name" from users 



-- Create table named Employee
create table if not exists employees
(
employee_id varchar(10) primary key,
lastname varchar(10) not null,
firstname varchar(10) not null,
address text not null,
totalprice money not null, -- use the money type
price numeric(18,2) not null,-- this will acept floating points with 18 numbers before decimal point and 2 numbers after it
dept_id varchar(5) not null unique-- unique => this ensures that dept_ids will not be the same (will be unique)
)

--drop table employees

select * from employees -- reads the entire table

select length(firstname) from employees -- gets the length of first names

select employee_id as "Employee ID", lastname as "Last Name", firstname as "First Name", dept_id as "Department ID" from employees -- reads columns with aliases

insert into employees (employee_id, lastname, firstname, dept_id) values ('AWS001', 'Ramirez', 'Carlos', 'HR001')
insert into employees (employee_id, lastname, firstname, dept_id) values ('AWS002', 'Rodriguez', 'Antonio', 'HR002')




--drop table users