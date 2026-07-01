# Weather Observation Station 15

## Problem

Query the Western Longitude (`LONG_W`) for the largest Northern Latitude (`LAT_N`) that is less than `137.2345`.

Round the answer to **4 decimal places**.

---

## Solution

```sql
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
```

---

## Explanation

- Filter stations where `LAT_N` is less than `137.2345`.
- Sort the remaining rows by `LAT_N` in descending order.
- `LIMIT 1` selects the row with the largest valid latitude.
- `ROUND(LONG_W, 4)` rounds the corresponding longitude to four decimal places.

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