# Restaurant Growth

## 🔗 Problem Link

https://leetcode.com/problems/restaurant-growth/

## 🟡 Difficulty

Medium

---

## 📊 Table: Customer

| Column Name | Type    |
| ----------- | ------- |
| customer_id | int     |
| name        | varchar |
| visited_on  | date    |
| amount      | int     |

---

## ❓ Problem

For every day:

* Calculate total revenue of the last **7 days**
* Calculate the **7-day average revenue**

Return:

* `visited_on`
* `amount` → 7-day total
* `average_amount`

---

## 💡 SQL Solution

```sql id="yoa2tp"
SELECT
    visited_on,
    amount,
    ROUND(amount / 7, 2) AS average_amount
FROM (
    SELECT
        visited_on,
        SUM(total_amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        COUNT(*) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS cnt
    FROM (
        SELECT
            visited_on,
            SUM(amount) AS total_amount
        FROM Customer
        GROUP BY visited_on
    ) t
) x
WHERE cnt = 7;
```

---

# 🧠 Explanation

## 🔹 Step 1 — Daily Revenue

```sql id="lh5e60"
SELECT visited_on, SUM(amount)
FROM Customer
GROUP BY visited_on
```

👉 Multiple customers per day
👉 First compute daily total revenue

---

## 🔹 Step 2 — Sliding Window Sum

```sql id="q7hskx"
SUM(total_amount) OVER (
    ORDER BY visited_on
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
)
```

👉 Computes rolling 7-day revenue

---

## 🔹 Step 3 — Window Count

```sql id="z1q6pm"
COUNT(*) OVER (...)
```

👉 Counts rows in current window

Needed because:

* First few rows have fewer than 7 days

---

## 🔹 Step 4 — Keep Only Full 7-Day Windows

```sql id="te2yo9"
WHERE cnt = 7
```

👉 Ignore incomplete windows

---

## 🔹 Step 5 — Average

```sql id="4k1yzt"
ROUND(amount / 7, 2)
```

👉 Calculate 7-day average revenue

---

# 🔥 Key Pattern

## Sliding Window Aggregation

```sql id="7m2m9v"
ROWS BETWEEN N PRECEDING AND CURRENT ROW
```

👉 Used for:

* Running averages
* Rolling totals
* Time-series analysis

---

# ⚠️ Important

* Window functions work AFTER grouping
* Need nested query because:
  👉 First aggregate per day
  👉 Then apply rolling window

---

# ⏱️ Complexity

Time Complexity: **O(n log n)**
