1. Checking for duplicate rows:

SELECT "COLLISION_ID",
COUNT(*) AS COUNT
FROM public."Motor Vehicle Collisions"
GROUP BY 1
HAVING COUNT(*) > 1;
