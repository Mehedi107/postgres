CREATE  FUNCTION show_employ_total_salary()
RETURNS INT
LANGUAGE SQL
as
$$
    SELECT sum(salary) FROM employees;
$$

SELECT show_employ_total_salary()

CREATE PROCEDURE REMOVE_EMPLOYEE(P_ID INT)
LANGUAGE plpgsql
AS
$$
DECLARE
id INT;
BEGIN
    SELECT employee_id INTO id FROM employees WHERE employee_id = P_ID;
    DELETE FROM employees WHERE employee_id = id;

    RAISE NOTICE 'EMPLOYEE REMOVED SUCCESSFULLY!';
END
$$

SELECT * FROM employees

CALL REMOVE_EMPLOYEE(20)

 