--List each employee in the Sales department, including their employee number, last name, and first name.
select 
	e.emp_no
	,e.last_name
	,e.first_name
	,dep.dept_name
from employees as e
inner join dept_manager as d on (e.emp_no=d.emp_no)
inner join departments as dep on (d.dept_no=dep.dept_no)
where dep.dept_name='Sales'