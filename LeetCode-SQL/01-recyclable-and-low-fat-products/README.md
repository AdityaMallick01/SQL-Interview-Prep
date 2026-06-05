# Recyclable and Low Fat Products

### Problem Link
https://leetcode.com/problems/recyclable-and-low-fat-products/

### Difficulty
Easy

### Description
Find the ids of products that are both low fat and recyclable.

### SQL Solution

```sql
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';