# Patients With a Condition

## 🔗 Problem Link

https://leetcode.com/problems/patients-with-a-condition/

## 🟢 Difficulty

Easy

---

## 📊 Table: Patients

| Column Name  | Type    |
| ------------ | ------- |
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

---

## ❓ Problem

Find patients whose `conditions` contain a condition starting with:

```text id="t8v3mp"
DIAB1
```

Return:

* patient_id
* patient_name
* conditions

---

## 💡 SQL Solution

```sql id="w1x7kr"
SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';
```

---

# 🧠 Explanation

## 🔹 LIKE

```sql id="f4m9qv"
LIKE pattern
```

👉 Used for pattern matching in strings.

---

## 🔹 Condition at Start

```sql id="c8p2zn"
conditions LIKE 'DIAB1%'
```

👉 Matches when:

* condition starts with `DIAB1`

Example:

```text id="u5w1xt"
DIAB100
```

---

## 🔹 Condition in Middle

```sql id="r3k7mv"
conditions LIKE '% DIAB1%'
```

👉 Matches when:

* `DIAB1` appears after a space

Example:

```text id="a6n2qp"
ABC DIAB100 XYZ
```

---

# 🔥 Key Pattern

## Pattern Matching

```sql id="p9x4wk"
LIKE '%text%'
```

👉 Commonly used for:

* searching keywords
* matching prefixes
* filtering text columns

---

# ⚠️ Important Difference

| Pattern      | Meaning                      |
| ------------ | ---------------------------- |
| `'DIAB1%'`   | Starts with DIAB1            |
| `'% DIAB1%'` | Contains DIAB1 after a space |
| `'%DIAB1%'`  | Matches anywhere             |

👉 We avoid:

```sql id="m7v1qt"
'%DIAB1%'
```

because it could match invalid strings like:

```text id="d2p8zs"
ABCDIAB100
```

---

# ⏱️ Complexity

Time Complexity: **O(n)**

* Each row is scanned once.
