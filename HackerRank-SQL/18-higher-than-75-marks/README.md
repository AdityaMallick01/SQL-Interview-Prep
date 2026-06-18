# Higher Than 75 Marks

## Problem

Query the `Name` of any student in `STUDENTS` who scored higher than **75 Marks**.

Order the output by the last three characters of each name.

If two or more students have names ending in the same last three characters, sort them by ascending `ID`.

### Table: STUDENTS

| Column | Type |
|---------|---------|
| ID | Integer |
| Name | String |
| Marks | Integer |

---

## Solution

```sql
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
```

---

## Explanation

- `WHERE Marks > 75` filters students who scored more than 75 marks.
- `RIGHT(Name, 3)` extracts the last three characters of each student's name.
- Results are sorted alphabetically using these last three characters.
- If multiple students have the same last three characters, `ID` is used as a secondary sort key.

### Example

| Name | Last 3 Characters |
|------|-------------------|
| Bobby | bby |
| Robby | bby |
| Julia | lia |

Sorting:

```text
bby -> Bobby
bby -> Robby
lia -> Julia
```

Since Bobby and Robby have the same last three characters, the student with the smaller ID appears first.

---

## Concepts Used

- SELECT
- WHERE Clause
- ORDER BY
- RIGHT()
- Multiple Sorting Keys

---

## Difficulty

Easy

## Platform

HackerRank SQL (Basic)