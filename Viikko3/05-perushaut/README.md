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