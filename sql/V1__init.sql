CREATE TABLE employee (
    emp_no INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10, 2),
    dept_id INT,
    jOD DATE,
    DoR DATE
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO department (dept_id, dept_name) VALUES
(100, 'HR'),
(200, 'Sales'),
(300, 'IT'),
(400, 'XCOM'),
(500, 'Finance'),
(600, NULL);

INSERT INTO employee (emp_no, emp_name, salary, dept_id, jOD, DoR) VALUES
(101, 'Anil', 50000, 100, '2022-04-27', '2022-01-01'),
(102, 'Mani', 60000, 200, '2022-04-27', '2022-01-15'),
(103, 'Sri', 55000, 600, '2022-04-27', '2022-02-01'),
(104, 'Nick', 52000, 200, '2022-04-27', '2022-02-15'),
(105, 'Solaris', 58000, 100, '2022-04-27', '2022-03-01'),
(106, 'Parthiva', 53000, 600, '2022-04-27', '2022-03-15'),
(107, 'Patel', 58000, 300, '2022-04-27', '2022-03-01'),
(108, 'Chandu', 58000, 500, '2022-04-27', '2022-03-01'),
(109, 'Nani', 58000, 400, '2022-04-27', '2022-03-01');