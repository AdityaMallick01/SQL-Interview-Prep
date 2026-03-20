# Employee Bonus

## Problem Link

https://leetcode.com/problems/employee-bonus/

## Difficulty

Easy

---

## Table: Employee

| Column Name | Type    |
| ----------- | ------- |
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

* `empId` is the **primary key**.

---

## Table: Bonus

| Column Name | Type |
| ----------- | ---- |
| empId       | int  |
| bonus       | int  |

* `empId` refers to the employee.

---

## Problem

Report the **name and bonus** of each employee with:

* bonus **less than 1000**, OR
* **no bonus**

---

## SQL Solution

```sql
SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus
ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL;
```

---

## Explanation

* `LEFT JOIN`
  → Includes all employees, even those without bonus.

* `Bonus.bonus < 1000`
  → Filters employees with low bonus.

* `Bonus.bonus IS NULL`
  → Includes employees with no bonus.

---

## Complexity

Time Complexity: **O(n)**
Join + filter operation.
