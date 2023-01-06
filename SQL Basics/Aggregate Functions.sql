# Display number of rows in a column;
select count(name) as count_name from emp_details;

# Display Sum of all data in a column;
select sum(salary) as total_salary from emp_details;

# Display Avarage value of all data in a column;
select avg(salary) as avarage_salary from emp_details;

# Display Minimum value of all data in a column;
select min(salary) as minimum_salary from emp_details;

# Display Maximum value of all data in a column;
select max(salary) as maximum_salary from emp_details;