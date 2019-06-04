use employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
order by last_name desc
LIMIT 10;

SELECT first_name, last_name
FROM employees.employees
WHERE hire_date like '199%'
  and birth_date like '%12-25'
order by birth_date, hire_date desc
limit 5 offset 45;