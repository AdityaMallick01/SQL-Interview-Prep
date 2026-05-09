# Investments in 2016

## 🔗 Problem Link

https://leetcode.com/problems/investments-in-2016/

## 🟡 Difficulty

Medium

---

## 📊 Table: Insurance

| Column Name | Type  |
| ----------- | ----- |
| pid         | int   |
| tiv_2015    | float |
| tiv_2016    | float |
| lat         | float |
| lon         | float |

---

## ❓ Problem

Find the sum of all `tiv_2016` values where:

1. The policyholder has the same `tiv_2015` value as at least one other policyholder.
2. The `(lat, lon)` location is unique.

Return the result rounded to 2 decimal places.

---

## 💡 SQL Solution

```sql id="z7k1mr"
SELECT
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);
```

---

# 🧠 Explanation

## 🔹 Condition 1 — Duplicate `tiv_2015`

```sql id="g6n2kp"
GROUP BY tiv_2015
HAVING COUNT(*) > 1
```

👉 Finds investment values appearing more than once.

---

## 🔹 Condition 2 — Unique Location

```sql id="u8r4xs"
GROUP BY lat, lon
HAVING COUNT(*) = 1
```

👉 Keeps only unique `(lat, lon)` pairs.

---

## 🔹 Final Sum

```sql id="d1p9zc"
SUM(tiv_2016)
```

👉 Adds valid `tiv_2016` values.

---

## 🔹 ROUND

```sql id="y4m8qv"
ROUND(SUM(tiv_2016), 2)
```

👉 Rounds answer to 2 decimal places.

---

# 🔥 Key Pattern

## Filtering Using GROUP BY + HAVING

```sql id="c5w2nl"
GROUP BY column
HAVING COUNT(*) condition
```

👉 Used for:

* duplicates
* unique values
* frequency-based filtering

---

# ⚠️ Important Concept

## Tuple Comparison

```sql id="k9t3xf"
(lat, lon) IN (...)
```

👉 Checks both columns together as one pair.

---

# ⏱️ Complexity

Time Complexity: **O(n log n)**

* Grouping operations dominate complexity.
