# AND Operator;
select * from emp_details where DOJ between '1995-01-01' and '2000-10-10';

select * from emp_details where age > 25 and gender = 'M';

# OR Operator;
select * from emp_details where city = 'New York' or city = 'Asgard';

# Not Operator
select * from emp_details where not city = 'New York';