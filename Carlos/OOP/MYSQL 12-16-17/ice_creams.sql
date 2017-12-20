create database ice_cream_db

use ice_cream_db;

CREATE TABLE ice_creams(
id INTEGER(10)AUTO_INCREMENT NOT NULL,
flavor VARCHAR(20),
rating INTEGER(100),
price decimal (3,2),
PRIMARY KEY (id)
);

INSERT INTO ice_creams (flavor,rating,price)
Values ("Chocolate", 90, 1.25)

INSERT INTO ice_creams (flavor,rating,price)
Values ("Vanilla", 87, 1.25)

INSERT INTO ice_creams (flavor,rating,price)
Values ("Strawberry", 92, 1.25)

INSERT INTO ice_creams (flavor,rating,price)
Values ("Swirl", 86, 1.50)

INSERT INTO ice_creams (flavor,rating,price)
Values ("Camarel", 94, 1.50)

SELECT *FROM ice_cream

SELECT *FROM ice_creams
where (price = 1.25)


