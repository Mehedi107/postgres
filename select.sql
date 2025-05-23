CREATE TABLE table2(
    student_id SERIAL PRIMARY key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(5),
    course VARCHAR(10),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(20)
)

INSERT INTO table2 (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
('Alice', 'Johnson', 21, 'A', 'Math101', 'alice.johnson@example.com', '2004-05-14', 'O+', 'USA'),
('Bob', 'Smith', 19, 'B+', 'Eng102', 'bob.smith@example.com', '2006-03-22', 'A-', 'Canada'),
('Charlie', 'Brown', 22, 'A-', 'Sci202', 'charlie.brown@example.com', '2003-11-30', 'B+', 'UK'),
('Daisy', 'Williams', 20, 'B', 'Hist303', 'daisy.williams@example.com', '2005-01-15', 'AB-', 'Australia'),
('Evan', 'Taylor', 23, 'A+', 'CS404', 'evan.taylor@example.com', '2002-07-25', 'O-', 'India');


-- show specific col from table
SELECT email FROM table2

-- show multiple col from table
SELECT first_name, age, email FROM table2;

-- show all col from table
SELECT * FROM table2;

-- show col with alias name
SELECT email as student_email FROM table2

-- sort by order
SELECT * FROM table2 ORDER BY student_id ASC;

-- show distinct value from table
SELECT DISTINCT country FROM table2

-- show data by specific country
SELECT * FROM table2
    WHERE country = 'India' AND grade = 'A+'

-- show data by multiple country
SELECT * FROM table2
    WHERE (country = 'USA' OR country = 'India') AND age = 24

SELECT * FROM table2
    WHERE age > 21

-- functions (scalar and aggregation)
SELECT upper(first_name) as first_name_in_uppercase, * FROM test_table;

SELECT concat(first_name,' ', age) FROM test_table

SELECT max(age) FROM test_table

SELECT AVG(age) FROM test_table

SELECT length(first_name) FROM test_table

select length(max(first_name)) from table2

select max(length(first_name)) from table2

SELECT * FROM table2
    WHERE email is NULL;

-- set default value
SELECT COALESCE(email, 'N/A') FROM table2 

-- ///////////////////////////////////////////////////////////////
-- Exploring IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL.

-- SELECT * FROM table2 WHERE country = 'India' OR country = 'Canada'
-- or
SELECT * FROM table2 WHERE country IN('India', 'Canada')

SELECT * FROM table2 WHERE age between 18 and 20

SELECT * FROM table2 WHERE last_name LIKE '%n'

SELECT * FROM table2 WHERE first_name LIKE 'A%'

SELECT * FROM table2 WHERE first_name LIKE '__a%'

SELECT * FROM table2 WHERE first_name ILIKE 'a%'

-- /////////////////////////////////////////////////////////////
-- Pagination with Limit Offset and Data Deletion in PostgreSQL
SELECT * FROM table2 LIMIT 2;

SELECT * FROM table2 LIMIT 2 OFFSET 2;

DELETE FROM table2
    WHERE country = 'India'

UPDATE table2
    SET email = 'Default@gmail.com'
    WHERE student_id = 10