# Weather Observation Station 2

## Problem

Query the following two values from the `STATION` table:

1. The sum of all values in `LAT_N`, rounded to **2 decimal places**.
2. The sum of all values in `LONG_W`, rounded to **2 decimal places**.

---

## Solution

```sql
SELECT
    ROUND(SUM(LAT_N), 2),
    ROUND(SUM(LONG_W), 2)
FROM STATION;
```

---

## Explanation

- `SUM(LAT_N)` calculates the total of all latitude values.
- `SUM(LONG_W)` calculates the total of all longitude values.
- `ROUND(value, 2)` rounds each total to two decimal places.

---

## Concepts Used

- SUM()
- ROUND()
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)