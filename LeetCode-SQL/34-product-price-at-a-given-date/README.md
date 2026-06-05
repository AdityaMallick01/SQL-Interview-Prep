# Product Price at a Given Date

## 🔗 Problem Link

https://leetcode.com/problems/product-price-at-a-given-date/

## 🟡 Difficulty

Medium

---

## 📊 Table: Products

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| new_price   | int  |
| change_date | date |

---

## ❓ Problem

Find the price of each product on **2019-08-16**.

* If price was updated before or on that date → use latest price
* If no updates → default price = **10**

---

## 💡 SQL Solution

```sql id="s3kxyo"
SELECT 
    p.product_id,
    COALESCE(
        (
            SELECT new_price
            FROM Products p2
            WHERE p2.product_id = p.product_id
              AND p2.change_date <= '2019-08-16'
            ORDER BY p2.change_date DESC
            LIMIT 1
        ),
        10
    ) AS price
FROM (SELECT DISTINCT product_id FROM Products) p;
```

---

## 🧠 Explanation

### 🔹 Correlated Subquery

```sql id="p3r4tm"
SELECT new_price
FROM Products p2
WHERE p2.product_id = p.product_id
  AND change_date <= '2019-08-16'
ORDER BY change_date DESC
LIMIT 1
```

* Finds **latest price before given date**

---

### 🔹 COALESCE

```sql id="p0z3s3"
COALESCE(subquery, 10)
```

* If subquery returns NULL → use **default price 10**

---

### 🔹 DISTINCT Products

```sql id="tn6c2g"
SELECT DISTINCT product_id
```

* Ensures all products appear in result

---

## 🔥 Key Pattern

### Latest Record Before Date

```sql id="q8zjcz"
ORDER BY date DESC
LIMIT 1
```

👉 Used for:

* Price history
* Versioned data
* Slowly changing dimensions

---

## ⚠️ Important

* Must filter `change_date <= target_date`
* Otherwise future prices may be picked ❗

---

## ⏱️ Complexity

Time Complexity: **O(n log n)**
