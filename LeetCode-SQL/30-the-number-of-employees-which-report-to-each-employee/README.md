# The Number of Employees Which Report to Each Employee

## 🔗 Problem Link

https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

## 🟢 Difficulty

Easy

---

## 📊 Table: Employees

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |

---

## ❓ Problem

Find all **managers** (employees who have at least one report) and return:

* employee_id
* name
* number of direct reports
* average age of their reports

---

## 💡 SQL Solution

```sql
SELECT 
    e1.employee_id,
    e1.name,
    COUNT(e2.employee_id) AS reports_count,
    ROUND(AVG(e2.age)) AS average_age
FROM Employees e1
JOIN Employees e2 
    ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id;
```

---

## 🧠 Explanation

### 🔹 Self Join

```sql
Employees e1 JOIN Employees e2
ON e1.employee_id = e2.reports_to
```

* `e1` → manager
* `e2` → employee reporting to manager

---

### 🔹 Count Reports

```sql
COUNT(e2.employee_id)
```

* Counts how many employees report to each manager

---

### 🔹 Average Age

```sql
ROUND(AVG(e2.age))
```

* Calculates average age of reports
* Rounded to nearest integer

---

### 🔹 GROUP BY

```sql
GROUP BY e1.employee_id, e1.name
```

* Groups data per manager

---

### 🔹 ORDER BY

```sql
ORDER BY e1.employee_id
```

* Sorts output

---

## 🔥 Key Pattern

### Self Join

```sql
FROM table t1
JOIN table t2 ON t1.id = t2.parent_id
```

👉 Used for:

* Hierarchies (manager → employee)
* Trees
* Parent-child relationships

---

## ⏱️ Complexity

Time Complexity: **O(n)**
