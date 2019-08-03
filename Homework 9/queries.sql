-- 1) List the following details of each employee:
-- employee number, last name, first name, gender, and salary.
select e.emp_no, last_name, first_name, gender, salary
from employees e, salaries
where e.emp_no = salaries.emp_no
order by e.emp_no;


-- 2) List employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date
from employees
where date_part('year', hire_date) = 1986;


-- 3) List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name,
-- first name, and start and end employment dates.
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments d, dept_manager dm, employees e
where d.dept_no = dm.dept_no and
	dm.emp_no = e.emp_no;
	

-- 4) List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no and
	de.dept_no = d.dept_no;


-- 5) List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%';


-- 6) List all employees in the Sales department, including their employee number,
-- last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where de.emp_no = e.emp_no and
	de.dept_no = d.dept_no and
	d.dept_name = 'Sales';


-- 7) List all employees in the Sales and Development departments, including
-- their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where de.emp_no = e.emp_no and
	de.dept_no = d.dept_no and
	d.dept_name in ('Sales', 'Development');


-- 8) In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
select e.last_name, count(e.last_name) as "Last Name Count"
from employees e
group by e.last_name
order by e.last_name DESC;