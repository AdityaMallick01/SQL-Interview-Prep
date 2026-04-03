# Immediate Food Delivery II

## 🔗 Problem Link

https://leetcode.com/problems/immediate-food-delivery-ii/

## 🟡 Difficulty

Medium

---

## 📊 Table: Delivery

| Column Name                 | Type |
| --------------------------- | ---- |
| delivery_id                 | int  |
| customer_id                 | int  |
| order_date                  | date |
| customer_pref_delivery_date | date |

---

## ❓ Problem

An order is:

* **Immediate** → if `order_date = customer_pref_delivery_date`
* **Scheduled** → otherwise

Find the **percentage of immediate orders in the first order of each customer**, rounded to **2 decimal places**.

---

## 💡 SQL Solution

```sql
SELECT 
    ROUND(
        SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*),
        2
    ) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
```

---

## 🧠 Explanation

### 🔹 Step 1: Get First Order per Customer

```sql
SELECT customer_id, MIN(order_date)
FROM Delivery
GROUP BY customer_id
```

---

### 🔹 Step 2: Filter Only First Orders

```sql
WHERE (customer_id, order_date) IN (...)
```

---

### 🔹 Step 3: Immediate Orders

```sql
order_date = customer_pref_delivery_date
```

---

### 🔹 Step 4: Percentage

```sql
SUM(CASE WHEN condition THEN 1 ELSE 0 END) / COUNT(*)
```

---

## 🔥 Key Pattern

### First Row Per Group

```sql
GROUP BY + MIN(column)
```

---

### Conditional Percentage

```sql
SUM(CASE WHEN condition THEN 1 ELSE 0 END) / COUNT(*)
```

---

## ⏱️ Complexity

**Time Complexity:** O(n)
