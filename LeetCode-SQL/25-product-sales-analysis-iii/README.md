# Product Sales Analysis III

## 🔗 Problem Link

https://leetcode.com/problems/product-sales-analysis-iii/

## 🟡 Difficulty

Medium

---

## 📊 Table: Sales

| Column Name | Type |
| ----------- | ---- |
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

---

## ❓ Problem

Find all sales that occurred in the **first year each product was sold**.

---

## 💡 SQL Solution

```sql
SELECT 
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM Sales s
JOIN (
    SELECT 
        product_id,
        MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
) t
ON s.product_id = t.product_id
AND s.year = t.first_year;
```

---

## 🧠 Explanation

### 🔹 Step 1 — Find First Year

```sql
SELECT product_id, MIN(year)
FROM Sales
GROUP BY product_id
```

* Finds earliest year for each product

---

### 🔹 Step 2 — Join Back

```sql
ON s.product_id = t.product_id
AND s.year = t.first_year
```

* Retrieves full row (quantity, price)

---

## 🔥 Key Pattern

### Group + Join Back

```sql
SELECT *
FROM table t1
JOIN (
    SELECT key, MIN(col)
    FROM table
    GROUP BY key
) t2
ON t1.key = t2.key AND t1.col = t2.col;
```

👉 Used when:

* You need **full row of min/max value**

---

## ⏱️ Complexity

**Time Complexity:** O(n)
