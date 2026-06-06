# Revising the Select Query I

## Problem

Query all columns for all American cities in the `CITY` table with populations larger than **100000**.

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
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 100000;
```

---

## Explanation

* `SELECT *` retrieves all columns from the table.
* `COUNTRYCODE = 'USA'` filters cities located in the United States.
* `POPULATION > 100000` returns only cities with a population greater than 100,000.

---

## Concepts Used

* SELECT
* WHERE
* Logical AND
* Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
