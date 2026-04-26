# Customers Who Bought All Products

## 🔗 Problem Link

https://leetcode.com/problems/customers-who-bought-all-products/

## 🟡 Difficulty

Medium

---

## 📊 Tables

### Customer

| Column Name | Type |
| ----------- | ---- |
| customer_id | int  |
| product_key | int  |

---

### Product

| Column Name | Type |
| ----------- | ---- |
| product_key | int  |

---

## ❓ Problem

Find customers who bought **all products**.

---

## 💡 SQL Solution

```sql
SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*) FROM Product
);
```

---

## 🧠 Explanation

### 🔹 Step 1 — Count products per customer

```sql
COUNT(DISTINCT product_key)
```

* Counts unique products each customer bought

---

### 🔹 Step 2 — Total products

```sql
SELECT COUNT(*) FROM Product
```

* Total number of products available

---

### 🔹 Step 3 — Compare

```sql
HAVING count = total
```

* Keeps only customers who bought **all products**

---

## 🔥 Key Pattern

### Relational Division

```sql
GROUP BY entity
HAVING COUNT(DISTINCT item) = (SELECT COUNT(*) FROM items_table)
```

👉 Used when:

* "who bought ALL"
* "who completed ALL"
* "who has ALL items"

---

## ⚠️ Important

* Use `DISTINCT` because duplicates may exist
* Without DISTINCT → wrong counts ❗

---

## ⏱️ Complexity

**Time Complexity:** O(n)
