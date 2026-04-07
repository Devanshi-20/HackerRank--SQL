# 🗄️ HackerRank SQL Challenges

A complete collection of my solutions to HackerRank's **Solve SQL** problem set — covering everything from basic queries to advanced aggregations and window functions.

---

## 📚 What I Learned

| Topic | Concepts Covered |
|-------|-----------------|
| **SELECT** | Filtering with `WHERE`, aliasing, `DISTINCT`, `LIKE`, `IN`, `BETWEEN`, `ORDER BY`, `LIMIT` |
| **Joins** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`, self-joins, cross-joins |
| **Aggregation** | `GROUP BY`, `HAVING`, `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` |
| **Advanced Queries** | Subqueries, correlated subqueries, `EXISTS`, CTEs (`WITH`), window functions |
| **Numeric & Arithmetic** | `ROUND`, `FLOOR`, `CEIL`, `MOD`, `TRUNCATE`, arithmetic expressions, type casting |

---

## 🗂️ Repository Structure

```
hackerrank-sql/
│
├── 01_select/
│   ├── revising_the_select_query.sql
│   ├── select_all.sql
│   ├── select_by_id.sql
│   └── ...
│
├── 02_joins/
│   ├── african_cities.sql
│   ├── asian_population.sql
│   ├── the_report.sql
│   └── ...
│
├── 03_aggregation/
│   ├── revising_aggregations.sql
│   ├── average_population.sql
│   ├── weather_observation.sql
│   └── ...
│
├── 04_advanced/
│   ├── binary_tree_nodes.sql
│   ├── new_companies.sql
│   ├── interviews.sql
│   └── 15_days_of_learning_sql.sql
│
├── 05_numeric_and_arithmetic/
│   ├── employee_salaries.sql
│   ├── top_earners.sql
│   └── ...
│
└── README.md
```

---

## ✅ Challenge Progress

### Basic SELECT
- [x] Revising the Select Query I & II
- [x] Select All
- [x] Select By ID
- [x] Japanese Cities' Attributes & Names
- [x] Weather Observation Stations (1–19)
- [x] Higher Than 75 Marks

### Joins
- [x] Asian Population
- [x] African Cities
- [x] Average Population of Each Continent
- [x] The Report
- [x] Top Competitors
- [x] Ollivander's Inventory
- [x] Challenges
- [x] Contest Leaderboard

### Aggregation
- [x] Revising Aggregations (The Count Function, The Sum Function, Averages)
- [x] Average Population
- [x] Japan Population
- [x] Population Density Difference
- [x] Weather Observation Station Aggregates
- [x] Top Earners
- [x] The Blunder

### Advanced Queries
- [x] Binary Tree Nodes
- [x] New Companies
- [x] Occupations (Pivot)
- [x] Placements
- [x] Symmetric Pairs
- [x] Interviews
- [x] **15 Days of Learning SQL** ⭐

### Numeric & Arithmetic Expressions
- [x] Employee Salaries
- [x] Type of Triangle
- [x] The PADS

---

## 🌟 Highlight: 15 Days of Learning SQL

The most challenging problem in the set. It required:

- Counting hackers who submitted **every single consecutive day** from Day 1 to Day N using correlated subqueries and `DATEDIFF`
- Finding the **top submitter per day** with a max-count + tiebreaker on `hacker_id`
- Combining multiple correlated subqueries in a single clean `SELECT`

```sql
SELECT
    submission_date,
    COUNT(DISTINCT hacker_id) AS consistent_hackers,
    (SELECT s2.hacker_id FROM Submissions s2
     WHERE s2.submission_date = s.submission_date
     GROUP BY s2.hacker_id
     ORDER BY COUNT(*) DESC, s2.hacker_id ASC LIMIT 1) AS top_hacker_id,
    (SELECT h.name FROM Submissions s2
     JOIN Hackers h ON h.hacker_id = s2.hacker_id
     WHERE s2.submission_date = s.submission_date
     GROUP BY s2.hacker_id, h.name
     ORDER BY COUNT(*) DESC, s2.hacker_id ASC LIMIT 1) AS top_hacker_name
FROM Submissions s
WHERE hacker_id IN (
    SELECT hacker_id FROM Submissions
    WHERE submission_date <= s.submission_date
    GROUP BY hacker_id
    HAVING COUNT(DISTINCT submission_date) = DATEDIFF(s.submission_date, '2016-03-01') + 1
)
GROUP BY submission_date
ORDER BY submission_date;
```

---

## 🛠️ How to Run

These solutions are written in **MySQL** syntax. To run them locally:

```bash
# Import sample data (if you have the schema)
mysql -u root -p < schema.sql

# Run a solution
mysql -u root -p your_db < 04_advanced/15_days_of_learning_sql.sql
```

Or paste directly into the HackerRank SQL editor — all solutions are tested and accepted ✅.

---

## 📖 Resources

- [HackerRank SQL Domain](https://www.hackerrank.com/domains/sql)
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [SQL Window Functions Explained](https://mode.com/sql-tutorial/sql-window-functions/)

---

## 🙋 About

Built as part of my journey to master SQL fundamentals and advanced query writing. Every solution is written from scratch and optimised for readability.

Feel free to open an issue or PR if you spot a more elegant approach!

---

⭐ *If this helped you, consider starring the repo!*
