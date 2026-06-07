# Revising the Select Query II

## Problem

Query the `NAME` field for all American cities in the `CITY` table with populations larger than **120000**.

The `CountryCode` for America is `USA`.

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
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 120000;
```

---

## Explanation

* `SELECT NAME` retrieves only the city names.
* `COUNTRYCODE = 'USA'` filters cities located in the United States.
* `POPULATION > 120000` returns only cities with populations greater than 120,000.
* The `AND` operator ensures both conditions are satisfied.

---

## Concepts Used

* SELECT
* WHERE Clause
* Logical AND
* Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
