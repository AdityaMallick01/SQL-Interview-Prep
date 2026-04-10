# Biggest Single Number

## 🔗 Problem Link

https://leetcode.com/problems/biggest-single-number/

## 🟢 Difficulty

Easy

---

## 📊 Table: MyNumbers

| Column Name | Type |
| ----------- | ---- |
| num         | int  |

---

## ❓ Problem

A **single number** is a number that appears **exactly once**.

Find the **largest single number**.
If none exists, return `NULL`.

---

## 💡 SQL Solution

```sql
SELECT 
    MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
);
```

---

## 🧠 Explanation

### 🔹 Step 1 — Find Single Numbers

```sql
GROUP BY num
HAVING COUNT(*) = 1
```

* Keeps only numbers appearing once

---

### 🔹 Step 2 — Get Maximum

```sql
MAX(num)
```

* Finds largest among single numbers

---

## 🔥 Key Pattern

### Filter + Aggregate

```sql
GROUP BY column
HAVING COUNT(*) = 1
```

👉 Used to find **unique elements**

---

### Max of Filtered Data

```sql
MAX(column)
```

👉 Finds largest value after filtering

---

## ⏱️ Complexity

**Time Complexity:** O(n)
