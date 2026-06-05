# Employees Whose Manager Left the Company

## 🔗 Problem Link

https://leetcode.com/problems/employees-whose-manager-left-the-company/

## 🟢 Difficulty

Easy

---

## 📊 Table: Employees

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |
| manager_id  | int     |
| salary      | int     |

---

## ❓ Problem

Find employees:

* Salary **< 30000**
* Have a manager (`manager_id IS NOT NULL`)
* But their manager **does NOT exist in the table**

👉 Manager left the company

---

## 💡 SQL Solution

```sql id="axwq3u"
SELECT employee_id
FROM Employees e
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND NOT EXISTS (
        SELECT 1
        FROM Employees m
        WHERE m.employee_id = e.manager_id
  );
```

---

## 🧠 Explanation

### 🔹 Salary Condition

```sql id="2xk1wr"
salary < 30000
```

👉 Only low salary employees

---

### 🔹 Must Have Manager

```sql id="gqj8mf"
manager_id IS NOT NULL
```

👉 Ignore employees without managers

---

### 🔹 Manager Missing (Core Logic)

```sql id="cz2bpr"
NOT EXISTS (
    SELECT 1 FROM Employees m
    WHERE m.employee_id = e.manager_id
)
```

👉 Manager is not present in table
👉 Means manager left

---

## 🔥 Key Pattern

### Anti Join (Find Missing Relations)

```sql id="6k5n5q"
NOT EXISTS (subquery)
```

👉 Used for:

* Missing references
* Orphan records
* Data validation

---

## ⚠️ Alternative (Less Preferred)

```sql id="0k9o2s"
LEFT JOIN Employees m 
ON e.manager_id = m.employee_id
WHERE m.employee_id IS NULL
```

👉 Works but slightly less clean

---

## ⏱️ Complexity

Time Complexity: **O(n²)** (worst case, depends on indexing)
