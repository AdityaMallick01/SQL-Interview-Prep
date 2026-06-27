# Japan Population

## Problem

Find the total population of all cities in the `CITY` table where the country code is **JPN** (Japan).

---

## Solution

```sql
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
```

---

## Explanation

- `SUM(POPULATION)` calculates the total population.
- The `WHERE` clause filters only the cities whose `COUNTRYCODE` is **JPN**.
- The query returns the total population of all Japanese cities.

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