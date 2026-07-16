# Average Population of Each Continent

## Problem

Given the `CITY` and `COUNTRY` tables, query the names of all continents along with the average population of their cities, rounded down to the nearest integer.

The tables are related as follows:

- `CITY.CountryCode = COUNTRY.Code`

---

## Solution

```sql
SELECT t.Continent,
       FLOOR(AVG(c.Population))
FROM CITY c
JOIN COUNTRY t
ON c.CountryCode = t.Code
GROUP BY t.Continent;
```

---

## Explanation

- Join the `CITY` and `COUNTRY` tables using the country code.
- Group the records by continent.
- Compute the average city population for each continent.
- Use `FLOOR()` to round the average population down to the nearest integer.

---

## Concepts Used

- INNER JOIN
- GROUP BY
- AVG()
- FLOOR()
- Aggregate Functions

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic Join)