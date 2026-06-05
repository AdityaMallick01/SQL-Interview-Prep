# Number of Unique Subjects Taught by Each Teacher

## 🔗 Problem Link

https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/

## 🟢 Difficulty

Easy

---

## 📊 Table: Teacher

| Column Name | Type |
| ----------- | ---- |
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

---

## ❓ Problem

Find the number of **unique subjects** each teacher teaches.

---

## 💡 SQL Solution

```sql
SELECT 
    teacher_id,
    COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
```

---

## 🧠 Explanation

### 🔹 COUNT DISTINCT

```sql
COUNT(DISTINCT subject_id)
```

* Removes duplicates
* Counts unique subjects only

---

### 🔹 GROUP BY

```sql
GROUP BY teacher_id
```

* Calculates per teacher

---

## 🔥 Key Pattern

### Unique Count

```sql
COUNT(DISTINCT column)
```

---

## ⏱️ Complexity

**Time Complexity:** O(n)
