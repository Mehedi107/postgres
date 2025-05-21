show timezone;

SELECT now()

SELECT CURRENT_DATE

SELECT now()::date

SELECT now()::time

SELECT to_char(now(), 'dd/mm/yyyy')

SELECT age(now(), '1996-07-21')

SELECT CURRENT_DATE - INTERVAL '1 year'

select * from table2

SELECT *, age(CURRENT_DATE, dob) from table2

select extract(year from '2025-05-05'::date)

select extract(month from '2025-05-05'::date)