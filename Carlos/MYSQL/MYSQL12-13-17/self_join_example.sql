CREATE TABLE employees (
employee_id INTEGER(11) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
supervisor_id INTEGER(11),
PRIMARY KEY (employee_id)
);

INSERT INTO employees (employee_id, first_name, last_name, supervisor_id)
VALUES (80, "Tyler", "McAdams", 129);
INSERT INTO employees (employee_id, first_name, last_name, supervisor_id)
VALUES (126, "Jessica", "Burnham", 160);
INSERT INTO employees (employee_id, first_name, last_name, supervisor_id)
VALUES (129, "Jeff", "Jones", 160);
INSERT INTO employees (employee_id, first_name, last_name, supervisor_id)
VALUES (143, "Mike", "Smith", 160);
INSERT INTO employees (employee_id, first_name, last_name, supervisor_id)
VALUES (150, "Julie", "Hamilton", 183);
INSERT INTO employees (employee_id, first_name, last_name, supervisor_id)
VALUES (160, "Rachel", "Walton", 183);
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (183, "Robert", "Franklin");

SELECT * FROM employees;

SELECT e1.employee_id, e1.first_name, e1.last_name, e1.supervisor_id,
e2.first_name as supervisor_first_name, e2.last_name as supervisor_last_name
FROM employees e1
LEFT JOIN employees e2
ON e1.supervisor_id = e2.employee_id;