# List the Products Ordered in a Period

## 🔗 Problem Link

https://leetcode.com/problems/list-the-products-ordered-in-a-period/

## 🟢 Difficulty

Easy

---

## 📊 Table: Products

| Column Name      | Type    |
| ---------------- | ------- |
| product_id       | int     |
| product_name     | varchar |
| product_category | varchar |

---

## 📊 Table: Orders

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| order_date  | date |
| unit        | int  |

---

## ❓ Problem

Find products:

* ordered in February 2020
* total ordered units ≥ 100

Return:

* `product_name`
* total `unit`

---

## 💡 SQL Solution

```sql id="k8x4pr"
SELECT p.product_name,
       SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
```

---

# 🧠 Explanation

## 🔹 JOIN

```sql id="m2v9qa"
JOIN Orders o
ON p.product_id = o.product_id
```

👉 Combines product details with order records.

---

## 🔹 WHERE

```sql id="a7n5zk"
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
```

👉 Filters only February 2020 orders.

---

## 🔹 SUM

```sql id="r4w1ty"
SUM(o.unit)
```

👉 Calculates total units ordered for each product.

---

## 🔹 GROUP BY

```sql id="p6m8xr"
GROUP BY p.product_id, p.product_name
```

👉 Creates one group per product.

---

## 🔹 HAVING

```sql id="t3q7vn"
HAVING SUM(o.unit) >= 100
```

👉 Keeps only products with at least 100 units sold.

---

# 🔥 Key Pattern

## Aggregate Filtering

```sql id="z9k2wp"
GROUP BY column
HAVING aggregate_condition
```

👉 Used when filtering grouped data.

Examples:

* total sales
* average marks
* order counts

---

# ⚠️ Important Difference

| Clause | Used For                      |
| ------ | ----------------------------- |
| WHERE  | filters rows before grouping  |
| HAVING | filters groups after grouping |

---

# ⏱️ Complexity

Time Complexity: **O(n)**

* scans and groups order records
