# Game Play Analysis IV

## 🔗 Problem Link

https://leetcode.com/problems/game-play-analysis-iv/

## 🟡 Difficulty

Medium

---

## 📊 Table: Activity

| Column Name  | Type |
| ------------ | ---- |
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

---

## ❓ Problem

Find the **fraction of players** who logged in again **the day after their first login**, rounded to **2 decimal places**.

---

## 💡 SQL Solution

```sql
SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) * 1.0 / 
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) b
ON a.player_id = b.player_id
AND a.event_date = b.first_date + INTERVAL 1 DAY;
```

---

## 🧠 Explanation

### 🔹 Step 1: First Login per Player

```
MIN(event_date)
```

---

### 🔹 Step 2: Next Day Login

```
first_date + INTERVAL 1 DAY
```

---

### 🔹 Step 3: Count Players

* Count players who logged in next day
* Divide by total players

---

## 🔥 Key Pattern

### First Row + Next Day

```
MIN(date) + INTERVAL 1 DAY
```

---

### Fraction Calculation

```
COUNT(condition) / COUNT(total)
```

---

## ⏱️ Complexity

**Time Complexity:** O(n)
