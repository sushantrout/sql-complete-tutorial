CREATE OR REPLACE FUNCTION get_all_students()
RETURNS TABLE (
    student_id integer,
    student_name varchar(50),
    age integer,
    gender varchar(10),
    college_id integer
) AS $$
BEGIN
    RETURN QUERY SELECT * FROM students;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_all_students();
