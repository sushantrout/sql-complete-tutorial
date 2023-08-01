-- Sample table with employee data
CREATE TABLE c_employees (
    emp_id serial PRIMARY KEY,
    emp_name varchar(100),
    department varchar(50),
    salary numeric
);

-- Insert some sample data into the employees table
INSERT INTO c_employees (emp_name, department, salary) VALUES
    ('Alice', 'HR', 50000),
    ('Bob', 'Finance', 60000),
    ('Carol', 'HR', 55000),
    ('David', 'Marketing', 70000),
    ('Eve', 'Finance', 80000);

-- Aggregate Functions
SELECT
    COUNT(*) AS total_employees,
    AVG(salary) AS average_salary,
    SUM(salary) AS total_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary,
    STRING_AGG(emp_name, ', ') AS all_employee_names,
    COUNT(DISTINCT department) AS distinct_departments
FROM
    c_employees;