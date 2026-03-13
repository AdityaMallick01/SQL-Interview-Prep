# Invalid Tweets

## Problem Link

https://leetcode.com/problems/invalid-tweets/

## Difficulty

Easy

---

## Table: Tweets

| Column Name | Type    |
| ----------- | ------- |
| tweet_id    | int     |
| content     | varchar |

* `tweet_id` is the **primary key**.
* `content` stores the text of the tweet.

---

## Problem

A tweet is considered **invalid** if the number of characters in `content` is **strictly greater than 15**.

Return the **IDs of the invalid tweets**.

The result can be returned **in any order**.

---

## SQL Solution

```sql
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
```

---

## Explanation

* `LENGTH(content)`
  → Returns the number of characters in the tweet.

* `WHERE LENGTH(content) > 15`
  → Filters tweets that exceed the allowed length.

Only the **tweet_id** of those tweets is returned.

---

## Complexity

Time Complexity: **O(n)**
The database scans the `Tweets` table once.
