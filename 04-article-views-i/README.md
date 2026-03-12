# Article Views I

## Problem Link

https://leetcode.com/problems/article-views-i/

## Difficulty

Easy

---

## Table: Views

| Column Name | Type |
| ----------- | ---- |
| article_id  | int  |
| author_id   | int  |
| viewer_id   | int  |
| view_date   | date |

* The table may contain **duplicate rows**.
* `author_id` is the id of the person who wrote the article.
* `viewer_id` is the id of the person who viewed the article.

If `author_id = viewer_id`, it means the **author viewed their own article**.

---

## Problem

Find all **authors who viewed at least one of their own articles**.

Return the result as a table with column name **id**.

The result should be **sorted in ascending order**.

---

## SQL Solution

```sql
SELECT DISTINCT author_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY author_id;
```

---

## Explanation

The query checks when the **viewer and author are the same person**.

* `viewer_id = author_id`
  → The author viewed their own article.

* `DISTINCT`
  → Ensures each author appears **only once**.

* `ORDER BY author_id`
  → Sorts the result in **ascending order**.

---

## Complexity

Time Complexity: **O(n)**
The database scans the `Views` table once.
