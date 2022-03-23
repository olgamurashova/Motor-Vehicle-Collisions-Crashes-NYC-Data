1. Filtering data to analyze crashes that happened in 2021:

SELECT *
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31'
ORDER BY "CRASH DATE" DESC;

2. Counting how many crashes and collisions occured in 2021:

SELECT COUNT(*) 
FROM public."Motor Vehicle Collisions"
WHERE "CRASH DATE" BETWEEN '2021-01-01' AND '2021-12-31';

