# Project Employees I

## Problem Link

https://leetcode.com/problems/project-employees-i/

## Difficulty

Easy

---

## Table: Project

| Column Name | Type |
| ----------- | ---- |
| project_id  | int  |
| employee_id | int  |

* `(project_id, employee_id)` is the primary key

---

## Table: Employee

| Column Name      | Type    |
| ---------------- | ------- |
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |

---

## Problem

For each project, calculate the **average experience years of employees** working on that project.

Return the result rounded to **2 decimal places**.

---

## SQL Solution

```sql
SELECT 
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;
```

---

## Explanation

### JOIN

* Connects each project with its employees

---

### AVG

```
AVG(e.experience_years)
```

* Calculates average experience per project

---

### ROUND

* Formats result to 2 decimal places

---

## Key Pattern 🔥

```
JOIN + GROUP BY + AVG
```

Used for:

* averages per group
* department stats
* team metrics

---

## Complexity

Time Complexity: **O(n)**
