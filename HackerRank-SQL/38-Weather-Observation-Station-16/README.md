# Weather Observation Station 16

## Problem

Query the smallest Northern Latitude (`LAT_N`) from `STATION` that is greater than `38.7780`.

Round the answer to **4 decimal places**.

---

## Solution

```sql
SELECT ROUND(LAT_N, 4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N
LIMIT 1;
```

---

## Explanation

- Filter all rows where `LAT_N` is greater than `38.7780`.
- Sort the latitudes in ascending order.
- `LIMIT 1` returns the smallest latitude satisfying the condition.
- `ROUND(LAT_N, 4)` rounds the result to four decimal places.

---

## Concepts Used

- WHERE
- ORDER BY
- LIMIT
- ROUND()
- Sorting

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)