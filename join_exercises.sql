use employees;

# All Department managers
select d.dept_name as Department_Name,
       CONCAT(employees.first_name, ' ', employees.last_name) as Manager
    from employees
         join dept_manager as de
              on employees.emp_no = de.emp_no
         join departments as d
            ON d.dept_no = de.dept_no
where to_date = '9999-01-01'
order by Department_Name;

# All department managers by women
select d.dept_name as Department_Name,
       CONCAT(employees.first_name, ' ', employees.last_name) as Manager
    from employees
         join dept_manager  de
              on employees.emp_no = de.emp_no
         join departments  d
            ON d.dept_no = de.dept_no
where to_date = '9999-01-01'
and gender = 'F'
order by Department_Name;

# Titles of employees in CS Department
SELECT t.title as Title, count(d.dept_no) as Count
    from employees e
        join titles t
            on e.emp_no = t.emp_no
        join dept_emp d
            on e.emp_no = d.emp_no
where dept_no = 'd009'
and t.to_date = '9999-01-01'
    group by Title
    order by Title;

# Current salary of managers
SELECT distinct d.dept_name as Department_Name,
    CONCAT(employees.first_name, ' ', employees.last_name) as Manager,
       s.salary as Current_Salary
from employees
    join dept_manager as de
    ON employees.emp_no = de.emp_no
    join departments as d
    ON d.dept_no = de.dept_no
    join salaries s
    ON employees.emp_no = s.emp_no
where de.to_date = '9999-01-01'
group by Department_Name
order by Department_Name;
# NOT  DONE
