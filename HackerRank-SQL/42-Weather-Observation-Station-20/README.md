# Weather Observation Station 20

## Problem

A median is the value separating the higher half from the lower half of a dataset.

Query the median of the Northern Latitudes (`LAT_N`) from the `STATION` table and round the answer to **4 decimal places**.

---

## Solution

```sql
WITH cte AS (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
           COUNT(*) OVER () AS total
    FROM STATION
)

SELECT ROUND(AVG(LAT_N),4)
FROM cte
WHERE rn IN ((total+1)/2,(total+2)/2);
```

---

## Explanation

- `ROW_NUMBER()` assigns a position to each latitude after sorting them in ascending order.
- `COUNT(*) OVER()` calculates the total number of rows.
- For:
  - **Odd** number of rows → both expressions evaluate to the same middle row.
  - **Even** number of rows → the expressions return the two middle rows.
- `AVG()` returns:
  - the middle value for odd-sized datasets.
  - the average of the two middle values for even-sized datasets.
- `ROUND(...,4)` formats the median to four decimal places.

---

## Concepts Used

- Common Table Expressions (CTE)
- ROW_NUMBER()
- Window Functions
- COUNT() OVER()
- AVG()
- ROUND()

---

## Difficulty

Medium

## Platform

HackerRank SQL (Advanced Select)