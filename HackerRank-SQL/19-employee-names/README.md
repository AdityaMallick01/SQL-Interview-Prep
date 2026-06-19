# Employee Names

## Problem

Write a query that prints a list of employee names (the `name` attribute) from the `Employee` table in alphabetical order.

### Table: Employee

| Column | Type |
|----------|---------|
| employee_id | Integer |
| name | String |
| months | Integer |
| salary | Integer |

---

## Solution

```sql
SELECT name
FROM Employee
ORDER BY name;
```

---

## Explanation

- `SELECT name` retrieves employee names.
- `ORDER BY name` sorts the names alphabetically in ascending order.
- Ascending order is the default behavior of `ORDER BY`.

### Example

| name |
|--------|
| Angela |
| David |
| Julia |

Output:

```text
Angela
David
Julia
```

---

## Concepts Used

- SELECT
- ORDER BY
- Alphabetical Sorting

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)