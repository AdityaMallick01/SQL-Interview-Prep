# Big Countries

## Problem Link

https://leetcode.com/problems/big-countries/

## Difficulty

Easy

---

## Table: World

| Column Name | Type    |
| ----------- | ------- |
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

---

## Problem

A country is considered **big** if:

* it has an **area ≥ 3,000,000**, OR
* it has a **population ≥ 25,000,000**

Return the **name, population, and area** of the big countries.

The result can be returned **in any order**.

---

## SQL Solution

```sql
SELECT name, population, area
FROM World
WHERE area >= 3000000
OR population >= 25000000;
```

---

## Explanation

The query filters countries using the **WHERE clause**.

* `area >= 3000000`
  → Countries with large land area.

* `population >= 25000000`
  → Countries with large population.

Using **OR** ensures that countries satisfying **either condition** are included.

---

## Complexity

* Time Complexity: **O(n)**
* The database scans the `World` table once.
