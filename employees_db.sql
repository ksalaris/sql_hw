select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary 
from salaries 
inner join employees on 
employees.emp_no=salaries.emp_no;

select emp_no, last_name, first_name, Extract(YEAR from hire_date) 
from employees where Extract(YEAR from hire_date) = 1986

select departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name,
dept_manager.from_date, dept_manager.to_date
from dept_manager
inner join departments on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no 

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no

select emp_no, first_name, last_name from employees 
where first_name = 'Hercules' and last_name LIKE 'B%'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where dept_emp.dept_no = 'd007'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005'

select last_name, count(last_name) as "name count" from employees
group by last_name
order by "name count" DESC;

select first_name, last_name from employees where emp_no = 499942