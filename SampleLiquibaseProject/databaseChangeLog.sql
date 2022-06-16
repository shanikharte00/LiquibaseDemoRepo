--liquibase formatted sql

--changeset DDL:1
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--rollback drop table cmsadopt.cms_parameter

--changeset DML:1
INSERT INTO Persons
(PersonID, LastName,FirstName, Address, City)
VALUES(1, 'Koyale', 'Mayur', 'xyz', 'Mumbai');
--INSERT INTO cmsadopt.cms_parameter
--(param_code, param_name, param_value, param_desc, create_date, create_by, change_date, change_by)
--VALUES('BATCH_CONF_PRE_IMP_FILE', 'BATCH_CONF_PRE_IMP_FILE', '3', 'pre process import param', now(), 'System', NULL, NULL);

--rollback DELETE from cmsadopt.cms_parameter WHERE param_value = '3'

