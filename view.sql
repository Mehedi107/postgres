CREATE VIEW salary_above_hr_max
AS
SELECT * FROM employees 
WHERE salary > (SELECT  max(salary) from employees WHERE department_name = 'HR') 
ORDER BY salary ASC

SELECT employee_name FROM salary_above_hr_max