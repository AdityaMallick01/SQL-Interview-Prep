# The PADS

## Problem

Generate two result sets from the `OCCUPATIONS` table:

### Result Set 1

Display all names in alphabetical order, followed by the first letter of their occupation enclosed in parentheses.

Example:

```text
Ashley(P)
Jane(A)
Maria(A)
```

### Result Set 2

Count the number of occurrences of each occupation and display them in the following format:

```text
There are a total of 2 doctors.
There are a total of 3 singers.
```

The results should be ordered by occupation count in ascending order. If multiple occupations have the same count, sort them alphabetically.

---

## Table: OCCUPATIONS

| Column | Type |
|----------|---------|
| Name | String |
| Occupation | String |

---

## Solution

```sql
SELECT CONCAT(Name,'(',SUBSTRING(Occupation,1,1),')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT(
    'There are a total of ',
    COUNT(*),
    ' ',
    LOWER(Occupation),
    's.'
)
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
```

---

## Explanation

### Query 1

- `SUBSTRING(Occupation,1,1)` extracts the first character of the occupation.
- `CONCAT()` combines the name and occupation initial.
- Results are sorted alphabetically by name.

### Query 2

- `COUNT(*)` counts occurrences of each occupation.
- `LOWER()` converts occupation names to lowercase.
- `CONCAT()` formats the output string exactly as required.
- Results are sorted by count and then occupation name.

---

## Concepts Used

- CONCAT
- SUBSTRING
- GROUP BY
- COUNT
- LOWER
- ORDER BY

---

## Difficulty

Medium

## Platform

HackerRank SQL (Advanced Select)