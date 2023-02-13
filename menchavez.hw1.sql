#question one, 300024 employees
use employees;
select count(*) from employees;
#question two 
select dept_name from departments;
#question three, 17346 people work in Finance
select departments.dept_name, dept_emp.dept_no, count(*)
	from departments
    inner join dept_emp
    on departments.dept_no = dept_emp.dept_no
    group by departments.dept_name, dept_emp.dept_no;
#question 4, 34258 women work in Development 
select departments.dept_name, employees.gender, count(*)
	from departments
	inner join dept_emp
	on departments.dept_no = dept_emp.dept_no
	inner join employees 
    on dept_emp.emp_no = employees.emp_no
	group by departments.dept_name, employees.gender;
#question 5, highest salary is 158220
select * 
	from salaries 
    order by salary DESC;
#question 6, avg salary Marketing 71913.2000
select departments.dept_name, dept_emp.dept_no, avg(salary)
	from departments
	inner join dept_emp
	on departments.dept_no = dept_emp.dept_no
	inner join salaries
    on dept_emp.emp_no = salaries.emp_no
	group by departments.dept_name, dept_emp.dept_no;
# question 7, lowest salary 38623 last_name Baek Technique Leader in Production 
select departments.dept_name, employees.last_name, salaries.salary, titles.title
	from departments
    inner join dept_emp
    on departments.dept_no = dept_emp.dept_no 
    inner join employees
    on dept_emp.emp_no = employees.emp_no
    inner join salaries 
    on employees.emp_no = salaries.emp_no
    inner join titles 
    on salaries.emp_no = titles.emp_no
    order by salary asc;
#question 8  
select *, datediff(now(), birth_date) as age
	from employees;
    
