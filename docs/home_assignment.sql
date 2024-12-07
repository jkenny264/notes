-- John Kenny 101577733
-- home assignment


-- Question 1: List all the rectangles
SELECT *
FROM rectangles;


-- Question 2: How many rectangles are there?
-- Answer: 17
SELECT COUNT(id)
FROM rectangles;


-- Question 3: What color is the widest rectangle?
-- Answer: #abcdef
SELECT color
FROM rectangles
ORDER BY width DESC
LIMIT 1;


-- Question 4: What color is the tallest rectangle?
-- Answer: #ffffff
SELECT color
FROM rectangles
ORDER BY height DESC
LIMIT 1;


-- Question 5: List all rectangles that are wider than they are tall
SELECT *
FROM rectangles
WHERE width>height;


-- Question 6: Calculate and select area of each rectangle
SELECT id, width*height AS area
FROM rectangles;


-- Question 7: What color is the largest rectangle?
-- Answer: #ffffff
SELECT color
FROM rectangles
ORDER BY width*height DESC
LIMIT 1;


-- Question 8: What color is the rectangle that extends the most to the right?
-- Answer: #abcdef
SELECT id, x + width AS "Right Edge Distance", color
FROM rectangles
ORDER BY x + width DESC
LIMIT 1;


-- Question 9: Find rectangle(s) with NULL color
SELECT *
FROM rectangles
WHERE color IS NULL

 
-- Question 10: 
SELECT color
FROM rectangles
GROUP BY color;


-- Question 11: List all the different named colors
SELECT color
FROM rectangles
WHERE color IS NOT NULL AND color NOT LIKE '#%'
GROUP BY color;


-- Question 12: List rectangle colors in upper case letters
SELECT upper(color) AS 'COLOR'
FROM rectangles;


-- Question 13: What is the course_id of the course with the longest name?
-- Answer: COMP1235
SELECT course_id, LENGTH(course_name) AS 'course name length' 
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;


-- Question 14: How many assignments are there with due dates in 2024?
-- Answer: 12
SELECT COUNT(*) AS 'number of assignments due in 2024'
FROM assignments
WHERE due_date LIKE '2024%';


-- Question 15: Concatenate Course ID and name:
SELECT concat("course_id",': ', "course_name")
FROM courses;


-- Question 16: List courses with Labs on Mondays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Mon%';


-- Question 17: Past Assignments:
SELECT *
FROM assignments
WHERE due_date < CURRENT_DATE;


-- Question 18: How many assignments are there for each course:
SELECT course_id, count(*)
FROM assignments
GROUP BY course_id;


-- Bonus Task 1: List the number of assignments per semester
SELECT semester, COUNT(id) AS 'number of assignments'
from courses c
JOIN assignments a ON c.course_id = a.course_id
GROUP BY semester


-- Bonus Task 2: Show the red component of all the RGB colors
SELECT id, color, substr(color, 2,2) AS red_component
from rectangles
WHERE color Like '#%';
