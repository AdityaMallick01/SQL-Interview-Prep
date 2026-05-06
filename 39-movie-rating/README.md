# Movie Rating

## 🔗 Problem Link

https://leetcode.com/problems/movie-rating/

## 🟡 Difficulty

Medium

---

## 📊 Tables

### Movies

| Column Name | Type    |
| ----------- | ------- |
| movie_id    | int     |
| title       | varchar |

---

### Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |

---

### MovieRating

| Column Name | Type |
| ----------- | ---- |
| movie_id    | int  |
| user_id     | int  |
| rating      | int  |
| created_at  | date |

---

## ❓ Problem

Find:

1️⃣ User who rated the **greatest number of movies**
👉 Tie → smallest name lexicographically

2️⃣ Movie with **highest average rating in February 2020**
👉 Tie → smallest title lexicographically

---

## 💡 SQL Solution

```sql id="vj0dpm"
(
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating r
        ON u.user_id = r.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name
    LIMIT 1
)

UNION ALL

(
    SELECT m.title AS results
    FROM Movies m
    JOIN MovieRating r
        ON m.movie_id = r.movie_id
    WHERE r.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(r.rating) DESC, m.title
    LIMIT 1
);
```

---

## 🧠 Explanation

#️⃣ Part 1 — Most Active User

### 🔹 Join Users + Ratings

```sql id="1x6w4u"
JOIN MovieRating
```

👉 Connect users with ratings

---

### 🔹 Count Ratings

```sql id="08q5g4"
COUNT(*)
```

👉 Counts movies rated by each user

---

### 🔹 Tie Breaking

```sql id="t6gkfe"
ORDER BY COUNT(*) DESC, u.name
```

👉 Highest count first
👉 Lexicographically smallest name on tie

---

#️⃣ Part 2 — Highest Rated Movie

### 🔹 Filter February 2020

```sql id="v4k07w"
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
```

---

### 🔹 Average Rating

```sql id="zbj55z"
AVG(r.rating)
```

👉 Compute movie average rating

---

### 🔹 Tie Breaking

```sql id="6vghk9"
ORDER BY AVG(r.rating) DESC, m.title
```

👉 Highest average first
👉 Smallest title on tie

---

#️⃣ Combine Both Results

```sql id="tfjlwm"
UNION ALL
```

👉 Return both answers in single column

---

## 🔥 Key Patterns

### Aggregation Ranking

```sql id="71ek5d"
GROUP BY
ORDER BY aggregate DESC
LIMIT 1
```

---

### Multi-query Output

```sql id="lvt0h4"
query1
UNION ALL
query2
```

---

## ⚠️ Important

* Use `UNION ALL` because results are independent
* Group by IDs + names/titles for SQL correctness

---

## ⏱️ Complexity

Time Complexity: **O(n log n)**
