# Weather Observation Station 8

## Problem

Query the list of `CITY` names from `STATION` which have vowels (`a`, `e`, `i`, `o`, `u`) as both their first and last characters.

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
WHERE CITY REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$';
```

---

## Explanation

- `DISTINCT` removes duplicate city names.
- `REGEXP` is used for pattern matching.
- `^` matches the beginning of the string.
- `[AEIOUaeiou]` matches any vowel.
- `.*` matches zero or more characters between the first and last letters.
- `$` matches the end of the string.
- The query returns cities whose names both start and end with a vowel.

### Regex Breakdown

```text
^               -> Start of string
[AEIOUaeiou]    -> First character is a vowel
.*              -> Any characters in between
[AEIOUaeiou]    -> Last character is a vowel
$               -> End of string
```

### Examples

| City | Result |
|------|--------|
| Agra | ✅ |
| Aurora | ✅ |
| Indore | ✅ |
| Delhi | ❌ |
| Mumbai | ❌ |

---

## Concepts Used

- SELECT
- DISTINCT
- REGEXP
- Pattern Matching
- Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)