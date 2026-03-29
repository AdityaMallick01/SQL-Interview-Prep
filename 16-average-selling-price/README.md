# Average Selling Price

## Problem Link

https://leetcode.com/problems/average-selling-price/

## Difficulty

Easy

---

## Table: Prices

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

---

## Table: UnitsSold

| Column Name   | Type |
| ------------- | ---- |
| product_id    | int  |
| purchase_date | date |
| units         | int  |

---

## Problem

Calculate the **average selling price for each product**.

### Formula:

```
average_price = total_revenue / total_units
```

Where:

```
total_revenue = SUM(price * units)
```

Return the result rounded to **2 decimal places**.

If a product has **no sales**, return **0.00**.

---

## SQL Solution

```sql
SELECT 
    p.product_id,
    ROUND(
        COALESCE(SUM(p.price * u.units) / SUM(u.units), 0),
        2
    ) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u 
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
```

---

## Explanation

### LEFT JOIN

* Ensures all products are included (even those with no sales)

### Date Condition

```
u.purchase_date BETWEEN p.start_date AND p.end_date
```

* Matches correct price for each purchase

---

### Weighted Average

```
SUM(price * units) / SUM(units)
```

---

### COALESCE (Important 🔥)

```
COALESCE(expression, 0)
```

* Handles cases where a product has **no sales**
* Prevents NULL results

---

## Key Pattern 🔥

```
Weighted Average = SUM(value * weight) / SUM(weight)
```

---

## Complexity

Time Complexity: **O(n)**

---

## Note

Handling NULL values using `COALESCE` is important when working with `LEFT JOIN` and aggregations. This ensures correct results even when data is missing.
