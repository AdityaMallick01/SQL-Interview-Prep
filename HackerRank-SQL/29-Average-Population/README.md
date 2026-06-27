# Average Population

## Problem

Find the average population of all cities in the `CITY` table, rounded **down** to the nearest integer.

---

## Solution

```sql
SELECT FLOOR(AVG(POPULATION))
FROM CITY;
```

---

## Explanation

- `AVG(POPULATION)` computes the average population across all cities.
- `FLOOR()` rounds the result **down** to the nearest integer.
- The query returns a single integer value.

---

## Concepts Used

- AVG()
- FLOOR()
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)