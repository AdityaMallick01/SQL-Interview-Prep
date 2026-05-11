# Fix Names in a Table

## 🔗 Problem Link

https://leetcode.com/problems/fix-names-in-a-table/

## 🟢 Difficulty

Easy

---

## 📊 Table: Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |

---

## ❓ Problem

Fix each name so that:

* First character is uppercase
* Remaining characters are lowercase

Return the result ordered by `user_id`.

---

## 💡 SQL Solution

```sql id="h8q4mv"
SELECT
    user_id,
    CONCAT(
        UPPER(SUBSTRING(name,1,1)),
        LOWER(SUBSTRING(name,2))
    ) AS name
FROM Users
ORDER BY user_id;
```

---

# 🧠 Explanation

## 🔹 SUBSTRING

```sql id="f3n9ka"
SUBSTRING(name,1,1)
```

👉 Extracts the first character.

---

## 🔹 UPPER

```sql id="p6w1xr"
UPPER(...)
```

👉 Converts first character to uppercase.

---

## 🔹 Remaining Characters

```sql id="d8v5qs"
SUBSTRING(name,2)
```

👉 Extracts the string from position 2 onward.

---

## 🔹 LOWER

```sql id="m4t2zn"
LOWER(...)
```

👉 Converts remaining characters to lowercase.

---

## 🔹 CONCAT

```sql id="x7c8lp"
CONCAT(part1, part2)
```

👉 Combines uppercase first letter with lowercase remaining letters.

---

# 🔥 Key Pattern

## String Formatting

```sql id="n5q1vb"
CONCAT(
    UPPER(first_part),
    LOWER(second_part)
)
```

👉 Commonly used for:

* name formatting
* capitalization
* data cleaning

---

# ⚠️ Important Difference

| Function    | Purpose                 |
| ----------- | ----------------------- |
| UPPER()     | Converts to uppercase   |
| LOWER()     | Converts to lowercase   |
| CONCAT()    | Combines strings        |
| SUBSTRING() | Extracts part of string |

---

# ⏱️ Complexity

Time Complexity: **O(n)**

* Each row is processed once.
