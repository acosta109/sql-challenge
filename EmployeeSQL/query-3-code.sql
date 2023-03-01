--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
FROM employees 
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no;