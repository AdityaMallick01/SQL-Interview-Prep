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

* Each row represents price of a product in a date range

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

```id="f6n1ci"
average_price = total_revenue / total_units
```

Where:

```id="8rw49l"
total_revenue = SUM(price * units)
```

Return result rounded to **2 decimal places**.

---

## SQL Solution

```sql id="9pt3cb"
SELECT 
    p.product_id,
    ROUND(SUM(p.price * u.units) / SUM(u.units), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
```

---

## Explanation

### JOIN

* Match product and ensure purchase date falls within price range

```sql id="x9dbxm"
u.purchase_date BETWEEN p.start_date AND p.end_date
```

---

### Weighted Average

```sql id="fs7q4s"
SUM(price * units) / SUM(units)
```

---

### ROUND

* Format to 2 decimal places

---

## Key Pattern 🔥

```id="g1l5eq"
Weighted Average = SUM(value * weight) / SUM(weight)
```

Used in:

* average price
* GPA
* weighted scores

---

## Complexity

Time Complexity: **O(n)**
