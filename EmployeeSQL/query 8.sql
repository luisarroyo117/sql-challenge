--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select
	last_name
	,count(*)
from employees
group by last_name