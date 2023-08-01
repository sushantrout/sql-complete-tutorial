-- Sample table with employee data
CREATE TABLE employees (
    emp_id serial PRIMARY KEY,
    emp_name varchar(100),
    department varchar(50),
    salary numeric,
    middle_name varchar(100)
);

-- Insert some sample data into the employees table
INSERT INTO employees (emp_name, department, salary, middle_name) VALUES
    ('Alice', 'HR', 50000, NULL),
    ('Bob', 'Finance', 60000, NULL),
    ('Carol', 'HR', 55000, 'Lee'),
    ('David', 'Marketing', 70000, NULL),
    ('Eve', 'Finance', 80000, 'Jane');

-- Conditional Functions Examples

-- CASE statement
SELECT
    emp_name,
    department,
    CASE department
        WHEN 'HR' THEN 'Human Resources'
        WHEN 'Finance' THEN 'Finance Department'
        ELSE 'Other Department'
    END AS department_description
FROM
    employees;

-- COALESCE function
SELECT
    emp_name,
    COALESCE(middle_name, 'N/A') AS middle_name
FROM
    employees;

-- NULLIF function
SELECT
    emp_name,
    salary,
    NULLIF(salary, 60000) AS reduced_salary
FROM
    employees;
