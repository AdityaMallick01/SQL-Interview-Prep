# Weather Observation Station 11

## Problem

Query the list of `CITY` names from `STATION` that either do not start with vowels or do not end with vowels.

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
   OR CITY REGEXP '[^AEIOUaeiou]$';
```

---

## Explanation

- `DISTINCT` removes duplicate city names.
- `^[^AEIOUaeiou]` matches cities that do **not start** with a vowel.
- `[^AEIOUaeiou]$` matches cities that do **not end** with a vowel.
- `OR` means either condition can be true.

### Regex Breakdown

```text
^[^AEIOUaeiou]  -> Does not start with a vowel
[^AEIOUaeiou]$  -> Does not end with a vowel
OR              -> Either condition is enough
```

### Examples

| City | Starts with Vowel? | Ends with Vowel? | Included? |
|------|-------------------|------------------|-----------|
| Agra | Yes | Yes | ❌ |
| Delhi | No | No | ✅ |
| Indore | Yes | Yes | ❌ |
| Jaipur | No | No | ✅ |
| Osaka | Yes | Yes | ❌ |
| Mumbai | No | Yes | ✅ |

---

## Concepts Used

- SELECT
- DISTINCT
- REGEXP
- OR Operator
- Pattern Matching

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)