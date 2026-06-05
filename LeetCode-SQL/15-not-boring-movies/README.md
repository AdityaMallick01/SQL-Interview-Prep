# Not Boring Movies

## Problem Link

https://leetcode.com/problems/not-boring-movies/

## Difficulty

Easy

---

## Table: Cinema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |

* `id` is the **primary key**
* `rating` is between 0 and 10

---

## Problem

Report movies that:

* have an **odd-numbered id**
* have a description that is **not "boring"**

Return the result **ordered by rating in descending order**.

---

## SQL Solution

```sql
SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 != 0
AND description != 'boring'
ORDER BY rating DESC;
```

---

## Explanation

* `id % 2 != 0`
  → selects **odd IDs**

* `description != 'boring'`
  → filters out boring movies

* `ORDER BY rating DESC`
  → sorts by highest rating first

---

## Complexity

Time Complexity: **O(n)**
