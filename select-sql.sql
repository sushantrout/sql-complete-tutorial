SELECT *FROM employee;
SELECT id, e_name, gender from employee;

SELECT gender, COUNT(*) as COUNT, AVG(age) as AVG
FROM employee
GROUP BY gender;

SELECT gender, COUNT(*) as COUNT, AVG(age) as AVG
FROM employee
GROUP BY gender HAVING gender = 'male';

SELECT gender, COUNT(*) as emo_count, AVG(age) as AVG
FROM employee
GROUP BY gender ORDER BY emo_count DESC;

SELECT department_id, gender, COUNT(*) as emp_count
FROM employee
GROUP BY ROLLUP (department_id, gender);

SELECT department_id, gender, COUNT(*) as emp_count
FROM employee
GROUP BY CUBE (department_id, gender);

SELECT d.d_name, COUNT(e.id) AS emp_count
FROM department d
LEFT JOIN employee e ON d.id = e.department_id
GROUP BY d.d_name;


SELECT id, e_name, CASE 
	WHEN gender = 'male' THEN 'MR ' || e_name
         WHEN gender = 'female' THEN 'MRS ' || e_name
         ELSE e_name END AS e_name
from employee;

SELECT e.e_name, d.d_name
FROM employee e LEFT JOIN department d ON e.department_id = d.id;

SELECT e.e_name, d.d_name
FROM employee e LEFT JOIN department d ON e.department_id = d.id WHERE d.id IN(20, 21, 22);

SELECT e.e_name, d.d_name
FROM employee e RIGHT JOIN department d ON e.department_id = d.id;

SELECT e.e_name, d.d_name
FROM employee e FULL JOIN department d ON e.department_id = d.id;

