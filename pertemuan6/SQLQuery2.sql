SELECT Employee.Name, Departements.DepartementName
FROM Employee
INNER JOIN Departements
ON Employee.DepartementsID = Departements.DepartementsID
