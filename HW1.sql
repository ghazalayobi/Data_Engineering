drop table if exists employee;
CREATE TABLE employee (id INTEGER NOT NULL, 
emp_name VARCHAR(32), 
department VARCHAR(32), 
salary DOUBLE, 
PRIMARY KEY(id));

SET GLOBAL local_infile=1;
SHOW VARIABLES LIKE "secure_file_priv";
SHOW VARIABLES LIKE "local_infile";

LOAD DATA LOCAL INFILE '/Users/shahanaayobi/Desktop/tmp/ninja.txt'
INTO TABLE employee
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES STARTING BY 'Data:'
IGNORE 2 LINES
(id, emp_name, department, salary)
SET salary=salary/1000;
select * from employee;
describe employee;
