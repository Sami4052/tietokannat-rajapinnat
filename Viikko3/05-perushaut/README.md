mysql> USE employees;
Database changed
mysql> SELECT dept_name FROM departments;
+--------------------+
| dept_name          |
+--------------------+
| Customer Service   |
| Development        |
| Finance            |
| Human Resources    |
| Marketing          |
| Production         |
| Quality Management |
| Research           |
| Sales              |
+--------------------+

b)
mysql> SELECT DISTINCT title FROM titles;
+--------------------+
| title              |
+--------------------+
| Senior Engineer    |
| Staff              |
| Engineer           |
| Senior Staff       |
| Assistant Engineer |
| Technique Leader   |
| Manager            |
+--------------------+

c)
mysql> SELECT MAX(salary) AS suurin_palkka, MIN(salary) AS pienin_palkka FROM salaries;
+---------------+---------------+
| suurin_palkka | pienin_palkka |
+---------------+---------------+
|        158220 |         38623 |
+---------------+---------------+

d)
mysql> SELECT AVG(salary) AS keskiarvo_palkka FROM salaries;
+------------------+
| keskiarvo_palkka |
+------------------+
|       63810.7448 |
+------------------+