# Weather Observation Station 12

## Problem

Query the list of `CITY` names from `STATION` that do not start with vowels and do not end with vowels.

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
WHERE CITY REGEXP '^[^AEIOUaeiou]'
  AND CITY REGEXP '[^AEIOUaeiou]$';
```

---

## Explanation

- `DISTINCT` removes duplicate city names.
- `^[^AEIOUaeiou]` matches cities that do **not start** with a vowel.
- `[^AEIOUaeiou]$` matches cities that do **not end** with a vowel.
- `AND` means both conditions must be true.

### Regex Breakdown

```text
^[^AEIOUaeiou]  -> Does not start with a vowel
[^AEIOUaeiou]$  -> Does not end with a vowel
AND             -> Both conditions must be true
```

### Examples

| City | Starts with Vowel? | Ends with Vowel? | Included? |
|------|-------------------|------------------|-----------|
| Delhi | No | No | ✅ |
| Jaipur | No | No | ✅ |
| Agra | Yes | Yes | ❌ |
| Indore | Yes | Yes | ❌ |
| Mumbai | No | Yes | ❌ |
| Osaka | Yes | No | ❌ |

---

## Concepts Used

- SELECT
- DISTINCT
- REGEXP
- AND Operator
- Pattern Matching

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)