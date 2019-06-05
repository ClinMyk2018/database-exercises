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
    WHERE to_date = '9999-01-01'
    AND gender = 'F'
);

SELECT dept_name as Department_Name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    AND gender = 'F'
    );


