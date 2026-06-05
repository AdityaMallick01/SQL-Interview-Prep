# Last Person to Fit in the Bus

## 🔗 Problem Link

https://leetcode.com/problems/last-person-to-fit-in-the-bus/

## 🟡 Difficulty

Medium

---

## 📊 Table: Queue

| Column Name | Type    |
| ----------- | ------- |
| person_id   | int     |
| person_name | varchar |
| weight      | int     |
| turn        | int     |

---

## ❓ Problem

People board a bus in order of `turn`.

* The bus can carry **maximum 1000 weight**
* Find the **last person who can still fit**

---

## 💡 SQL Solution

```sql
SELECT person_name
FROM (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS cumulative_weight,
        turn
    FROM Queue
) t
WHERE cumulative_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
```

---

## 🧠 Explanation

### 🔹 Window Function (Prefix Sum)

```sql
SUM(weight) OVER (ORDER BY turn)
```

👉 Computes **running total weight** as people board

---

### 🔹 Filter Valid People

```sql
WHERE cumulative_weight <= 1000
```

👉 Only keep people who can still fit

---

### 🔹 Get Last Valid Person

```sql
ORDER BY turn DESC
LIMIT 1
```

👉 Pick the **last person before exceeding limit**

---

## 🔥 Key Pattern

### Prefix Sum (Running Total)

```sql
SUM(column) OVER (ORDER BY something)
```

👉 Used in:

* Capacity problems
* Cumulative metrics
* Sliding constraints

---

## ⚠️ Important

* Must order by `turn` (boarding order)
* Filtering happens **after computing cumulative sum**

---

## ⏱️ Complexity

Time Complexity: **O(n log n)**
