# Japanese Cities' Names

## Problem

Query the names of all Japanese cities in the `CITY` table.

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
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
```

---

## Explanation

* `SELECT NAME` retrieves only the city names.
* `COUNTRYCODE = 'JPN'` filters the rows to return only cities located in Japan.
* Since only the `NAME` column is selected, the output contains city names only.

---

## Concepts Used

* SELECT
* WHERE Clause
* Column Selection
* Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
