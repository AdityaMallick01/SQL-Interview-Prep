-- Problem: Employees Whose Manager Left the Company
-- Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/

SELECT employee_id
FROM Employees e
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND NOT EXISTS (
        SELECT 1
        FROM Employees m
        WHERE m.employee_id = e.manager_id
  );