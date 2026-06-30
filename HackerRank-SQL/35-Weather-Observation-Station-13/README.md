# Weather Observation Station 13

## Problem

Query the sum of all `LAT_N` values from the `STATION` table that are:

- Greater than `38.7880`
- Less than `137.2345`

Truncate the result to **4 decimal places**.

---

## Solution

```sql
SELECT TRUNCATE(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880
  AND LAT_N < 137.2345;
```

---

## Explanation

- `SUM(LAT_N)` calculates the total latitude.
- The `WHERE` clause filters values strictly between `38.7880` and `137.2345`.
- `TRUNCATE(..., 4)` removes extra decimal places without rounding.

---

## Concepts Used

- SUM()
- TRUNCATE()
- WHERE
- Comparison Operators (`>`, `<`)
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)