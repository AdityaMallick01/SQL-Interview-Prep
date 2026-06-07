# Select All

## Problem

Query all columns (attributes) for every row in the `CITY` table.

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
FROM CITY;
```

---

## Explanation

* `SELECT *` retrieves all columns from the table.
* `FROM CITY` specifies that the data should be fetched from the `CITY` table.
* Since there is no `WHERE` clause, all rows are returned.

---

## Concepts Used

* SELECT
* Wildcard (`*`)
* Retrieving all rows and columns

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
