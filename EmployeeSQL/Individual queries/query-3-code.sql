--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
From employees 
Join dept_manager ON employees.emp_no = dept_manager.emp_no
Join departments ON dept_manager.dept_no = departments.dept_no;