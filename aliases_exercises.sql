use employees;

SELECT
       CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
       birth_date as DOB
FROM employees
LIMIT 10;

