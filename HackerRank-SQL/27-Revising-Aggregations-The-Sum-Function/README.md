# Revising Aggregations - The Sum Function

## Problem

Find the total population of all cities in the `CITY` table where the district is **California**.

---

## Solution

```sql
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
```

---

## Explanation

- `SUM(POPULATION)` calculates the total population.
- The `WHERE` clause filters rows where the district is **California**.
- The query returns a single value representing the total population.

---

## Concepts Used

- SUM()
- WHERE clause
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)