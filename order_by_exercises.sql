use employees;

SELECT first_name, last_name
FROM employees.employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

SELECT *
FROM employees.employees
WHERE last_name LIKE 'e%';

SELECT *
FROM employees.employees
WHERE last_name LIKE '%e%'
order by emp_no;

SELECT *
FROM employees.employees
WHERE hire_date between '1990-01-01' and '1999-12-31';

SELECT *
FROM employees.employees
WHERE hire_date like '199%';

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
WHERE hire_date like '199%'
  and birth_date like '%12-25'
order by birth_date, hire_date desc ;

SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%'
  and last_name not like '%qu%';


