use employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE employees.emp_no = '101010'
);

SELECT DISTINCT count(title) as Total_Job_Titles, title as Unique_Titles
from titles
WHERE emp_no IN
      (
        SELECT emp_no
        FROM employees
        WHERE first_name = 'Aamod'
         )
group by title;


SELECT first_name first_name, last_name last_name
from employees
where emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > curdate()
    AND gender = 'F'
);

# Mykal
SELECT dept_name
from departments
where dept_no in (
    select dept_no
    from dept_emp
    where emp_no in (
        select emp_no
        FROM employees
        where emp_no in (
            SELECT emp_no
            FROM dept_manager
            WHERE to_date > curdate()
              AND gender = 'F'
        )));

# Jason
select dept_name
from departments
where dept_no in (
    select dept_no from dept_manager
    where emp_no in (
        select emp_no from employees
        where gender = 'f'
    )
      and to_date > curdate()
);

# Ricky
select dept_name from departments
where dept_no in (
    select dept_no from dept_manager
    where to_date > curdate() and emp_no in (
        select emp_no from employees
        where gender='f'
    )
);

# Nadia
SELECT departments.dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
          AND dept_manager.to_date > curdate())
);
