# Delete Duplicate Emails

## 🔗 Problem Link

https://leetcode.com/problems/delete-duplicate-emails/

## 🟢 Difficulty

Easy

---

## 📊 Table: Person

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| email       | varchar |

---

## ❓ Problem

Delete duplicate emails while keeping:

* only one unique email
* the row with the smallest `id`

---

## 💡 SQL Solution

```sql id="k4x8pr"
DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;
```

---

# 🧠 Explanation

## 🔹 Self Join

```sql id="u6m2vw"
FROM Person p1
JOIN Person p2
```

👉 Joins the table with itself.

Used for comparing rows inside the same table.

---

## 🔹 Same Email

```sql id="a9q5zn"
p1.email = p2.email
```

👉 Finds duplicate emails.

---

## 🔹 Larger ID

```sql id="f3w8kt"
p1.id > p2.id
```

👉 Keeps the smaller `id`
and deletes larger duplicate ids.

Example:

| id | email                             |
| -- | --------------------------------- |
| 1  | [a@gmail.com](mailto:a@gmail.com) |
| 3  | [a@gmail.com](mailto:a@gmail.com) |

👉 Delete:

```text id="d7n4xp"
id = 3
```

---

## 🔹 DELETE

```sql id="p2v9mq"
DELETE p1
```

👉 Deletes rows from alias `p1`.

---

# 🔥 Key Pattern

## Remove Duplicates Using Self Join

```sql id="t8x1kr"
DELETE t1
FROM table t1
JOIN table t2
ON duplicate_condition
AND t1.id > t2.id
```

👉 Very common SQL interview pattern.

Used for:

* removing duplicates
* keeping smallest/largest row
* data cleanup

---

# ⚠️ Important Concept

## Why `p1.id > p2.id`?

| Condition | Result            |
| --------- | ----------------- |
| `>`       | Keeps smallest id |
| `<`       | Keeps largest id  |

👉 Here we must keep the smallest id.

---

# ⏱️ Complexity

Time Complexity: **O(n²)** worst case

* Due to self join comparisons.
