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




SELECT "ZIP CODE", "BOROUGH", "LOCATION", "ON STREET NAME", "CROSS STREET NAME", "OFF STREET NAME",
  COUNT("COLLISION_ID")
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31' AND "ON STREET NAME" IS NOT NULL
GROUP BY 1, 2, 3, 4,5, 6
ORDER BY 7 DESC;

