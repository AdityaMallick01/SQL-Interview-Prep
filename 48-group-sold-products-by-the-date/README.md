# Group Sold Products By The Date

## 🔗 Problem Link

https://leetcode.com/problems/group-sold-products-by-the-date/

## 🟢 Difficulty

Easy

---

## 📊 Table: Activities

| Column Name | Type    |
| ----------- | ------- |
| sell_date   | date    |
| product     | varchar |

---

## ❓ Problem

For each date:

* count distinct products sold
* return product names
* product names should be sorted lexicographically

Return results ordered by `sell_date`.

---

## 💡 SQL Solution

```sql id="d6v1mp"
SELECT sell_date,
       COUNT(DISTINCT product) AS num_sold,
       GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
```

---

# 🧠 Explanation

## 🔹 GROUP BY

```sql id="x8t2qn"
GROUP BY sell_date
```

👉 Creates groups for each date.

---

## 🔹 COUNT DISTINCT

```sql id="r5m9zk"
COUNT(DISTINCT product)
```

👉 Counts unique products sold on that day.

Example:

| product |
| ------- |
| Phone   |
| Phone   |
| Laptop  |

👉 Count = `2`

---

## 🔹 GROUP_CONCAT

```sql id="j4p7wy"
GROUP_CONCAT(DISTINCT product ORDER BY product)
```

👉 Combines products into one comma-separated string.

Example:

```text id="b2n6qa"
Laptop,Phone,Tablet
```

---

## 🔹 DISTINCT

```sql id="k7w3rm"
DISTINCT product
```

👉 Removes duplicate product names.

---

## 🔹 ORDER BY inside GROUP_CONCAT

```sql id="z1q8tc"
ORDER BY product
```

👉 Sorts product names lexicographically.

Example:

```text id="c4m9xp"
Apple,Banana,Orange
```

---

# 🔥 Key Pattern

## Group + Aggregate + Concatenate

```sql id="v6t2yr"
GROUP BY column
COUNT(DISTINCT col)
GROUP_CONCAT(col)
```

👉 Very common SQL aggregation pattern.

Used for:

* summaries
* grouped reporting
* dashboards

---

# ⚠️ Important Concept

## Difference

| Function        | Purpose                 |
| --------------- | ----------------------- |
| COUNT()         | counts rows             |
| COUNT(DISTINCT) | counts unique values    |
| GROUP_CONCAT()  | combines rows into text |

---

# ⏱️ Complexity

Time Complexity: **O(n log n)**

* grouping + sorting product names
