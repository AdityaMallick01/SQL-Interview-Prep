# Revising Aggregations - Averages

## Problem

Find the average population of all cities in the `CITY` table where the district is **California**.

---

## Solution

```sql
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
```

---

## Explanation

- `AVG(POPULATION)` calculates the average population.
- The `WHERE` clause filters only the cities in the **California** district.
- The query returns a single value representing the average population.

---

## Concepts Used

- AVG()
- WHERE clause
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)