# African Cities

## Problem

Given the `CITY` and `COUNTRY` tables, query the names of all cities where the continent is **Africa**.

The tables are related as follows:

- `CITY.CountryCode = COUNTRY.Code`

---

## Solution

```sql
SELECT c.NAME
FROM CITY c
JOIN COUNTRY t
ON c.CountryCode = t.Code
WHERE t.CONTINENT = 'Africa';
```

---

## Explanation

- Join the `CITY` table with the `COUNTRY` table using the country code.
- Filter only the countries whose continent is **Africa**.
- Return the names of the matching cities.

---

## Concepts Used

- INNER JOIN
- WHERE
- Filtering
- Relational Tables

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic Join)