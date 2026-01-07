
-- Employee Dataset for SQL Practice
-- Database: company_db

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30),
    joining_date DATE
);

INSERT INTO employees VALUES
(1, 'Ali', 'IT', 60000, 'Karachi', '2021-03-15'),
(2, 'Sara', 'HR', 45000, 'Lahore', '2022-01-10'),
(3, 'Ahmed', 'IT', 70000, 'Karachi', '2020-07-22'),
(4, 'Fatima', 'Finance', 50000, 'Islamabad', '2021-11-05'),
(5, 'Usman', 'HR', 40000, 'Lahore', '2023-02-18'),
(6, 'Ayesha', 'Finance', 65000, 'Karachi', '2019-09-30'),
(7, 'Bilal', 'IT', 72000, 'Lahore', '2020-12-01'),
(8, 'Hina', 'Marketing', 48000, 'Islamabad', '2022-06-25'),
(9, 'Kamran', 'Marketing', 52000, 'Karachi', '2021-08-14'),
(10, 'Zain', 'HR', 47000, 'Islamabad', '2023-05-09');

SELECT * FROM employees;

SELECT name, salary FROM employees;

SELECT * 
FROM employees
WHERE department = 'IT';

SELECT * 
FROM employees
WHERE salary > 50000;

SELECT * 
FROM employees
WHERE city = 'Lahore';

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 65000;

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT AVG(salary) AS avg_salary
FROM employees;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT city, COUNT(*) AS total
FROM employees
GROUP BY city;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT MIN(salary) AS lowest_salary
FROM employees;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;












