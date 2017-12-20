create database employees;

CREATE TABLE emps(
 employee_id int(8) NOT NULL,
 first_name varchar(125) NOT NULL,
 last_name varchar(125) NOT NULL,
 supervisor_id int(8),
 PRIMARY KEY(employee_id)
);

INSERT INTO emps VALUES (25, 'Sandy', 'Waxman', 100);
INSERT INTO emps VALUES (26, 'Yukio', 'Mishima', 100);
INSERT INTO emps VALUES (27, 'Serge', 'Gainsbourg', 100);
INSERT INTO emps VALUES (100, 'Sidney', 'Meiru', 100);


SELECT e1.employee_id, e1.first_name, e1.last_name, 
concat(b.first_name, " ", b.last_name) AS Supervisor
from emps e1
join emps b
on e1.supervisor_id = b.employee_id


