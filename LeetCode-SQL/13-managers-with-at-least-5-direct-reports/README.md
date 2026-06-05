# Managers with at Least 5 Direct Reports

## Problem Link

https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

## Difficulty

Medium

---

## Table: Employee

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

* `id` is the **primary key**
* `managerId` refers to another employee's `id`

---

## Problem

Find the **names of managers** who have **at least 5 direct reports**.

---

## SQL Solution

```sql
SELECT E.name
FROM Employee E
JOIN Employee M
ON E.id = M.managerId
GROUP BY E.id, E.name
HAVING COUNT(M.id) >= 5;
```

---

## Explanation

This is a **self join** problem.

* `E` → manager
* `M` → employees reporting to that manager

### Join:

* `E.id = M.managerId`
  → connects manager to their direct reports

### Group:

* Group by manager

### Condition:

* `COUNT(M.id) >= 5`
  → only managers with at least 5 reports

---

## Key Pattern 🔥

```
Self Join + GROUP BY + HAVING
```

Used for:

* hierarchy problems
* manager-employee relations
* counting subordinates

---

## Complexity

Time Complexity: **O(n)** (with indexing)
