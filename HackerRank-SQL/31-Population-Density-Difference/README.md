# Population Density Difference

## Problem

Find the difference between the maximum and minimum population values in the `CITY` table.

---

## Solution

```sql
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
```

---

## Explanation

- `MAX(POPULATION)` returns the largest population.
- `MIN(POPULATION)` returns the smallest population.
- Subtracting them gives the required population difference.

---

## Concepts Used

- MAX()
- MIN()
- Aggregate Functions
- Arithmetic Operations

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)