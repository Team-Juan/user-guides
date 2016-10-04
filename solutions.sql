/* Part 1 */

CREATE DATABASE MegaCorp;

USE MegaCorp;

CREATE TABLE Employees(

eID int NOT NULL AUTO_INCREMENT,

fName varChar(16) NOT NULL,

lName varChar(24) NOT NULL,

eTitle varChar(20),

eSalary int);


CREATE TABLE Products(

pID int NOT NULL AUTO_INCREMENT,

pName varChar(24) NOT NULL,

pDesc varChar(128),

pPrice int);


/* Part 2 */

INSERT INTO Employees(NULL, "John", "Doe", "Developer", 75000);

INSERT INTO Employees(NULL, "Jane", "Smith", "Supervisor", 89000);

INSERT INTO Employees(NULL, "Steve", "Johnson", "CEO", 125000);

INSERT INTO Products(NULL, "Calculator", "Our premier calculator", 50);

INSERT INTO Products(NULL, "XL Tablet", "Our biggest tablet yet!", 350);

INSERT INTO Products(NULL, "Blue Baseball Cap", "It's so blue!", 10);


/* Part 3 */

SELECT * FROM Employees;

SELECT * FROM Products;

SELECT fName, lName FROM Employees;

SELECT * FROM Employees WHERE fName LIKE 'S%';

SELECT * FROM Products WHERE pPrice > 50;


/* Part 4 */

UPDATE Employees SET lName = 'Doe' WHERE fName = 'Jane' AND lName = 'Smith';

UPDATE Employees SET eTitle = 'Developer II', eSalary = '85000' WHERE fName = 'John' AND lName = 'Doe';

UPDATE Products SET pPrice = '400' WHERE pName = 'XL Tablet';

UPDATE Products SET pPrice = pPrice/10 WHERE pName = 'Calculator';

/* Part 5 */

DELETE FROM Employees, Products;

DROP TABLE Employees, Products;

DROP DATABASE MegaCorp;