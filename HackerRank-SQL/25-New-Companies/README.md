# New Companies

## Problem

Amber's corporation acquired several new companies. Each company follows this hierarchy:

Founder → Lead Manager → Senior Manager → Manager → Employee

For each company, return:

- Company Code
- Founder
- Number of Lead Managers
- Number of Senior Managers
- Number of Managers
- Number of Employees

Sort the result by `company_code`.

---

## Solution

```sql
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
```

---

## Explanation

- Start from the `Company` table.
- Join each hierarchy table using `company_code`.
- Use `COUNT(DISTINCT ...)` to avoid duplicate counts caused by joins.
- Group by company and founder.
- Order by company code.

---

## Concepts Used

- LEFT JOIN
- COUNT(DISTINCT)
- GROUP BY
- ORDER BY

---

## Difficulty

Medium

## Platform

HackerRank SQL (Advanced Select)