1. Filtering data to analyze crashes that happened in 2021:

SELECT *
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31'
ORDER BY "CRASH DATE" DESC;

2. Counting how many crashes and collisions occured in 2021:

SELECT COUNT(*) 
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31';

3. Counting total number of injured persons, pedestrians, cyclists and motorists in 2021:

SELECT 
SUM("NUMBER OF PERSONS INJURED")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31';

SELECT 
SUM("NUMBER OF PEDESTRIANS INJURED")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31';

SELECT 
SUM("NUMBER OF CYCLIST INJURED")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31';

SELECT 
SUM("NUMBER OF MOTORIST INJURED")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31';

4. FIltering data to determine in which locations the motor vehicle collision rates were the highest in 2021:

SELECT "ZIP CODE", "BOROUGH", "LOCATION", "ON STREET NAME", "CROSS STREET NAME", "OFF STREET NAME",
  COUNT("COLLISION_ID")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31' AND "ON STREET NAME" IS NOT NULL
GROUP BY 1, 2, 3, 4,5, 6
ORDER BY 7 DESC;

SELECT "ZIP CODE", "BOROUGH", "ON STREET NAME", "CROSS STREET NAME", "OFF STREET NAME",
  COUNT("COLLISION_ID")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31' AND "ON STREET NAME" IS NOT NULL
GROUP BY 1, 2, 3, 4, 5
ORDER BY 6 DESC;

5. Filtering the data to retun the time when most of the crashes occured in 2021:

SELECT "CRASH TIME",
  COUNT(*) AS "MOST FREQUENT TIME"
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY 1
ORDER BY COUNT(*) DESC
LIMIT 10;

