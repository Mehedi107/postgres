SELECT * FROM employees

EXPLAIN ANALYSE
SELECT employee_name FROM employees WHERE employee_name = '2018-12-28';

CREATE INDEX idx_employee_name
ON employees (employee_name)