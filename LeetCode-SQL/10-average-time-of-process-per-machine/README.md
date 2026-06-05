# Average Time of Process per Machine

## Problem Link

https://leetcode.com/problems/average-time-of-process-per-machine/

## Difficulty

Easy

---

## Table: Activity

| Column Name   | Type  |
| ------------- | ----- |
| machine_id    | int   |
| process_id    | int   |
| activity_type | enum  |
| timestamp     | float |

* `(machine_id, process_id, activity_type)` is the **primary key**.
* `activity_type` is either `'start'` or `'end'`.
* Each process has one start and one end.

---

## Problem

Calculate the **average processing time for each machine**.

Processing time = `end_time - start_time`

Return:

* `machine_id`
* `processing_time` (rounded to 3 decimal places)

---

## SQL Solution

```sql
SELECT 
    a.machine_id,
    ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id;
```

---

## Explanation

This uses a **self join**.

* `a` → start record
* `b` → end record

### Key logic:

* Match same `machine_id` and `process_id`
* Pair `'start'` with `'end'`

### Processing time:

* `b.timestamp - a.timestamp`

### Average:

* `AVG(...)` gives average per machine

### Formatting:

* `ROUND(..., 3)` → 3 decimal places

---

## Complexity

Time Complexity: **O(n)**
Join + grouping on indexed columns.
