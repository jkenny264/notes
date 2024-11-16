
--1
SELECT title, due_date
FROM assignments
WHERE course_id == 'COMP1234';

--2
SELECT min(due_date) 
FROM assignments;

--3
SELECT max(due_date) 
FROM assignments;

--4

SELECT title, course_id
FROM assignments
WHERE due_date LIKE '2024-10-08';



--5

SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6


-- SELECT min(due_date)
-- FROM assignments
-- WHERE status != 'Completed';


SELECT *
FROM assignments
Where status = 'Completed'
ORDER BY due_date
LIMIT 1;
