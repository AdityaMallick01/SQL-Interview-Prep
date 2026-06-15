# Weather Observation Station 6

## Problem

Query the list of `CITY` names starting with vowels (`a`, `e`, `i`, `o`, `u`) from `STATION`.

Your result cannot contain duplicates.

### Table: STATION

| Column | Type         |
| ------ | ------------ |
| ID     | NUMBER       |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2)  |
| LAT_N  | NUMBER       |
| LONG_W | NUMBER       |

---

## Solution

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou]';
```

---

## Explanation

* `DISTINCT` removes duplicate city names.
* `REGEXP` is used for pattern matching.
* `^` indicates the start of the string.
* `[AEIOUaeiou]` matches any vowel.
* The query returns cities whose names begin with a vowel.

### Regex Breakdown

```text
^            -> Start of string
[AEIOUaeiou] -> First character must be a vowel
```

Examples:

```text
Agra      ✅
Indore    ✅
Udaipur   ✅
Delhi     ❌
Mumbai    ❌
```

---

## Concepts Used

* DISTINCT
* REGEXP
* Pattern Matching
* Filtering Rows

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)
