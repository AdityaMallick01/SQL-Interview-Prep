-- Problem: Consecutive Numbers
-- Link: https://leetcode.com/problems/consecutive-numbers/

SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT 
        num,
        LEAD(num, 1) OVER (ORDER BY id) AS next1,
        LEAD(num, 2) OVER (ORDER BY id) AS next2
    FROM Logs
) t
WHERE num = next1 
  AND next1 = next2;