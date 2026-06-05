# Triangle Judgement

## 🔗 Problem Link

https://leetcode.com/problems/triangle-judgement/

## 🟢 Difficulty

Easy

---

## 📊 Table: Triangle

| Column Name | Type |
| ----------- | ---- |
| x           | int  |
| y           | int  |
| z           | int  |

---

## ❓ Problem

For each row, determine whether three sides can form a **valid triangle**.

---

## 💡 SQL Solution

```sql
SELECT 
    x, 
    y, 
    z,
    CASE 
        WHEN x + y > z 
         AND x + z > y 
         AND y + z > x 
        THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;
```

---

## 🧠 Explanation

### 🔹 Triangle Condition

A triangle is valid if:

```
x + y > z  
x + z > y  
y + z > x
```

👉 All three conditions must be true

---

### 🔹 CASE Statement

```sql
CASE 
    WHEN condition THEN 'Yes'
    ELSE 'No'
END
```

* Returns result based on condition

---

## 🔥 Key Pattern

### Conditional Output

```sql
CASE WHEN condition THEN value1 ELSE value2 END
```

👉 Used for:

* Classification
* Flagging rows
* Conditional logic

---

## ⚠️ Important

* Use **AND** (not OR)
* All 3 conditions must hold ❗

---

## ⏱️ Complexity

Time Complexity: **O(n)**
