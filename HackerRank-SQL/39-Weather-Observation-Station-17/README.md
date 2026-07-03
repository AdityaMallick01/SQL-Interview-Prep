# Weather Observation Station 17

## Problem

Query the Western Longitude (`LONG_W`) where the smallest Northern Latitude (`LAT_N`) is greater than `38.7780`.

Round the answer to **4 decimal places**.

---

## Solution

```sql
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N
LIMIT 1;
```

---

## Explanation

- Filter rows where `LAT_N` is greater than `38.7780`.
- Sort the rows by `LAT_N` in ascending order.
- `LIMIT 1` selects the row with the smallest valid latitude.
- Return its `LONG_W` rounded to four decimal places.

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