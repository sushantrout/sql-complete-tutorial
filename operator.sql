-- Arithmetic Operators
SELECT
    emp_name,
    salary,
    salary + 10000 AS increased_salary,
    salary - 5000 AS decreased_salary,
    salary * 1.1 AS bonus_salary,
    salary / 12 AS monthly_salary
FROM
    employees;

-- Comparison Operators
SELECT
    emp_name,
    department,
    salary,
    CASE
        WHEN salary > 60000 THEN 'High'
        WHEN salary > 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM
    employees
WHERE
    salary > 55000;

-- Logical Operators
SELECT
    emp_name,
    department,
    salary,
    CASE
        WHEN department = 'Finance' AND salary > 60000 THEN 'High Pay'
        WHEN department = 'HR' OR department = 'Marketing' THEN 'Standard Pay'
        ELSE 'Low Pay'
    END AS pay_category
FROM
    employees
WHERE
    (department = 'HR' OR department = 'Marketing') AND salary >= 55000;

-- String Concatenation Operator
SELECT
    emp_name,
    'Employee: ' || emp_name || ', Department: ' || department AS employee_info
FROM
    employees
WHERE
    emp_name LIKE 'A%';

-- BETWEEN Operator
SELECT
    emp_name,
    salary
FROM
    employees
WHERE
    salary BETWEEN 55000 AND 75000;

-- IN Operator
SELECT
    emp_name,
    department
FROM
    employees
WHERE
    department IN ('HR', 'Finance');

-- IS NULL and IS NOT NULL Operators
SELECT
    emp_name
FROM
    employees
WHERE
    middle_name IS NULL;

-- ANY and ALL Operators
SELECT
    emp_name,
    salary
FROM
    employees
WHERE
    salary > ALL (SELECT salary FROM employees WHERE department = 'HR');

-- EXISTS Operator
SELECT
    emp_name
FROM
    employees e
WHERE
    EXISTS (SELECT 1 FROM departments d WHERE d.department_name = e.department);

-- CASE Operator (Searched form)
SELECT
    emp_name,
    salary,
    CASE
        WHEN salary > 70000 THEN 'High'
        WHEN salary > 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM
    employees;