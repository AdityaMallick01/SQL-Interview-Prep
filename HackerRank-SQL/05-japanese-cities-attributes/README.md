# Japanese Cities' Attributes

## Problem

Query all attributes of every Japanese city in the `CITY` table.

The `COUNTRYCODE` for Japan is `JPN`.

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
WHERE COUNTRYCODE = 'JPN';
```

---

## Explanation

* `SELECT *` retrieves all columns from the `CITY` table.
* `COUNTRYCODE = 'JPN'` filters the rows to return only cities located in Japan.

---

## Concepts Used

* SELECT
* WHERE Clause
* Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
