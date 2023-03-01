-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no AS Employee_Number, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees.first_name, employees.last_name, employees.hire_date
From employees
Where employees.hire_date > '1986-1-1'::date And employees.hire_date < '1987-1-1'::date;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
From employees 
Join dept_manager ON employees.emp_no = dept_manager.emp_no
Join departments ON dept_manager.dept_no = departments.dept_no;

--4. List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;
