# Percentage of Users Attended a Contest

## Problem Link

https://leetcode.com/problems/percentage-of-users-attended-a-contest/

## Difficulty

Easy

---

## Table: Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| user_name   | varchar |

---

## Table: Register

| Column Name | Type |
| ----------- | ---- |
| contest_id  | int  |
| user_id     | int  |

---

## Problem

Find the **percentage of users** who registered for each contest.

### Formula:

```
percentage = (number of users in contest / total users) * 100
```

Return:

* rounded to **2 decimal places**
* sorted by **percentage DESC**, then **contest_id ASC**

---

## SQL Solution

```sql
SELECT 
    r.contest_id,
    ROUND(
        COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
```

---

## Explanation

### COUNT

```
COUNT(r.user_id)
```

* Number of users in each contest

---

### Total Users

```
(SELECT COUNT(*) FROM Users)
```

* Total number of users

---

### Percentage

```
COUNT * 100.0 / total_users
```

* `100.0` ensures **decimal division**

---

### ROUND

* Formats to 2 decimal places

---

### ORDER BY

* Highest percentage first
* If tie → smaller contest_id first

---

## Key Pattern 🔥

```
COUNT / TOTAL → percentage calculation
```

Used in:

* participation rate
* conversion rate
* engagement metrics

---

## Complexity

Time Complexity: **O(n)**
