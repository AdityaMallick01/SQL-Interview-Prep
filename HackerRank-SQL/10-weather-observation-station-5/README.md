# Weather Observation Station 5

## Problem

Query the two cities in `STATION` with the shortest and longest city names, along with their respective lengths.

If there is more than one smallest or largest city, choose the one that comes first alphabetically.

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
SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION
ORDER BY CITY_LENGTH DESC, CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION
ORDER BY CITY_LENGTH, CITY
LIMIT 1;
```

---

## Explanation

### Longest City

```sql
ORDER BY CITY_LENGTH DESC, CITY
LIMIT 1;
```

* Sort by city length in descending order.
* If multiple cities have the same maximum length, choose the alphabetically first city.
* Return only one row.

### Shortest City

```sql
ORDER BY CITY_LENGTH, CITY
LIMIT 1;
```

* Sort by city length in ascending order.
* If multiple cities have the same minimum length, choose the alphabetically first city.
* Return only one row.

---

## Concepts Used

* LENGTH()
* ORDER BY
* LIMIT
* Aliases (`AS`)
* Multiple Sort Keys

---

## Difficulty

Easy

## Platform

HackerRank SQL (Intermediate)
