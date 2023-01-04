create database sql_basic;
show databases;

create table emp_details (Name varchar(25), Age int, Gender char(1), DOJ date, 
City varchar(15), Salary float);

describe emp_details;

insert into emp_details values
("Edward", 25, "M", "1997-02-04", "California", 50000),
("Tony", 28, "M", "1994-02-04", "Los-Angeles", 60000),
("Thor", 26, "M", "1996-02-04", "Asgard", 55000),
("Natasha", 24, "F", "1998-02-04", "New York", 57000);

insert into emp_details values("Spidy", 22, "m", "2000-02-04", "New York", 52000);

select * from emp_details;

select distinct city from emp_details;

select count(name) as count_name from emp_details;

select sum(salary) as total_salary from emp_details;

select avg(salary) as avarage_salary from emp_details;

select name, age, city from emp_details;

select * from emp_details where age > 26;

select name, gender, city from emp_details where gender = 'F';

select * from emp_details where city = 'New York' or city = 'Asgard';

select * from emp_details where city in("New York", "Asgard");

select * from emp_details where DOJ between '1995-01-01' and '2000-10-10';

select * from emp_details where age > 25 and gender = 'M';

select gender, sum(salary) as total_salary from emp_details group by gender;

select * from emp_details order by salary;

select * from emp_details order by salary desc;

select (10+20) as addition;

select length('Bangladesh') as total_length;

select repeat('@', 10);

select upper("Bangladesh");

select lower("Bangladesh");

select curdate();

select day(curdate());

select now();