# Find Followers Count

## 🔗 Problem Link

https://leetcode.com/problems/find-followers-count/

## 🟢 Difficulty

Easy

---

## 📊 Table: Followers

| Column Name | Type |
| ----------- | ---- |
| user_id     | int  |
| follower_id | int  |

---

## ❓ Problem

For each user, find the **number of followers**.

Return the result ordered by `user_id`.

---

## 💡 SQL Solution

```sql
SELECT 
    user_id,
    COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
```

---

## 🧠 Explanation

### 🔹 GROUP BY

```sql
GROUP BY user_id
```

* Groups rows by each user

---

### 🔹 COUNT

```sql
COUNT(follower_id)
```

* Counts followers for each user
* Ignores NULL values

---

### 🔹 ORDER BY

```sql
ORDER BY user_id
```

* Sorts result in ascending order

---

## 🔥 Key Pattern

### Count per Group

```sql
GROUP BY column
COUNT(column)
```

👉 Used to count occurrences within each group

---

## ⚠️ Important Difference

| Function   | Behavior               |
| ---------- | ---------------------- |
| COUNT(*)   | Counts all rows        |
| COUNT(col) | Counts non-null values |

---

## ⏱️ Complexity

**Time Complexity:** O(n)
