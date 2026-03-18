# Rising Temperature

## Problem Link

https://leetcode.com/problems/rising-temperature/

## Difficulty

Easy

---

## Table: Weather

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| recordDate  | date |
| temperature | int  |

* `id` is the **primary key**.
* Each row represents temperature on a specific date.

---

## Problem

Find all dates where the **temperature is higher than the previous day**.

Return the **id** of those records.

---

## SQL Solution

```sql
SELECT curr.id
FROM Weather curr
JOIN Weather prev
ON DATEDIFF(curr.recordDate, prev.recordDate) = 1
WHERE curr.temperature > prev.temperature;
```

---

## Explanation

This uses a **self join** (joining the table with itself).

* `curr` → current day
* `prev` → previous day

### Key condition:

* `DATEDIFF(curr.recordDate, prev.recordDate) = 1`
  → Ensures we compare with the **previous day**

### Filter:

* `curr.temperature > prev.temperature`
  → Current day's temperature is higher

---

## Complexity

Time Complexity: **O(n)** (with indexing)
Otherwise can be higher due to join.
