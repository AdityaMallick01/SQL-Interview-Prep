# Select By ID

## Problem

Query all columns for a city in the `CITY` table with the ID `1661`.

### Table: CITY

| Column      | Type         |
| ----------- | ------------ |
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |

---

## Solution

```sql
SELECT *
FROM CITY
WHERE ID = 1661;
```

---

## Explanation

* `SELECT *` retrieves all columns from the `CITY` table.
* `WHERE ID = 1661` filters the records and returns only the city whose ID is 1661.

---

## Concepts Used

* SELECT
* WHERE Clause
* Filtering Records by ID

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
