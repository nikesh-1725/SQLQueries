create database db
create table customer(id int, name varchar(20))
create table service(id int, name varchar(20))
insert into customer(id, name) values(1,'Naveen'),(2,'Raju')
select * from customer


CREATE TABLE employee (
    EmployeeID INT,
    Employee_Name VARCHAR(50),
    Employee_Salary INT
);

INSERT INTO employee (EmployeeID, Employee_Name, Employee_Salary)
VALUES
    (1, 'Arun Tiwari', 50000),
    (2, 'Sachin Rathi', 64000),
    (3, 'Harshal Pathak', 48000),
    (4, 'Arjun Kuwar', 46000),
    (5, 'Sarthak Gada', 62000),
    (6, 'Saurabh Sheik', 53000),
    (7, 'Shubham Singh', 29000),
    (8, 'Shivam Dixit', 54000),
    (9, 'Vicky Gujral', 39000),
    (10, 'Vijay Bose', 28000);

	select * from employee;


	CREATE TABLE department (
    DepartmentID INT,
    Department_Name VARCHAR(50),
    Employee_ID INT
);

INSERT INTO department (DepartmentID, Department_Name, Employee_ID)
VALUES
    (1, 'Production', 1),
    (2, 'Sales', 3),
    (3, 'Marketing', 4),
    (4, 'Accounts', 5),
    (5, 'Development', 7),
    (6, 'HR', 9),
    (7, 'Sales', 10);

	CREATE TABLE Loan (
    LoanID INT,
    Branch VARCHAR(50),
    Amount INT
);

INSERT INTO Loan (LoanID, Branch, Amount)
VALUES
    (1, 'B1', 15000),
    (2, 'B2', 10000),
    (3, 'B3', 20000),
    (4, 'B4', 100000),
    (5, 'B5', 150000),
    (6, 'B6', 50000),
    (7, 'B7', 35000),
    (8, 'B8', 85000);

	CREATE TABLE Borrower (
    CustID INT,
    CustName VARCHAR(50),
    LoanID INT
);

INSERT INTO Borrower (CustID, CustName, LoanID)
VALUES
    (1, 'Sonakshi Dixit', 1),
    (2, 'Shital Garg', 4),
    (3, 'Swara Joshi', 5),
    (4, 'Isha Deshmukh', 2),
    (5, 'Swati Bose', 7),
    (6, 'Asha Kapoor', 10),
    (7, 'Nandini Shah', 9);


	select * from customer

	select * from Borrower

	select * from department

	select * from employee


	SELECT e.EmployeeID, e.Employee_Name, e.Employee_Salary, d.DepartmentID, d.Department_Name FROM department d LEFT OUTER JOIN employee e ON e.EmployeeID = d.Employee_ID UNION SELECT e.EmployeeID, e.Employee_Name, e.Employee_Salary, d.DepartmentID, d.Department_Name FROM department d RIGHT OUTER JOIN employee e ON e.EmployeeID = d.Employee_ID;  
	SELECT e.EmployeeID, e.Employee_Name, e.Employee_Salary, d.DepartmentID, d.Department_Name FROM department d RIGHT OUTER JOIN employee e ON e.EmployeeID = d.Employee_ID;  

	select 8 from employee

	--Right Join
	select * from employee
	select * from department

	select * from employee right join department on employee.EmployeeID=department.Employee_ID;

	--Left Join

	select * from employee
	select * from department

	select * from employee left join department on employee.EmployeeID=department.Employee_ID

	--Inner Join or Join

	select * from employee
	select * from department

	select * from employee join department on employee.EmployeeID=department.Employee_ID

	-- Using Union

	select * from employee
	select * from department

    select * from employee right join department on employee.EmployeeID=department.Employee_ID 
	union
	select * from employee left join department on employee.EmployeeID=department.Employee_ID

	--Full Outer Join 
	select * from employee
	select * from department

    select * from employee left outer join department on employee.EmployeeID=department.Employee_ID 
	union
	select * from employee right outer join department on employee.EmployeeID=department.Employee_ID

	--Cross Join
	select * from employee
	select * from department

	select * from employee cross join department 