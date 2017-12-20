CREATE DATABASE fire_power;

USE fire_power;

SELECT * FROM globalfirepower;

DELETE FROM globalfirepower
WHERE `Reserve Personnel` = 0;


update globalfirepower
SET `Fighter Aircraft` = 1
WHERE `Fighter Aircraft` =0;

UPDATE globalfirepower
SET `Total Aircraft Strength` = `Total Aircraft Strength` + 1


