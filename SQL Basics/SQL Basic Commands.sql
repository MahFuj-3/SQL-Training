# Create a Database;
create database sql_basic;

# Drop or Delete a Database;
drop database sql_basic;

# Show Existing Database;
show databases;

# Use a specific Database for Further Executions;
use sql_basic;

# List of Table in the Database;
show tables;

# Create a Table;
create table emp_details (Name varchar(25), Age int, Gender char(1), DOJ date, 
City varchar(15), Salary float);

# Delete only the data inside the table;
truncate table emp_details;

# Delete a Table;
drop table emp_details;

# Describe a table, Shows Column Name and their Data types;
describe emp_details;

# Insert data to a table;
insert into emp_details values
("Edward", 25, "M", "1997-02-04", "California", 50000),
("Tony", 28, "M", "1994-02-04", "Los-Angeles", 60000),
("Thor", 26, "M", "1996-02-04", "Asgard", 55000),
("Natasha", 24, "F", "1998-02-04", "New York", 57000);

insert into emp_details values("Spidy", 22, "m", "2000-02-04", "New York", 52000);

# Display all data from the table;
select * from emp_details;

# Display certain data without any duplicates
select distinct city from emp_details;

# Display Data from specific columns only;
select name, age, city from emp_details;


select gender, sum(salary) as total_salary from emp_details group by gender;

select * from emp_details order by salary;

select * from emp_details order by salary desc;

select (10+20) as addition;

select (10.0000+20.0000) as addition;

select round((10.0000+20.0000),2) as addition;

select length('Bangladesh') as total_length;

select repeat('@', 10);

select upper("Bangladesh");

select lower("Bangladesh");

select curdate();

select day(curdate());

select now();