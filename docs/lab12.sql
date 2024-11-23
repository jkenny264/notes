-- John Kenny 101577733

-- 1
SELECT concat(course_name, ' - ' , semester)
FROM courses;

-- 2

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%'; 

-- 3
SELECT *
FROM assignments
WHERE due_date>CURRENT_DATE
ORDER BY due_date ASC;

-- 4
SELECT status, COUNT(*)
FROM assignments
GROUP BY status;

-- 5
SELECT length(course_name) AS len, *
FROM courses
ORDER BY len DESC;

-- 6
SELECT upper(course_name) AS "COURSE NAMES"
FROM courses;

-- 7
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '%-09-%';

-- 8
SELECT *
FROM assignments
WHERE due_date IS NULL;

