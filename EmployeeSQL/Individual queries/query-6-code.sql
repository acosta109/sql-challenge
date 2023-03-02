-- List each employee in the Sales department, 
-- including their employee number, last name, and first name.

SELECT employees.emp_no, employees.first_name, employees.last_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';