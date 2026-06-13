# Weather Observation Station 3

## Problem

Query a list of `CITY` names from `STATION` for cities that have an even `ID` number.

Print the results in any order, but exclude duplicates from the answer.

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
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;
```

---

## Explanation

* `DISTINCT CITY` removes duplicate city names.
* `ID % 2 = 0` selects only rows where the ID is even.
* The query returns unique city names corresponding to even IDs.

---

## Concepts Used

* SELECT
* DISTINCT
* WHERE Clause
* Modulus Operator (`%`)
* Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
