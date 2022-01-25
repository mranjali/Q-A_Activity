--Q&A ACTIVITY QUESTION WEEK 13--
-----------------------------

--1. Write SQL queries to create the given table in question.

CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Employee(
EmployeeID VARCHAR(10) NOT NULL PRIMARY KEY,
Name VARCHAR(20),
Gender CHAR(6) NOT NULL,
Department VARCHAR(20) NOT NULL,
Salary DECIMAL NOT NULL,
DOB DATE NOT NULL,
Date_of_joining DATE NOT NULL
);

INSERT INTO Employee(EmployeeID,Name,Gender,Department,Salary,DOB,Date_of_joining)
values('CP0123', 'Ann Mery','F','HR',45000,'10/OCT/1989','1/Jan/2018'),
	  ('CP0087', 'Felix M','M','Finance',48000,'12/Apr/1981','10/Dec/2000'),
      ('CP0197', 'Merlin','M','CEO',80000,'01/Mar/1990','10/May/2011'),
      ('CP0213', 'Philip','M','Retail',47000,'01/Apr/1991','11/June/2012'),
	  ('CP0243', 'Michael','M','Retail',40000,'01/Dec/1992','30/May/2016'),
	  ('CP0289', 'Susan','F','Retail',40000,'01/Jan/1991','01/Apr/2016'),
	  ('CP0298', 'Abram','M','Relations',30000,'17/Apr/1994','06/OCt/2016'),
	  ('CP0300', 'Alia','F','Relations',30000,'17/Oct/1995','18/OCt/2016'),
	  ('CP0321', 'Raichal','F','Marketing',34000,'09/Oct/1990','22/OCt/2016'),
	  ('CP0276', 'Thomas','M','Marketing',44000,'19/Nov/1983','22/OCt/2018');

SELECT * FROM Employee;

--2. Write SQL queries to select employees from the following departments
--a. Marketing
--b. Retail
--c. HR

SELECT * FROM Employee WHERE Department='Marketing';

SELECT * FROM Employee WHERE Department='Retail';

SELECT * FROM Employee WHERE Department='HR';


--3. Write SQL queries to create a table only containing female employees.


SELECT * FROM Employee WHERE Gender='F'

CREATE TABLE EMP_Female AS (SELECT * FROM Employee WHERE Gender='F');

SELECT * FROM EMP_Female;

--4. Write SQL queries to display the Maximum,Minimum and Average Salary.

SELECT MAX(Salary) from Employee;

SELECT MIN(Salary) from Employee;

SELECT AVG(Salary) from Employee;

--5. Write SQL query to display the employee details based on the following conditions.
--a. Male employees having salary greater than 40000

SELECT * FROM Employee WHERE Salary > 40000 AND Gender='M';

--b. Female employees having salary less than 45000

SELECT * FROM Employee WHERE Salary < 45000 AND Gender='F';

--c. Employee having salary between 30000 and 60000 and working in Marketing or Retail department.

SELECT * FROM Employee WHERE (Salary > 30000 AND Salary < 60000) AND (Department='Marketing' OR Department='Retail');







