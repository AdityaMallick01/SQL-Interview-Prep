-- Problem: Rising Temperature
-- Link: https://leetcode.com/problems/rising-temperature/

SELECT curr.id
FROM Weather curr
JOIN Weather prev
ON DATEDIFF(curr.recordDate, prev.recordDate) = 1
WHERE curr.temperature > prev.temperature;