CREATE TABLE FDEPARTMENT (id serial, name varchar);
ALTER TABLE FDEPARTMENT ADD CONSTRAINT PK_FDEPARTMENT PRIMARY KEY(id);
CREATE TABLE fk_EMPLOYEE (id serial, name varchar, department_id int, FOREIGN KEY(department_id) REFERENCES fdepartment(id));
drop table fk_EMPLOYEE;
drop table fdepartment;
	
CREATE TABLE FDEPARTMENT (id serial, name varchar);
ALTER TABLE FDEPARTMENT ADD CONSTRAINT PK_FDEPARTMENT PRIMARY KEY(id);
CREATE TABLE fk_EMPLOYEE (id serial PRIMARY KEY, name varchar, department_id int);
ALTER TABLE fk_EMPLOYEE ADD CONSTRAINT FK_EMP_DEPT FOREIGN KEY (department_id) REFERENCES fdepartment(id);
drop table fk_EMPLOYEE;
drop table fdepartment;

ALTER TABLE table_name DROP CONSTRAINT constraint_name;

