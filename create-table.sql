-- Step 1: Create a custom domain type for gender
CREATE DOMAIN gender_enum AS CHAR(1)
    CHECK (VALUE IN ('M', 'F'));

create table employee(id int PRIMARY KEY, name varchar(200), gender gender_enum NOT NULL DEFAULT 'M');

insert into employee values(1, 'sushan', 'M');

CREATE TYPE gender_enumz AS ENUM ('M', 'F');
create table employee1(id int PRIMARY KEY, name varchar(200), gender gender_enumz NOT NULL DEFAULT 'M');
insert into employee1 values(1, 'sushan', 'M');

SELECT EXTRACT(HOUR FROM your_date_column) AS hour_only
FROM your_table;
