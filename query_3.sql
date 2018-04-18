SELECT e.EmployeeId,e.FirstName,e.LastName,e.Title,COUNT(c.SupportRepId) as "NoOfCustomers supported" FROM Employee e, Customer c
 Where c.SupportRepId == e.EmployeeId 
 GROUP BY e.FirstName
 order by COUNT(c.SupportRepId) desc
 limit 1