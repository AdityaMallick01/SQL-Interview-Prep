# Students and Examinations

## Problem Link

https://leetcode.com/problems/students-and-examinations/

## Difficulty

Easy

---

## Problem

Return all students and all subjects along with the number of exams each student attended for each subject.

Even if a student did not attend an exam, include them with count = 0.

---

## SQL Solution

```sql
SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;
```

---

## Explanation

* **CROSS JOIN**
  → creates all student–subject combinations

* **LEFT JOIN**
  → attaches exam data (or NULL if none)

* **COUNT(e.student_id)**
  → counts only non-null values → gives 0 if no exam

---

## Key Pattern 🔥

```
Generate all combinations → CROSS JOIN
Fill missing data → LEFT JOIN
Count → COUNT()
```

This is a **very important interview pattern**.
