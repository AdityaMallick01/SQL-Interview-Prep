# 176. Second Highest Salary

## 🔗 Problem Link

https://leetcode.com/problems/second-highest-salary/

## 🟡 Difficulty

Medium

---

## 📊 Table: Employee

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| salary      | int  |

---

## ❓ Problem

Find the second highest **distinct** salary from the `Employee` table.

If there is no second highest salary,
return `null`.

---

## 💡 SQL Solution

```sql
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);