# Confirmation Rate

## Problem Link

https://leetcode.com/problems/confirmation-rate/

## Difficulty

Medium

---

## Table: Signups

| Column Name | Type     |
| ----------- | -------- |
| user_id     | int      |
| time_stamp  | datetime |

* `user_id` is unique

---

## Table: Confirmations

| Column Name | Type     |
| ----------- | -------- |
| user_id     | int      |
| time_stamp  | datetime |
| action      | ENUM     |

* `action` is either `'confirmed'` or `'timeout'`

---

## Problem

For each user, calculate the **confirmation rate**:

```
confirmation_rate = confirmed_count / total_requests
```

If a user has **no requests**, return **0**.

Round the result to **2 decimal places**.

---

## SQL Solution

```sql
SELECT 
    s.user_id,
    ROUND(
        AVG(
            CASE 
                WHEN c.action = 'confirmed' THEN 1
                ELSE 0
            END
        ), 2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
```

---

## Explanation

### LEFT JOIN

* Includes all users (even those with no confirmations)

### CASE

* `'confirmed'` → 1
* `'timeout'` → 0

### AVG

* Computes:

```
sum(confirmed) / total_requests
```

### ROUND

* Formats result to 2 decimal places

---

## Key Pattern 🔥

```
CASE + AVG → percentage / ratio calculation
```

Used for:

* success rate
* conversion rate
* approval rate

---

## Complexity

Time Complexity: **O(n)**
