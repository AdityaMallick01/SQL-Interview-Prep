# Find Users With Valid E-Mails

## 🔗 Problem Link

https://leetcode.com/problems/find-users-with-valid-e-mails/

## 🟢 Difficulty

Easy

---

## 📊 Table: Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |
| mail        | varchar |

---

## ❓ Problem

Find users with valid emails.

A valid email:

* starts with a letter
* may contain:

  * letters
  * digits
  * underscore `_`
  * period `.`
  * dash `-`
* must end with:

```text id="m5r8xp"
@leetcode.com
```

---

## 💡 SQL Solution

```sql id="k2x7pr"
SELECT user_id,
       name,
       mail
FROM Users
WHERE REGEXP_LIKE(
    mail,
    '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$'
);
```

---

# 🧠 Explanation

## 🔹 REGEXP_LIKE

```sql id="u7m4vw"
REGEXP_LIKE(mail, pattern)
```

👉 Checks whether the email matches the regex pattern.

---

## 🔹 Start With Letter

```sql id="a3q9zn"
^[A-Za-z]
```

👉 Email must begin with a letter.

Examples:

✅ Valid

```text id="f8w1kt"
alice@leetcode.com
```

❌ Invalid

```text id="p6v2mq"
1alice@leetcode.com
```

---

## 🔹 Allowed Characters

```sql id="t4x9kr"
[A-Za-z0-9_.-]*
```

👉 Allows:

* uppercase letters
* lowercase letters
* digits
* `_`
* `.`
* `-`

`*` means:

```text id="d1n7xp"
zero or more characters
```

---

## 🔹 Fixed Domain

```sql id="r8k3zp"
@leetcode\\.com$
```

👉 Email must end exactly with:

```text id="w5v9xn"
@leetcode.com
```

`\\.` is used because:

* `.` in regex means “any character”
* `\\.` means actual dot `.`

`$` means:

```text id="q2m6yv"
end of string
```

---

# 🔥 Key Pattern

## SQL Regex Filtering

```sql id="z7p4tw"
WHERE REGEXP_LIKE(column, pattern)
```

👉 Used for:

* email validation
* phone validation
* pattern matching
* text filtering

---

# ⚠️ Important Regex Symbols

| Symbol | Meaning         |
| ------ | --------------- |
| `^`    | start of string |
| `$`    | end of string   |
| `*`    | zero or more    |
| `[]`   | character set   |
| `\\.`  | actual dot      |

---

# ⏱️ Complexity

Time Complexity: **O(n)**

* scans all email rows once
