# Binary Tree Nodes

## Problem

Given a table `BST` containing:

| Column | Type |
|---------|---------|
| N | Integer |
| P | Integer |

- `N` represents a node value.
- `P` represents the parent node.

Determine whether each node is:

- Root
- Leaf
- Inner

Return the node value and its type ordered by `N`.

---

## Solution

```sql
SELECT N,
       CASE
           WHEN P IS NULL THEN 'Root'
           WHEN N NOT IN (
               SELECT P
               FROM BST
               WHERE P IS NOT NULL
           ) THEN 'Leaf'
           ELSE 'Inner'
       END
FROM BST
ORDER BY N;
```

---

## Explanation

### Root Node

```sql
WHEN P IS NULL
```

A root node has no parent.

---

### Leaf Node

```sql
WHEN N NOT IN (
    SELECT P
    FROM BST
    WHERE P IS NOT NULL
)
```

A leaf node never appears as someone's parent.

---

### Inner Node

```sql
ELSE 'Inner'
```

A node that is neither Root nor Leaf.

---

## Concepts Used

- CASE
- Subqueries
- NOT IN
- NULL Handling

---

## Difficulty

Medium

## Platform

HackerRank SQL (Advanced Select)