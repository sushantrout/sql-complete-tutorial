
--mathematical functions
SELECT
    ABS(-10) AS absolute_value,
    ROUND(3.14159, 2) AS rounded_value,
    CEIL(3.4) AS ceil_value,
    FLOOR(3.9) AS floor_value,
    10 % 3 AS modulo_value,
    POWER(2, 3) AS power_value,
    SQRT(16) AS square_root,
    RANDOM() AS random_value,
    EXP(2) AS exponential,
    LOG(10) AS natural_log,
    LOG10(100) AS log_base_10,
    SIGN(-5) AS sign_value;

--string functions
SELECT
    UPPER('hello') AS uppercase_string,
    LOWER('WORLD') AS lowercase_string,
    INITCAP('hello world') AS initcap_string,
    CONCAT('John', ' ', 'Doe') AS concatenated_string,
    LENGTH('Hello, world!') AS string_length,
    SUBSTRING('Hello, world!', 8) AS substring_from_position,
    SUBSTRING('Hello, world!', 3, 5) AS substring_with_length,
    LEFT('Hello, world!', 5) AS left_part,
    RIGHT('Hello, world!', 6) AS right_part,
    POSITION('world' IN 'Hello, world!') AS substring_position,
    TRIM('  extra spaces   ') AS trimmed_string,
    REPLACE('Hello, world!', 'world', 'everyone') AS replaced_string,
    REVERSE('hello') AS reversed_string,
    LTRIM('   left spaces') AS ltrimmed_string,
    RTRIM('right spaces   ') AS rtrimmed_string;
