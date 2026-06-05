# Customer Who Visited but Did Not Make Any Transactions

## Problem Link

https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

## Difficulty

Easy

---

## Table: Visits

| Column Name | Type |
| ----------- | ---- |
| visit_id    | int  |
| customer_id | int  |

* `visit_id` is unique.
* Each row represents a customer visit.

---

## Table: Transactions

| Column Name    | Type |
| -------------- | ---- |
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |

* Each row represents a transaction made during a visit.

---

## Problem

Find the **customer_id** of customers who visited but **did not make any transactions**, along with the **number of such visits**.

---

## SQL Solution

```sql
SELECT Visits.customer_id, COUNT(*) AS count_no_trans
FROM Visits
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY Visits.customer_id;
```

---

## Explanation

* `LEFT JOIN`
  → Keeps all visits, even if no transaction exists.

* `transaction_id IS NULL`
  → Filters visits where **no transaction was made**.

* `COUNT(*)`
  → Counts how many such visits per customer.

* `GROUP BY customer_id`
  → Groups results per customer.

---

## Complexity

Time Complexity: **O(n)**
The database scans and joins the tables.
