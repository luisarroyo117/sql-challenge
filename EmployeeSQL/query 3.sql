--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select 
	e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_no
	,d.dept_name
from employees as e
inner join dept_emp as dep on (e.emp_no=dep.emp_no)
inner join departments as d on (dep.dept_no=d.dept_no)
where e.emp_title='m0001'