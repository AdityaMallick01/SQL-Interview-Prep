# Replace Employee ID With The Unique Identifier

## Problem Link

https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

## Difficulty

Easy

---

## Table: Employees

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

* `id` is the **primary key**.
* Each row represents an employee.

---

## Table: EmployeeUNI

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| unique_id   | int  |

* `id` refers to the employee's id.
* `unique_id` is a unique identifier assigned to an employee.

---

## Problem

Write a query to show the **unique_id and name of each employee**.

If an employee does **not have a unique_id**, return **NULL** for the unique_id.

---

## SQL Solution

```sql
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;
```

---

## Explanation

The query uses a **LEFT JOIN**.

* `Employees` is the main table.
* `EmployeeUNI` contains the unique identifiers.

`LEFT JOIN` ensures:

* All employees are returned.
* If an employee has no entry in `EmployeeUNI`, the `unique_id` will be **NULL**.

---

## Complexity

Time Complexity: **O(n)**
The database performs a join between the two tables.
