10.
SELECT color
FROM rectangles
GROUP BY color;

-- what did prof say about broken color hex value
------------------------

11.
SELECT color
FROM rectangles
WHERE color IS NOT NULL AND color NOT LIKE '#%'
GROUP BY color;


-- what did prof say about broken color hex value

-------------------------

17.
SELECT *
FROM assignments
WHERE due_date < CURRENT_DATE;
