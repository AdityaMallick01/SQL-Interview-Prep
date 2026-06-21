# Occupations

## Problem

Pivot the `Occupation` column in the OCCUPATIONS table so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation.

The output should consist of four columns:

- Doctor
- Professor
- Singer
- Actor

Names under each occupation should be sorted alphabetically.

Print `NULL` when there are no more names corresponding to an occupation.

---

## Table: OCCUPATIONS

| Column | Type |
|---------|---------|
| Name | String |
| Occupation | String |

---

## Solution

```sql
WITH cte AS (
    SELECT Name,
           Occupation,
           ROW_NUMBER() OVER (
               PARTITION BY Occupation
               ORDER BY Name
           ) rn
    FROM OCCUPATIONS
)

SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM cte
GROUP BY rn
ORDER BY rn;
```

---

## Explanation

### Step 1: Number names within each occupation

```sql
ROW_NUMBER() OVER (
    PARTITION BY Occupation
    ORDER BY Name
)
```

Assigns:

| Name | Occupation | rn |
|------|------------|----|
| Ashley | Professor | 1 |
| Christeen | Professor | 2 |
| Jane | Actor | 1 |
| Jenny | Doctor | 1 |

Each occupation gets its own numbering sequence.

---

### Step 2: Pivot rows into columns

```sql
MAX(CASE WHEN Occupation='Doctor' THEN Name END)
```

Places doctor names into the Doctor column.

Similarly for Professor, Singer, and Actor.

---

### Step 3: Group by row number

```sql
GROUP BY rn
```

Combines the first doctor, first professor, first singer, and first actor into one row.

The second doctor, second professor, etc. become the next row.

---

## Concepts Used

- Common Table Expressions (CTE)
- ROW_NUMBER()
- Window Functions
- CASE WHEN
- Conditional Aggregation
- Pivoting Data

---

## Difficulty

Medium

## Platform

HackerRank SQL (Advanced Select)