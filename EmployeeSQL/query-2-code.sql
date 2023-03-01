--List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees.first_name, employees.last_name, employees.hire_date
From employees
Where employees.hire_date > '1986-1-1'::date And employees.hire_date < '1987-1-1'::date;