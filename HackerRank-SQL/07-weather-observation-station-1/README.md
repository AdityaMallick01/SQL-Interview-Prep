# Weather Observation Station 1

## Problem

Query a list of `CITY` and `STATE` from the `STATION` table.

### Table: STATION

| Column | Type         |
| ------ | ------------ |
| ID     | NUMBER       |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2)  |
| LAT_N  | NUMBER       |
| LONG_W | NUMBER       |

---

## Solution

```sql
SELECT CITY, STATE
FROM STATION;
```

---

## Explanation

* `SELECT CITY, STATE` retrieves only the city and state columns.
* `FROM STATION` specifies the table from which data is fetched.
* Since there is no `WHERE` clause, all rows are returned.

---

## Concepts Used

* SELECT
* Column Selection
* Retrieving Multiple Columns

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
