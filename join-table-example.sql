CREATE TABLE students (
    student_id serial PRIMARY KEY,
    student_name varchar(50),
    age integer,
    gender varchar(10),
    college_id integer
);

INSERT INTO students (student_name, age, gender, college_id)
VALUES ('Alice', 20, 'Female', 101),
       ('Bob', 22, 'Male', 102),
       ('Carol', 21, 'Female', 101),
       ('David', 23, 'Male', 103);

CREATE TABLE courses (
    course_id integer PRIMARY KEY,
    course_name varchar(100),
    instructor varchar(50)
);

INSERT INTO courses (course_id, course_name, instructor)
VALUES (101, 'Math 101', 'Prof. Smith'),
       (102, 'English 101', 'Prof. Johnson'),
       (103, 'History 101', 'Prof. Williams');

INSERT INTO students (student_name, age, gender, college_id)
VALUES ('AliceT', 20, 'Female', 104);

INSERT INTO courses (course_id, course_name, instructor)
VALUES (105, 'MathT 105', 'Prof. Smith');

SELECT students.student_id, students.student_name, courses.course_name
FROM students
INNER JOIN courses ON students.college_id = courses.course_id;


SELECT students.student_id, students.student_name, courses.course_name
FROM students
LEFT JOIN courses ON students.college_id = courses.course_id;

SELECT students.student_id, students.student_name, courses.course_name
FROM students
RIGHT JOIN courses ON students.college_id = courses.course_id;

SELECT students.student_id, students.student_name, courses.course_name
FROM students
FULL JOIN courses ON students.college_id = courses.course_id;

/**
    Remove duplicate
*/
SELECT student_name AS name FROM students
UNION
SELECT course_name AS name FROM courses;

/**
    Keep duplicate
*/
SELECT student_name AS name FROM students
UNION ALL
SELECT course_name AS name FROM courses;

/* The INTERSECT operator returns the common rows between two or more result sets, similar to the intersection of sets in mathematics. */
SELECT column1 FROM table1
INTERSECT
SELECT column1 FROM table2;

/* The EXCEPT (or MINUS in some databases) operator returns the rows in the first result set that are not present in the second result set, similar to the set difference in mathematics. */
SELECT column1 FROM table1
EXCEPT
SELECT column1 FROM table2;

SELECT * FROM table1
CROSS JOIN table2;

SELECT * FROM table1
NATURAL JOIN table2;

