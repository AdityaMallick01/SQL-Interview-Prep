# Employee Salaries

## Problem

Write a query that prints a list of employee names (`name`) for employees who:

- Earn more than $2000 per month.
- Have worked for less than 10 months.

The result should be sorted by `employee_id` in ascending order.

### Table: Employee

| Column | Type |
|----------|---------|
| employee_id | Integer |
| name | String |
| months | Integer |
| salary | Integer |

---

## Solution

```sql
SELECT name
FROM Employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id;
```

---

## Explanation

- `salary > 2000` filters employees earning more than $2000.
- `months < 10` keeps employees with less than 10 months of service.
- `ORDER BY employee_id` sorts the results in ascending employee ID order.
- Only the `name` column is returned.

---

## Concepts Used

- SELECT
- WHERE
- AND
- ORDER BY

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)