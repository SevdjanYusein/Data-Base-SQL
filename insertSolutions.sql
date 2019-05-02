create table users (
	id int,
	email varchar(100) check(email like '%_@%_.%_'),
	password varchar(32),
	regdate date default current_date
);

create table friends (
	firstuser int,
	seconduser int
);

create table walls (
	userId int,
	writerId int,
	text varchar(512),
	date date default current_date
);

create table groups (
	groupId int,
	name varchar(100),
	description varchar(500) default ''
);

create table groupmembers (
	groupId int,
	userId int
);

alter table friends
add authorized boolean default 'false';
