-- Problem: Last Person to Fit in the Bus
-- Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/

SELECT person_name
FROM (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS cumulative_weight,
        turn
    FROM Queue
) t
WHERE cumulative_weight <= 1000
ORDER BY turn DESC
LIMIT 1;