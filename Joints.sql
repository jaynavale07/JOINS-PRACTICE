SHOW DATABASES;

CREATE database company;

USE company;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary) VALUES 
(1, 'Sarthak', 101, 5000.00),
(2, 'Sohan', 102, 4500.00),
(3, 'Aditya', 105, 4000.00),
(4, 'Shreyash', 103, 6000.00),
(5, 'Yash', 104, 5500.00),
(6, 'Shlok', 101, 4800.00),
(7, 'Aryan', 101, 3900.00),
(8, 'Rohit', 105, 5200.00),
(9, 'Onkar', 106, 5300.00),
(10, 'Prathamesh', 102, 4700.00);

select*from Employees;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    Location VARCHAR(50),
    Budget DECIMAL(15,2)
);


INSERT INTO Departments (DepartmentID, DepartmentName, Location, Budget) VALUES 
(101, 'HR', 'Pune', 100000.00),
(102, 'IT', 'Kochi', 150000.00),
(103, 'Marketing', 'Hydrabad', 120000.00),
(104, 'Finance', 'Banglore', 130000.00),
(105, 'R&D', 'Mumbai', 110000.00),
(106, 'Logistics', 'Ahmedabad', 125000.00),
(107, 'Legal', 'Chennai', 95000.00),
(108, 'Admin', 'Kolkata', 87000.00),
(109, 'Security', 'Delhi', 91000.00),
(110, 'Support', 'Rajasthan', 89000.00);

select*from Departments;

CREATE TABLE Projects(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    Duration INT
);

INSERT INTO Projects(ProjectID, ProjectName, DepartmentID, Duration) VALUES 
(201, 'Aplha', 101, 12),
(202, 'Beta', 102, 8),
(203, 'Gamma', 103, 14),
(204, 'Delta', 104, 10),
(205, 'Epsilon', 105,6),
(206, 'Zeta', 106, 9),
(207, 'Eta', 107, 11),
(208, 'Theta', 108, 13),
(209, 'lota', 109, 7),
(210, 'Kappa', 110, 5);

select*from Projects;

SELECT e.Name AS EmployeeName, d.DepartmentName, e.Salary
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT e.Name AS EmployeeName, d.DepartmentName, e.Salary
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT e.Name AS EmployeeName, d.DepartmentName, d.Location
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
UNION
SELECT e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;
