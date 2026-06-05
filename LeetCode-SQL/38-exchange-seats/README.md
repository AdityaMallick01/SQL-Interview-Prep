# Exchange Seats

## 🔗 Problem Link

https://leetcode.com/problems/exchange-seats/

## 🟡 Difficulty

Medium

---

## 📊 Table: Seat

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| student     | varchar |

---

## ❓ Problem

Swap seat IDs of every two consecutive students:

* (1 ↔ 2), (3 ↔ 4), ...
* If total students is **odd**, last one stays same

---

## 💡 SQL Solution

```sql
SELECT
    CASE
        WHEN id % 2 = 1 AND id < (SELECT COUNT(*) FROM Seat) THEN id + 1
        WHEN id % 2 = 0 THEN id - 1
        ELSE id
    END AS id,
    student
FROM Seat
ORDER BY id;
```

---

## 🧠 Explanation

### 🔹 Odd Position

```sql
id % 2 = 1
```

👉 Swap with next → `id + 1`

---

### 🔹 Even Position

```sql
id % 2 = 0
```

👉 Swap with previous → `id - 1`

---

### 🔹 Last Element (Odd Count)

```sql
id < COUNT(*)
```

👉 Prevents swapping last element

---

## 🔥 Key Pattern

### Conditional Value Transformation

```sql
CASE 
    WHEN condition THEN value
END
```

👉 Used for:

* Swapping
* Mapping
* Categorization

---

## ⚠️ Important

* Must use `ORDER BY id` after swapping
* Use subquery `COUNT(*)` to detect last row

---

## ⏱️ Complexity

Time Complexity: **O(n)**
