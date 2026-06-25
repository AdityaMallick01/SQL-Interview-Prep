# Revising Aggregations - The Count Function

## Problem

Count the number of cities in the `CITY` table with a population greater than **100,000**.

---

## Solution

```sql
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;
```

---

## Explanation

- `COUNT(*)` counts the total number of rows.
- The `WHERE` clause filters cities whose population exceeds **100,000**.
- The query returns a single integer representing the total count.

---

## Concepts Used

- COUNT()
- WHERE clause
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)