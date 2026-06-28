# The Blunder

## Problem

Samantha accidentally calculated the average salary after removing all `0`s from each salary. Find the difference between the actual average salary and the incorrect average salary, then round the result up to the next integer.

---

## Solution

```sql
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,'0',''))) AS error
FROM EMPLOYEES;
```

---

## Explanation

- `AVG(Salary)` computes the actual average salary.
- `REPLACE(Salary,'0','')` removes all zero digits from each salary.
- `AVG(REPLACE(...))` computes Samantha's incorrect average.
- Subtract the incorrect average from the actual average.
- `CEIL()` rounds the result up to the nearest integer.

---

## Concepts Used

- AVG()
- REPLACE()
- CEIL()
- Aggregate Functions
- String Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)