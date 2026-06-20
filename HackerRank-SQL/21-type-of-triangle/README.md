# Type of Triangle

## Problem

Write a query identifying the type of each record in the `TRIANGLES` table using its three side lengths.

Output one of the following:

- **Equilateral**: A triangle with all three sides equal.
- **Isosceles**: A triangle with exactly two equal sides.
- **Scalene**: A triangle with all sides of different lengths.
- **Not A Triangle**: The given values do not satisfy the triangle inequality theorem.

### Table: TRIANGLES

| Column | Type |
|---------|---------|
| A | Integer |
| B | Integer |
| C | Integer |

---

## Solution

```sql
SELECT CASE
    WHEN A + B <= C
      OR A + C <= B
      OR B + C <= A
    THEN 'Not A Triangle'

    WHEN A = B AND B = C
    THEN 'Equilateral'

    WHEN A = B OR B = C OR A = C
    THEN 'Isosceles'

    ELSE 'Scalene'
END
FROM TRIANGLES;
```

---

## Explanation

The query uses a `CASE` statement to classify triangles:

1. First checks whether the sides can form a valid triangle using the triangle inequality theorem.
2. If all three sides are equal, it is an **Equilateral** triangle.
3. If any two sides are equal, it is an **Isosceles** triangle.
4. Otherwise, it is a **Scalene** triangle.

---

## Concepts Used

- CASE Statement
- Conditional Logic
- Triangle Inequality Theorem

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)