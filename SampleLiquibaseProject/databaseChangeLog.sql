--liquibase formatted sql

--changeset DDL:1
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--rollback drop table Persons

--changeset DML:1
INSERT INTO Persons
(PersonID, LastName,FirstName, Address, City)
VALUES(1, 'Koyale', 'Mayur', 'xyz', 'Mumbai');


--rollback DELETE from Persons 

--changeset DDL:2
CREATE TABLE Student (
    RollNo int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--rollback drop table Student

--changeset DDL:3
CREATE TABLE Employee (
    EmpId int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--rollback drop table Employee