-- Sample table with date and time data
CREATE TABLE events (
    event_id serial PRIMARY KEY,
    event_name varchar(100),
    event_date date,
    event_time time,
    event_timestamp timestamp
);

-- Insert some sample data into the events table
INSERT INTO events (event_name, event_date, event_time, event_timestamp) VALUES
    ('Event 1', '2023-08-01', '15:30:00', '2023-08-01 15:30:00'),
    ('Event 2', '2023-08-02', '10:45:00', '2023-08-02 10:45:00'),
    ('Event 3', '2023-08-03', '18:20:00', '2023-08-03 18:20:00'),
    ('Event 4', '2023-08-04', '09:15:00', '2023-08-04 09:15:00'),
    ('Event 5', '2023-08-05', '14:00:00', '2023-08-05 14:00:00');

-- Date Functions
SELECT
    event_name,
    event_date,
    CURRENT_DATE AS current_date,
    EXTRACT(YEAR FROM event_date) AS year,
    EXTRACT(MONTH FROM event_date) AS month,
    EXTRACT(DAY FROM event_date) AS day,
    DATE_PART('day', event_date) AS day_of_month,
    DATE_PART('dow', event_date) AS day_of_week,
    DATE_PART('week', event_date) AS week_of_year,
    AGE(CURRENT_DATE, event_date) AS days_ago
FROM
    events;

-- Time Functions
SELECT
    event_name,
    event_time,
    CURRENT_TIME AS current_time,
    EXTRACT(HOUR FROM event_time) AS hour,
    EXTRACT(MINUTE FROM event_time) AS minute,
    EXTRACT(SECOND FROM event_time) AS second
FROM
    events;

-- Timestamp Functions
SELECT
    event_name,
    event_timestamp,
    CURRENT_TIMESTAMP AS current_timestamp,
    EXTRACT(YEAR FROM event_timestamp) AS year,
    EXTRACT(MONTH FROM event_timestamp) AS month,
    EXTRACT(DAY FROM event_timestamp) AS day,
    EXTRACT(HOUR FROM event_timestamp) AS hour,
    EXTRACT(MINUTE FROM event_timestamp) AS minute,
    EXTRACT(SECOND FROM event_timestamp) AS second
FROM
    events;

-- Date Arithmetic
SELECT
    event_name,
    event_date,
    event_date + INTERVAL '1 day' AS next_day,
    event_date - INTERVAL '1 week' AS last_week
FROM
    events;

--AGE(date, prev date)
SELECT AGE('2023-08-01', '2021-07-01') AS age_interval;
