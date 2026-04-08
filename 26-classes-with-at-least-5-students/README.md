# Classes With at Least 5 Students

## 🔗 Problem Link

https://leetcode.com/problems/classes-with-at-least-5-students/

## 🟢 Difficulty

Easy

---

## 📊 Table: Courses

| Column Name | Type    |
| ----------- | ------- |
| student     | varchar |
| class       | varchar |

---

## ❓ Problem

Find all classes that have **at least 5 students**.

---

## 💡 SQL Solution

```sql
SELECT 
    class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;
```

---

## 🧠 Explanation

### 🔹 GROUP BY

```sql
GROUP BY class
```

* Groups rows by class

---

### 🔹 HAVING

```sql
HAVING COUNT(*) >= 5
```

* Filters groups (not rows)
* Keeps only classes with ≥ 5 students

---

## 🔥 Key Pattern

### Filter Groups

```sql
GROUP BY column
HAVING COUNT(*) >= k
```

👉 Use `HAVING` instead of `WHERE` when filtering aggregated results

---

## ⚠️ Important Difference

| Clause | Use Case        |
| ------ | --------------- |
| WHERE  | Row filtering   |
| HAVING | Group filtering |

---

## ⏱️ Complexity

**Time Complexity:** O(n)
