show tables;

create table cats(id int(11) not null primary key auto_increment, name varchar(30));

describe cats;

alter table cats add age int;

insert into cats(name) values("kitty"),("kitty cat");

select * from cats;

alter table cats modify column age int not null;

update cats set age=0;

update cats set age=2 where id=2;

alter table cats add unique(age);

#Change Primary Key 
alter table cats modify id int not null;

alter table cats drop primary key;

alter table cats modify column id int not null auto_increment primary key;

#Foreign Key
alter table cats add owner_id int;
alter table cats add constraint fk_owner_id_cats foreign key (owner_id) references owners(id);

update cats set owner_id=1 where id=1;

select * from cats join owners on cats.owner_id=owners.id;

alter table cats add check(age>=1);

