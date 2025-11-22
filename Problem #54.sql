--Get All Employees managed by 'Mohammed'
SELECT Employees.EmployeeID, Employees.Name, Employees.Salary, Managers.Name FROM Employees
LEFT JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID
WHERE Managers.Name = 'Mohammed'