--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name
	,last_name
	,sex
from employees
where last_name like 'B%'
and first_name='Hercules'