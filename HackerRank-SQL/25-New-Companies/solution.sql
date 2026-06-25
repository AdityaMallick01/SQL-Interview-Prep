SELECT c.company_code,
       c.founder,
       COUNT(DISTINCT l.lead_manager_code),
       COUNT(DISTINCT s.senior_manager_code),
       COUNT(DISTINCT m.manager_code),
       COUNT(DISTINCT e.employee_code)
FROM Company c
LEFT JOIN Lead_Manager l
       ON c.company_code = l.company_code
LEFT JOIN Senior_Manager s
       ON l.company_code = s.company_code
LEFT JOIN Manager m
       ON s.company_code = m.company_code
LEFT JOIN Employee e
       ON m.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;