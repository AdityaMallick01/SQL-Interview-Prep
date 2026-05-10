# Department Top Three Salaries

## 🔗 Problem Link

https://leetcode.com/problems/department-top-three-salaries/

## 🔴 Difficulty

Hard

---

## 📊 Table: Employee

| Column Name  | Type    |
| ------------ | ------- |
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

---

## 📊 Table: Department

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

---

## ❓ Problem

Find employees who are among the top 3 highest salaries in each department.

Return:

* Department
* Employee
* Salary

---

## 💡 SQL Solution

```sql id="b2w6pk"
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM (
    SELECT
        *,
        DENSE_RANK() OVER(
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS rnk
    FROM Employee
) e
JOIN Department d
ON e.departmentId = d.id
WHERE rnk <= 3;
```

---

# 🧠 Explanation

## 🔹 DENSE_RANK()

```sql id="h9v3mf"
DENSE_RANK() OVER(
    PARTITION BY departmentId
    ORDER BY salary DESC
)
```

👉 Assigns ranks inside each department.

Example:

| Salary | Rank |
| ------ | ---- |
| 90000  | 1    |
| 85000  | 2    |
| 85000  | 2    |
| 70000  | 3    |

---

## 🔹 PARTITION BY

```sql id="f1x7qr"
PARTITION BY departmentId
```

👉 Separates ranking department-wise.

Each department gets independent ranking.

---

## 🔹 ORDER BY salary DESC

```sql id="u8k2zn"
ORDER BY salary DESC
```

👉 Highest salary gets smallest rank.

---

## 🔹 Filter Top 3

```sql id="c4p9yw"
WHERE rnk <= 3
```

👉 Keeps only top 3 salary ranks.

---

## 🔹 JOIN

```sql id="a7m5xt"
JOIN Department d
ON e.departmentId = d.id
```

👉 Converts departmentId into department name.

---

# 🔥 Key Pattern

## Top K Per Group

```sql id="r3n8vk"
DENSE_RANK() OVER(
    PARTITION BY group_column
    ORDER BY value DESC
)
```

👉 Extremely important SQL interview pattern.

Used for:

* top salaries
* top scores
* rankings
* leaderboards

---

# ⚠️ Important Difference

| Function     | Behavior               |
| ------------ | ---------------------- |
| RANK()       | Skips ranks after ties |
| DENSE_RANK() | No skipped ranks       |
| ROW_NUMBER() | Unique row numbering   |

👉 Here we use `DENSE_RANK()` because equal salaries should share the same rank.

---

# ⏱️ Complexity

Time Complexity: **O(n log n)**

* Sorting inside window function dominates complexity.
