# Queries Quality and Percentage

## Problem Link

https://leetcode.com/problems/queries-quality-and-percentage/

## Difficulty

Easy

---

## Table: Queries

| Column Name | Type    |
| ----------- | ------- |
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

---

## Problem

For each `query_name`, calculate:

### 1️⃣ Quality

```
AVG(rating / position)
```

---

### 2️⃣ Poor Query Percentage

```
(number of queries with rating < 3 / total queries) * 100
```

Return results rounded to **2 decimal places**.

---

## SQL Solution

```sql
SELECT 
    query_name,
    ROUND(AVG(rating * 1.0 / position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
```

---

## Explanation

### Quality

```
AVG(rating / position)
```

👉 Use:

```
rating * 1.0 / position
```

to avoid integer division

---

### Poor Query Percentage

```
SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*)
```

* counts poor queries
* divides by total

---

### Why NOT use `SUM(rating < 3)`?

Your query used:

```sql
SUM(rating < 3)
```

👉 Works in MySQL (true = 1, false = 0) ✔️
👉 But not portable SQL ❗

---

## Key Pattern 🔥

### 1️⃣ Ratio Average

```
AVG(a / b)
```

### 2️⃣ Percentage

```
SUM(CASE WHEN condition THEN 1 ELSE 0 END) / COUNT(*)
```

---

## Complexity

Time Complexity: **O(n)**
