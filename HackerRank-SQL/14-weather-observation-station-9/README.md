# Weather Observation Station 9

## Problem

Query the list of `CITY` names from `STATION` that do not start with vowels (`a`, `e`, `i`, `o`, `u`).

Your result cannot contain duplicates.

### Table: STATION

| Column | Type |
|---------|---------|
| ID | NUMBER |
| CITY | VARCHAR2(21) |
| STATE | VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W | NUMBER |

---

## Solution

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^AEIOUaeiou]';
```

---

## Explanation

- `DISTINCT` removes duplicate city names.
- `REGEXP` is used for pattern matching.
- `^` matches the beginning of the string.
- `[^AEIOUaeiou]` matches any character that is **not** a vowel.
- The query returns cities whose names do not start with a vowel.

### Regex Breakdown

```text
^               -> Start of string
[^AEIOUaeiou]   -> First character is NOT a vowel
```

### Examples

| City | Result |
|------|--------|
| Delhi | ✅ |
| Mumbai | ✅ |
| Kolkata | ✅ |
| Agra | ❌ |
| Indore | ❌ |

---

## Concepts Used

- SELECT
- DISTINCT
- REGEXP
- Character Classes
- Pattern Matching

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)