CREATE  FUNCTION show_employ_total_salary()
RETURNS INT
LANGUAGE SQL
as
$$
    SELECT sum(salary) FROM employees;
$$

SELECT show_employ_total_salary()