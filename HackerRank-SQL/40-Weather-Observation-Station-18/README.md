# Weather Observation Station 18

## Problem

Query the Manhattan Distance between two points:

- **P1(a, b)** = (`MIN(LAT_N)`, `MIN(LONG_W)`)
- **P2(c, d)** = (`MAX(LAT_N)`, `MAX(LONG_W)`)

Round the answer to **4 decimal places**.

---

## Solution

```sql
SELECT ROUND(
    (MAX(LAT_N) - MIN(LAT_N)) +
    (MAX(LONG_W) - MIN(LONG_W)),
    4
)
FROM STATION;
```

---

## Explanation

The Manhattan Distance is calculated as:

```
|x₂ − x₁| + |y₂ − y₁|
```

Since the maximum values are always greater than or equal to the minimum values:

- `MAX(LAT_N) - MIN(LAT_N)`
- `MAX(LONG_W) - MIN(LONG_W)`

already produce non-negative values, so `ABS()` is unnecessary.

Finally, `ROUND(..., 4)` formats the result to four decimal places.

---

## Concepts Used

- MAX()
- MIN()
- ROUND()
- Aggregate Functions
- Manhattan Distance

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)