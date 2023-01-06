show databases;
use sql_basic;

show tables;

create table employees (Emp_Id int primary key, Emp_name varchar(25),
Age int, Gender char(1), DOJ date, Dept varchar(20), City varchar(15), Salary float);

describe employees;

insert into employees values(101, "MahFuj", 24, 'M', "2022-01-01", "IT", "Narayanganj", "120000"),
(102, "Edward", 25, 'M', "2023-01-01", "Support", "Dhaka", "100000"),
(103, "Tony", 26, 'M', "2022-06-01", "Tech", "Cumilla", "110000"),
(104, "Thor", 27, 'M', "2023-02-01", "Physics", "Chitagong", "105000"),
(105, "Hulk", 28, 'M', "2023-03-01", "Chemistry", "Sylhet", "106000");
insert into employees values(106, "Goku", 25, 'M', "2023-01-01", "Support", "Dhaka", "100000");
insert into employees values(107, "Vegeta", 25, 'M', "2023-01-01", "Support", "Dhaka", "100000");

select * from employees;

select distinct city from employees;

select avg(age) from employees;

# Avg age in each dept;
select dept, round(avg(age),2) as average_age from employees group by dept;

select dept, sum(salary) as total_salary from employees group by dept;

select count(emp_id), city from employees 
group by city 
order by count(emp_id) desc;

select year(DOJ) as year, count(emp_id) from employees group by year(DOJ);

create table sales(product_id int, sell_price float, quantity int, state varchar(20));

show tables;
describe sales;

insert into sales values
(121, 320.0, 3, 'California'),
(121, 320.0, 6, 'Texas'),
(121, 320.0, 4, 'Alaska'),
(123, 290.0, 2, 'Texas'),
(123, 290.00, 7, 'Califronia'),
(123, 290.00, 4, 'Washington'),
(121, 320.0, 7, 'Ohio'),
(121, 320.0, 2, 'Arizoana'),
(123, 290.00, 8, 'Colorado');

select * from sales;

select product_id, sum(sell_price * quantity) as revenue from sales group by product_id;

create table c_product (product_id int, cost_price float);

insert into c_product values
(121, 270.0),
(123, 250.0);

select c.product_id, sum((s.sell_price - c.cost_price) * s.quantity) as profit
from sales as s inner join c_product as c 
where s.product_id = c.product_id
group by c.product_id;

select * from employees;

select dept, avg(salary) as avg_salary from employees group by dept having avg(salary) > 100000;

select city, sum(salary) as total from employees group by city having sum(salary) > 100000;

select dept, count(*) as emp_count from employees group by dept having count(*) > 2;

select city, count(*) as emp_count from employees 
where city != "Dhaka" group by city having count(*) >= 1;

select dept, count(*) as emp_count from employees group by dept having avg(salary) > 75000;