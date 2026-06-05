# Friend Requests II: Who Has the Most Friends

## 🔗 Problem Link

https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

## 🟡 Difficulty

Medium

---

## 📊 Table: RequestAccepted

| Column Name  | Type |
| ------------ | ---- |
| requester_id | int  |
| accepter_id  | int  |
| accept_date  | date |

---

## ❓ Problem

Find:

* The person with the maximum number of friends
* Their total number of friends

Return:

* `id`
* `num`

---

## 💡 SQL Solution

```sql id="2tx5hf"
SELECT
    id,
    COUNT(*) AS num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted
) friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;
```

---

# 🧠 Explanation

## 🔹 Step 1 — Combine Both Users

```sql id="z8qf3r"
SELECT requester_id AS id
UNION ALL
SELECT accepter_id AS id
```

👉 Every friendship affects:

* requester
* accepter

So both must be counted.

---

## 🔹 Step 2 — GROUP BY

```sql id="xk8v1w"
GROUP BY id
```

👉 Groups all friendships per user.

---

## 🔹 Step 3 — COUNT

```sql id="5h3s7m"
COUNT(*)
```

👉 Counts total friends for each user.

---

## 🔹 Step 4 — Maximum Friends

```sql id="z0n9af"
ORDER BY num DESC
LIMIT 1
```

👉 Returns the user with highest friend count.

---

# 🔥 Key Pattern

## Combine Multiple Columns Into One

```sql id="v8u0qa"
UNION ALL
```

👉 Used when:

* values exist in different columns
* both columns represent same entity type

---

# ⚠️ Important Difference

## UNION vs UNION ALL

| Function  | Behavior           |
| --------- | ------------------ |
| UNION     | Removes duplicates |
| UNION ALL | Keeps duplicates   |

👉 Here we use `UNION ALL` because:

* every friendship must be counted

---

# ⏱️ Complexity

Time Complexity: **O(n log n)**

* `UNION ALL` → O(n)
* Grouping + sorting → O(n log n)
