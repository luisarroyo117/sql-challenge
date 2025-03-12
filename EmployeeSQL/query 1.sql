--List the employee number, last name, first name, sex, and salary of each employee.
select
	employees.emp_no as "employee_nnumber"
	,salaries.emp_no as "employee_number"
,last_name
,first_name
,sex
,salary
from employees
inner join salaries on employees.emp_no=salaries.emp_no