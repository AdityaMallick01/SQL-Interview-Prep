# Count Salary Categories

## 🔗 Problem Link

https://leetcode.com/problems/count-salary-categories/

## 🟡 Difficulty

Medium

---

## 📊 Table: Accounts

| Column Name | Type |
| ----------- | ---- |
| account_id  | int  |
| income      | int  |

---

## ❓ Problem

Classify accounts into 3 salary categories:

* **Low Salary** → income < 20000
* **Average Salary** → 20000 ≤ income ≤ 50000
* **High Salary** → income > 50000

👉 Return count for each category
👉 Include categories even if count = 0

---

## 💡 SQL Solution

```sql
SELECT 
    c.category,
    COUNT(a.account_id) AS accounts_count
FROM (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary'
    UNION
    SELECT 'High Salary'
) c
LEFT JOIN Accounts a
ON (
    (c.category = 'Low Salary' AND a.income < 20000) OR
    (c.category = 'Average Salary' AND a.income BETWEEN 20000 AND 50000) OR
    (c.category = 'High Salary' AND a.income > 50000)
)
GROUP BY c.category;
```

---

## 🧠 Explanation

### 🔹 Step 1: Create Categories Table

```sql
SELECT 'Low Salary'
UNION
SELECT 'Average Salary'
UNION
SELECT 'High Salary'
```

👉 Ensures all categories exist (even with 0 count)

---

### 🔹 Step 2: LEFT JOIN

```sql
LEFT JOIN Accounts
```

👉 Keeps categories even if no matching rows

---

### 🔹 Step 3: Conditional Matching

```sql
ON (...)
```

👉 Assigns each account to correct category

---

### 🔹 Step 4: Count

```sql
COUNT(a.account_id)
```

👉 Counts accounts per category

---

## 🔥 Key Pattern

### Static Categories + LEFT JOIN

```sql
categories
LEFT JOIN data
ON condition
```

👉 Used when:

* Need fixed output rows
* Even if data is missing

---

## ⚠️ Important

* Use `COUNT(column)` NOT `COUNT(*)`
  👉 avoids counting NULL rows from LEFT JOIN

---

## ⏱️ Complexity

Time Complexity: **O(n)**
