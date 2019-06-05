use employees;


SELECT concat(first_name, ' ', last_name) as names
FROM employees.employees
WHERE concat(first_name, last_name) LIKE '%e'
and concat(first_name, last_name) LIKE 'e%'
order by emp_no;


SELECT  first_name , last_name, birth_date, hire_date,
       datediff(now(), hire_date) as employment_days,
       datediff(now(), hire_date) / 12 as employment_months ,
       datediff(now(), hire_date) / 365 as employment_years
FROM employees.employees
WHERE hire_date like '199%'
  and birth_date like '%12-25'
order by birth_date, hire_date desc ;


