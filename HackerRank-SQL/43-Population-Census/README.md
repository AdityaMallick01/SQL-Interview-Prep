# Population Census

## Problem

Given the `CITY` and `COUNTRY` tables, query the sum of the populations of all cities where the continent is **Asia**.

The tables are related as follows:

- `CITY.CountryCode = COUNTRY.Code`

---

## Solution

```sql
SELECT SUM(c.POPULATION)
FROM CITY c
JOIN COUNTRY t
ON c.CountryCode = t.Code
WHERE t.CONTINENT = 'Asia';
```

---

## Explanation

- Join the `CITY` and `COUNTRY` tables using the country code.
- Filter only the countries whose continent is **Asia**.
- Calculate the total population of all matching cities using `SUM()`.

---

## Concepts Used

- INNER JOIN
- WHERE
- SUM()
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic Join)