-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no AS Employee_Number, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;