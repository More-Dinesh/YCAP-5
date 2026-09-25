CREATE DATABASE db4;
USE db4;

CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(30),
	manager_id INT DEFAULT 1
);

SELECT * FROM employees;
INSERT INTO employees VALUES
(1,'Dinesh', NULL),
(2,'Mangesh', 1),
(3,'Radhe', 1),
(4,'Aditya', 2);

SELECT
		e.emp_name as Employee,
        m.emp_name as Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;