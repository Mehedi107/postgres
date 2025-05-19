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

