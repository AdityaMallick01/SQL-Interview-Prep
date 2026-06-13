# Weather Observation Station 4

## Problem

Find the difference between the total number of `CITY` entries in the table and the number of distinct `CITY` entries in the table.

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
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
```

---

## Explanation

* `COUNT(CITY)` returns the total number of city entries.
* `COUNT(DISTINCT CITY)` returns the number of unique city names.
* Subtracting the two values gives the number of duplicate city entries.

### Example

If the cities are:

```text
Delhi
Mumbai
Delhi
Kolkata
Mumbai
```

Then:

```text
COUNT(CITY) = 5
COUNT(DISTINCT CITY) = 3

Answer = 5 - 3 = 2
```

---

## Concepts Used

* COUNT()
* DISTINCT
* Aggregate Functions
* Basic Arithmetic in SQL

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
