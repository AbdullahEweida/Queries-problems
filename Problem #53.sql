--Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself
SELECT Employees.EmployeeID, Employees.Name, Employees.Salary, Employees.ManagerID, 
CASE 
    WHEN Managers.Name IS NULL THEN 'Mohammed'
    ELSE Managers.Name
END AS ManagerName
FROM Employees 
LEFT JOIN Employees AS Managers ON Managers.EmployeeID = Employees.ManagerID;