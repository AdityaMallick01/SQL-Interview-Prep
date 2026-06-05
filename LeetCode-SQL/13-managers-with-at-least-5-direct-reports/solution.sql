-- Problem: Managers with at Least 5 Direct Reports

SELECT E.name
FROM Employee E
JOIN Employee M
ON E.id = M.managerId
GROUP BY E.id, E.name
HAVING COUNT(M.id) >= 5;