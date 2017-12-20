CREATE DATABASE programming_db;

USE programming_db;

CREATE TABLE programming_languages(
id INTEGER(10)AUTO_INCREMENT NOT NULL,
langugage VARCHAR(20),
rating INTEGER(10),
mastered BOOLEAN DEFAULT true,
PRIMARY KEY (id)
);

SELECT *FROM programming_languages;

INSERT INTO programming_languages (language,rating)
Values ("HTML", 95)
