# Weather Observation Station 7

## Problem

Query the list of `CITY` names ending with vowels (`a`, `e`, `i`, `o`, `u`) from `STATION`.

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
WHERE CITY REGEXP '[AEIOUaeiou]$';
```

---

## Explanation

* `DISTINCT` removes duplicate city names.
* `REGEXP` is used for pattern matching.
* `$` indicates the end of the string.
* `[AEIOUaeiou]` matches any vowel.
* The query returns cities whose names end with a vowel.

### Regex Breakdown

```text
[AEIOUaeiou] -> Last character must be a vowel
$             -> End of string
```

Examples:

```text
Agra      ✅
Pune      ✅
Indore    ✅
Delhi     ❌
Jaipur    ❌
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
