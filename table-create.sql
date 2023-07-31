CREATE TABLE employee (id bigserial PRIMARY KEY, emp_name varchar(200));

SELECT
    table_schema,
    table_name,
    table_type
FROM
    information_schema.tables;

--it will show all the table

SELECT
    table_schema,
    table_name,
    table_type
FROM
    information_schema.tables
WHERE
    table_schema NOT IN ('pg_catalog', 'information_schema');

--it will not show all the table without predefiend table

SELECT
    column_name,
    data_type,
    character_maximum_length,
    is_nullable
FROM
    information_schema.columns
WHERE
    table_schema = 'public' -- Replace 'your_schema_name' with the schema of your table
    AND table_name = 'employee'; -- Replace 'your_table_name' with the name of your table


-- ALTER TABLE DETAILS
ALTER TABLE
    employee
ADD
    COLUMN gender varchar(10) CHECK (gender IN ('male', 'female'));

ALTER TABLE
    employee
ADD
    COLUMN age int CHECK (
        age > 5
        AND age < 100
    );


ALTER TABLE
    persons
ALTER COLUMN
    age TYPE smallint;
-- change data type

ALTER TABLE
    employee RENAME COLUMN emp_name TO e_name;

ALTER TABLE
    employee
ADD
    COLUMN temp varchar(10);
-- change column name

ALTER TABLE employee DROP temp;

--Constraint 
CREATE TABLE department(id bigserial, d_name varchar(200));

ALTER TABLE employee
ADD COLUMN department_id bigint;

ALTER TABLE department
ADD CONSTRAINT dept_primarykey PRIMARY KEY(id);

--ADD CONSTRAINTS
ALTER TABLE employee
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id) REFERENCES department (id);
