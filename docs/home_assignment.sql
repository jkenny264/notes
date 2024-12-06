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
SELECT id, x+width AS "Right Edge Distance", color
FROM rectangles
ORDER BY x + width DESC
LIMIT 1;




-- Question 9: Find rectangle(s) with NULL color



-- Question 10: List all the different colors



-- Question 11: List all the different named colors



-- Question 12: List rectangle colors in upper case letters



-- Question 13: What is the course_id of the course with the longest name?
-- Answer: 



-- Question 14: How many assignments are there with due dates in 2024?
-- Answer: 



-- Question 15: Concatenate Course ID and name:
SELECT concat("course_id",': ', "course_name")
FROM courses;
 


-- Question 16: List courses with Labs on Mondays:



-- Question 17: Past Assignments:



-- Question 18: How many assignments are there for each course:
-- Answer: 



-- Bonus Task 1: List the number of assignments per semester




-- Bonus Task 2: Show the red component of all the RGB colors


