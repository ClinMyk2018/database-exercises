use employees;

SELECT DISTINCT title FROM titles;

SELECT last_name
FROM employees.employees
WHERE last_name LIKE '%e'
  and last_name LIKE 'e%'
group by last_name;

SELECT concat(first_name, ' ', last_name)
FROM employees.employees
WHERE last_name LIKE '%e'
  and last_name LIKE 'e%'
group by first_name, last_name;

SELECT last_name, count(*)
FROM employees.employees
WHERE last_name LIKE '%q%'
  and last_name not like '%qu%'
group by last_name
order by count(*);


SELECT concat(count(*), ' ', gender) as Num_of_Gender_With_Names
FROM employees.employees
WHERE  first_name in ('Irena', 'Vidya')
        or first_name =  'Maya'
group by gender;
