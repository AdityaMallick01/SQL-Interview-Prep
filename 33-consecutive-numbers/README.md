# Consecutive Numbers

## 🔗 Problem Link

https://leetcode.com/problems/consecutive-numbers/

## 🟡 Difficulty

Medium

---

## 📊 Table: Logs

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| num         | varchar |

---

## ❓ Problem

Find numbers that appear **at least 3 times consecutively**.

---

## 💡 SQL Solution

```sql
SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT 
        num,
        LEAD(num, 1) OVER (ORDER BY id) AS next1,
        LEAD(num, 2) OVER (ORDER BY id) AS next2
    FROM Logs
) t
WHERE num = next1 
  AND next1 = next2;
```

---

## 🧠 Explanation

### 🔹 LEAD Function

```sql
LEAD(num, 1) OVER (ORDER BY id)
LEAD(num, 2) OVER (ORDER BY id)
```

* Looks ahead to next rows
* `next1` → next row
* `next2` → second next row

---

### 🔹 Condition

```sql
num = next1 AND next1 = next2
```

👉 Ensures:

* current = next = next next
* → 3 consecutive same numbers

---

### 🔹 DISTINCT

```sql
SELECT DISTINCT num
```

* Avoid duplicate outputs

---

## 🔥 Key Pattern

### Detect Consecutive Rows

```sql
LEAD(column, k) OVER (ORDER BY order_col)
```

👉 Used for:

* Consecutive duplicates
* Time series analysis
* Pattern detection

---

## ⚠️ Important

* Must use `ORDER BY id`
* Without ordering → wrong sequence ❗

---

## ⏱️ Complexity

Time Complexity: **O(n)**
