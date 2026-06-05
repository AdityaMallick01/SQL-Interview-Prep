# Product Sales Analysis I

## Problem Link

https://leetcode.com/problems/product-sales-analysis-i/

## Difficulty

Easy

---

## Table: Sales

| Column Name | Type |
| ----------- | ---- |
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

* `(sale_id, year)` is the **primary key**.
* `product_id` is a **foreign key** referencing the `Product` table.
* Each row represents a product sale in a particular year.

---

## Table: Product

| Column Name  | Type    |
| ------------ | ------- |
| product_id   | int     |
| product_name | varchar |

* `product_id` is the **primary key**.

---

## Problem

Report:

* `product_name`
* `year`
* `price`

for each sale in the **Sales** table.

---

## SQL Solution

```sql
SELECT Product.product_name, Sales.year, Sales.price
FROM Sales
LEFT JOIN Product
ON Sales.product_id = Product.product_id;
```

---

## Explanation

The query joins the **Sales** and **Product** tables.

* `Sales.product_id = Product.product_id`
  → Connects each sale to its product.

* `LEFT JOIN`
  → Ensures all sales appear even if product details are missing.

The query returns:

* product name
* year of sale
* price

---

## Complexity

Time Complexity: **O(n)**
The database performs a join between two tables.
