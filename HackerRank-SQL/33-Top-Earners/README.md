# Top Earners

## Problem

Find the maximum total earnings of any employee, where:

```
total_earnings = salary × months
```

Also determine how many employees have those maximum total earnings.

Output both values as two space-separated integers.

---

## Solution

```sql
SELECT MAX(months * salary), COUNT(*)
FROM Employee
WHERE months * salary = (
    SELECT MAX(months * salary)
    FROM Employee
);
```

---

## Explanation

- `months * salary` calculates each employee's total earnings.
- The subquery finds the maximum total earnings.
- The `WHERE` clause filters employees having that maximum value.
- `MAX()` returns the maximum earnings.
- `COUNT(*)` counts how many employees share the maximum earnings.

---

## Concepts Used

- MAX()
- COUNT()
- Aggregate Functions
- Subqueries
- WHERE Clause

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)