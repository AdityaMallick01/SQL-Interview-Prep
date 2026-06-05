# Monthly Transactions I

## 🔗 Problem Link

https://leetcode.com/problems/monthly-transactions-i/

## 🟡 Difficulty

Medium

---

## 📊 Table: Transactions

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| country     | varchar |
| state       | enum    |
| amount      | int     |
| trans_date  | date    |

* `state` can be `'approved'` or `'declined'`

---

## ❓ Problem

For each **month** and **country**, calculate:

* total number of transactions
* number of approved transactions
* total transaction amount
* total approved amount

---

## 💡 SQL Solution

```sql
SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY 
    country,
    DATE_FORMAT(trans_date, '%Y-%m');
```

---

## 🧠 Explanation

### 🔹 Month Extraction

```sql
DATE_FORMAT(trans_date, '%Y-%m')
```

* Converts date → `YYYY-MM`

---

### 🔹 Total Transactions

```sql
COUNT(*)
```

---

### 🔹 Approved Count

```sql
SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END)
```

---

### 🔹 Total Amount

```sql
SUM(amount)
```

---

### 🔹 Approved Amount

```sql
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END)
```

---

## 🔥 Key Pattern

### Conditional Aggregation

```sql
SUM(CASE WHEN condition THEN value ELSE 0 END)
```

---

## ⏱️ Complexity

**Time Complexity:** O(n)
