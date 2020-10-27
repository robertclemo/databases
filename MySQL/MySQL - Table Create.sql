CREATE table IF NOT EXISTS users 
(
userId int primary key AUTO_INCREMENT,
username varchar(10) not null,
pass varchar(10) not null\

);

INSERT INTO users (username, pass) values ('dunieski', 'pass')
INSERT INTO users (username, pass) values ('orlando', 'pass')

-- This concatenates columns username and pass
select concat(username,' ', pass) as "Full Name" from users


SELECT * FROM users

DELETE FROM users WHERE userId = 2

drop table users