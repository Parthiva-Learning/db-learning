-- List down employees without a department name
SELECT e.emp_name FROM employee e
JOIN department d ON e.dept_id = d.dept_id
WHERE d.dept_name IS NULL;

-- -- View to group employees by department and in descending order of salary
-- CREATE VIEW employee_salary_department AS
-- SELECT
--     e.emp_name,
--     e.salary,
--     d.dept_name
-- FROM
--     employee e
-- JOIN
--     department d ON e.deptid = d.deptid
-- ORDER BY 
--     e.salary DESC;

-- List down highest salary employees based on dept
SELECT emp_name, salary, dept_name
FROM (
    SELECT emp_name, salary, dept_name,
           RANK() OVER (PARTITION BY d.dept_id ORDER BY e.salary DESC) AS salary_rank
    FROM employee e
    JOIN department d ON e.dept_id = d.dept_id
) ranked
WHERE salary_rank = 1;

-- Second highest salary per each department
SELECT emp_name, salary, dept_name
FROM (
    SELECT emp_name, salary, dept_name,
           RANK() OVER (PARTITION BY d.dept_id ORDER BY e.salary DESC) AS salary_rank
    FROM employee e
    JOIN department d ON e.dept_id = d.dept_id
) ranked
WHERE salary_rank = 2;

-- List down headcount of employee for current month ( MON-YYYY)