# Primary Department for Each Employee

## 🔗 Problem Link

https://leetcode.com/problems/primary-department-for-each-employee/

## 🟢 Difficulty

Easy

---

## 📊 Table: Employee

| Column Name   | Type    |
| ------------- | ------- |
| employee_id   | int     |
| department_id | int     |
| primary_flag  | varchar |

---

## ❓ Problem

Each employee may belong to multiple departments.

Return the **primary department** for each employee:

* If `primary_flag = 'Y'` → choose that department
* If employee has **only one department** → choose that one

---

## 💡 SQL Solution

```sql
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(*) = 1
   );
```

---

## 🧠 Explanation

### 🔹 Case 1 — Primary Department

```sql
primary_flag = 'Y'
```

* Directly select primary department

---

### 🔹 Case 2 — Only One Department

```sql
HAVING COUNT(*) = 1
```

* If employee appears only once → that is the primary

---

### 🔹 OR Condition

```sql
WHERE condition1 OR condition2
```

👉 Combines both cases:

* Either explicitly marked primary
* Or only one department exists

---

## 🔥 Key Pattern

### Handle Multiple Cases

```sql
condition_1
OR
condition_2
```

👉 Used when:

* Different rules lead to same output

---

## ⚠️ Important Insight

* Some employees have **no 'Y' flag**
* But still must be included ❗
* That’s why second condition is required

---

## ⏱️ Complexity

Time Complexity: **O(n)**
