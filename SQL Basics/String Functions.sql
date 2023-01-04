# String Functions

select upper('Bangladesh') as upper_case;

select lower('Bangladesh') as lower_case;

select lcase('Bangladesh') as lower_case;

select character_length('Bangladesh') as total_length;

select name, character_length(name) as name_length from emp_details;

select name, char_length(name) as name_length from emp_details;

select concat("Bangladesh", " Nation") as Concate;

select name, age, concat(name, " ", age) as name_age from emp_details;

select reverse("Bangladesh");

select reverse(name) from emp_details;

select replace("Orochimaru is Bad", "Bad", "Badly Good");

select length("            Bangladesh        ");

select ltrim("            Bangladesh        ");

select length(ltrim("            Bangladesh        "));

select length(rtrim("            Bangladesh        "));

select length(trim("            Bangladesh        "));

select position("fruit" in "Orange is a fruit") as name;

select ascii('4');