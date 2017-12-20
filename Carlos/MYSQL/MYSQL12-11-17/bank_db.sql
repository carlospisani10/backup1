CREATE DATABASE Second_International_Bank

USE Second_International_Bank;

CREATE TABLE Customers(
ID INTEGER(10)AUTO_INCREMENT NOT NULL,
FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Loan BOOLEAN,
    Checking DECIMAL(12,2)
    Savings DECIMAL(12,2)
    PRIMARY KEY (ID)
);

