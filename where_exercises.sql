use employees;

SELECT *
FROM employees.employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees.employees
WHERE last_name LIKE 'e%';

SELECT *
FROM employees.employees
WHERE hire_date between '1990-01-01' and '1999-12-31';

SELECT *
FROM employees.employees
WHERE birth_date like '%12-25';

SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees.employees
WHERE first_name in ('Irena', 'Vidya')
   or first_name =  'Maya';

SELECT *
    FROM employees.employees
WHERE gender  = 'M'
    and (
        first_name in ('Irena', 'Vidya')
    or first_name =  'Maya'
        );

SELECT *
FROM employees.employees
WHERE last_name LIKE 'e%'
or last_name like '%e';

SELECT *
FROM employees.employees
WHERE last_name LIKE 'e%'
   and last_name like '%e';

SELECT *
FROM employees.employees
WHERE hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%12-25';

SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%'
  and last_name not like '%qu%';
