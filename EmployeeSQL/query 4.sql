--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select 
	d.dept_no
	,d.dept_name
	,e.emp_no
	,e.last_name
	,e.first_name
from employees as e
inner join dept_manager as dep on (e.emp_no=dep.emp_no)
inner join departments as d on (dep.dept_no=d.dept_no)