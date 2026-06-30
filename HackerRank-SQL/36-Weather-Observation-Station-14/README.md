# Weather Observation Station 14

## Problem

Query the greatest value of `LAT_N` from the `STATION` table that is less than `137.2345`.

Truncate the result to **4 decimal places**.

---

## Solution

```sql
SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;
```

---

## Explanation

- `MAX(LAT_N)` returns the largest latitude value.
- The `WHERE` clause filters values less than `137.2345`.
- `TRUNCATE(..., 4)` truncates the result to four decimal places without rounding.

---

## Concepts Used

- MAX()
- TRUNCATE()
- WHERE
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)