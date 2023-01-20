show databases;
use sql_basic;

show tables;

create table owners(id int not null);

alter table owners
add column name varchar(30) not null after id,
add column gender varchar(7) after name,
add column phone varchar(10) after gender;

alter table owners modify id int not null auto_increment primary key;

drop table owners;

describe owners;

show columns from owners;

insert into owners(name, gender, phone) values
("David", "Male", 1111111),
("Rebecca", "Female", 2222222),
("Jordan", "Male", 3333333);

select * from owners;

create table pets(pet_id int not null primary key auto_increment, owner_id int, index(owner_id), name varchar(30), gender varchar(7), breed varchar(10), age int(11) );

describe pets;

create view name_and_phone as select name, phone from owners;

select * from name_and_phone;