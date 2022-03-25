1. Checking for duplicate rows:

SELECT "COLLISION_ID",
COUNT(*) AS COUNT
FROM public."Motor Vehicle Collisions"
GROUP BY 1
HAVING COUNT(*) > 1;

2. Counting how many times a value occurs in a column:

SELECT "BOROUGH",
COUNT(*) AS COUNT
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY 1
HAVING COUNT(*) > 1;

3. 
