WITH mgr AS
(

SELECT e1.EmployeeID,e1.FirstName, e1.LastName, e1.Title 
FROM Employee e1
WHERE ReportsTo IS NULL
and e1.LastName='Adams'
and e1.FirstName='Andrew'

UNION ALL

SELECT  e.EmployeeID,e.FirstName, e.LastName, e.Title
FROM Employee e INNER JOIN mgr m 
ON e.ReportsTo = m.employeeID
order by e.EmployeeID
)
SELECT * FROM mgr m
;