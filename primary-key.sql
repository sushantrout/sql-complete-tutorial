CREATE TABLE employeepk(id serial PRIMARY KEY, name varchar);
select *from employeepk;
DROP TABLE employeepk;

CREATE TABLE employeepk(id serial, name varchar, PRIMARY KEY(id));
select *from employeepk;
DROP TABLE employeepk;

CREATE TABLE employeepk(roll_number int , batch_number int, PRIMARY KEY(roll_number, batch_number));
select *from employeepk;
DROP TABLE employeepk;

CREATE TABLE employeepk(id serial, name varchar);
ALTER TABLE employeepk
ADD CONSTRAINT pk_employeepk PRIMARY KEY (id);
DROP TABLE employeepk;
