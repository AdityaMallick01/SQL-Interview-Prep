# Find Customer Referee

## Problem Link

https://leetcode.com/problems/find-customer-referee/

## Difficulty

Easy

## Table: Customer

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |
| referee_id  | int     |

* `id` is the primary key.
* Each row represents a customer.
* `referee_id` stores the id of the customer who referred them.

---

## Problem

Find the **names of customers** who are:

1. **Not referred by customer with id = 2**
2. **Not referred by anyone (referee_id is NULL)**

Return the result in **any order**.

---

## SQL Solution

```sql
SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;
```

---

## Explanation

The query filters customers based on their `referee_id`.

* `referee_id IS NULL`

  * Selects customers who were **not referred by anyone**.

* `referee_id != 2`

  * Selects customers whose referee is **not customer 2**.

Using **OR** ensures we include both groups.

---

## Complexity

* Time Complexity: **O(n)**
* The database scans the `Customer` table once.

---
