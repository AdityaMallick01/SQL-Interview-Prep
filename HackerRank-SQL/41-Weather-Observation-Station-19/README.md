# Weather Observation Station 19

## Problem

Consider two points:

- **P1(a, c)** = (`MIN(LAT_N)`, `MIN(LONG_W)`)
- **P2(b, d)** = (`MAX(LAT_N)`, `MAX(LONG_W)`)

Query the **Euclidean Distance** between the two points and format the answer to **4 decimal places**.

---

## Solution

```sql
SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ),
    4
)
FROM STATION;
```

---

## Explanation

The Euclidean Distance formula is:

```
√((x₂ − x₁)² + (y₂ − y₁)²)
```

In SQL:

- `MAX(LAT_N) - MIN(LAT_N)` calculates the latitude difference.
- `MAX(LONG_W) - MIN(LONG_W)` calculates the longitude difference.
- `POWER(..., 2)` squares each difference.
- `SQRT()` computes the square root.
- `ROUND(..., 4)` formats the result to four decimal places.

---

## Concepts Used

- MAX()
- MIN()
- POWER()
- SQRT()
- ROUND()
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Aggregation)