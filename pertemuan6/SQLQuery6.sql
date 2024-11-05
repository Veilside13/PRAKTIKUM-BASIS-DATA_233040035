SELECT a.Name, b.Name
FROM Employee as a
INNER JOIN Employee as b
ON a.ManagerID = b EmployeeID