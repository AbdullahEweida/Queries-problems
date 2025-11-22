--Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null
SELECT Employees.Name, Employees.Salary, Employees.EmployeeID, Employees.ManagerID, Managers.Name AS ManagerName FROM Employees
RIGHT JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID;