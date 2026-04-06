# User Activity for the Past 30 Days I

## 🔗 Problem Link

https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

## 🟢 Difficulty

Easy

---

## 📊 Table: Activity

| Column Name   | Type |
| ------------- | ---- |
| user_id       | int  |
| session_id    | int  |
| activity_date | date |
| activity_type | enum |

---

## ❓ Problem

Find the **daily active users** for the last **30 days ending on 2019-07-27**.

A user is considered active if they performed **at least one activity** on that day.

---

## 💡 SQL Solution

```sql
SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;
```

---

## 🧠 Explanation

### 🔹 Date Filtering

```sql
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
```

* Filters last **30 days**
* Inclusive range

---

### 🔹 Unique Users Per Day

```sql
COUNT(DISTINCT user_id)
```

* Ensures each user counted once per day

---

### 🔹 Grouping

```sql
GROUP BY activity_date
```

* Calculates per day

---

## 🔥 Key Pattern

### Daily Active Users (DAU)

```sql
COUNT(DISTINCT user_id)
GROUP BY date
```

---

## ⏱️ Complexity

**Time Complexity:** O(n)
