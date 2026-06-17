# Weather Observation Station 10

## Problem

Query the list of `CITY` names from `STATION` that do not end with vowels (`a`, `e`, `i`, `o`, `u`).

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
WHERE CITY REGEXP '[^AEIOUaeiou]$';
```

---

## Explanation

- `DISTINCT` removes duplicate city names.
- `REGEXP` is used for pattern matching.
- `$` matches the end of the string.
- `[^AEIOUaeiou]` matches any character that is **not** a vowel.
- The query returns cities whose names do not end with a vowel.

### Regex Breakdown

```text
[^AEIOUaeiou] -> Last character is NOT a vowel
$             -> End of string
```

### Examples

| City | Result |
|------|--------|
| Delhi | ✅ |
| Jaipur | ✅ |
| Mumbai | ✅ |
| Agra | ❌ |
| Pune | ❌ |

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