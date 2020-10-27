create table users(
userId serial primary key,
username text not null,
pass text not null
)

insert into users (username, pass) values ('dunieski', 'pass')

select * from users



