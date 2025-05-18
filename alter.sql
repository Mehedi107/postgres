-- Active: 1747577075912@@127.0.0.1@5432@mehedi

-- show all form person table
SELECT * FROM test_table;

--//////////////////////////////////////////////////////
-- DDL (Data Definition Language)
-- alter table name
alter table person 
    RENAME to Test_Table;

-- add column to table
alter table test_table 
    add column email varchar(30) default 'default@email.com' not null;

-- alter column name
alter table test_table
    rename column is_alive to adult;

-- alter column type 
alter table test_table
    alter column first_name type varchar(20);

-- set constraint
alter table test_table 
    alter column age set not null;

-- remove constraint
alter table test_table 
    alter column age drop not null;

-- insert value to table
insert into test_table 
    values(5, 'safa01', 'safa', 20, false, 'safa@gmail.com'  )


alter table test_table
    alter COLUMN first_name drop not null;


-- make col unique
alter table test_table
     add constraint unique_test_table_age UNIQUE(age);

-- drop col constraint
alter table test_table
     drop constraint unique_test_table_age;

-- clear all data from table
TRUNCATE TABLE test_table;

-- delete a table
DROP Table test_table