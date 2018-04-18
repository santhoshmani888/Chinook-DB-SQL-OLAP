SELECT mgr.EmployeeId,mgr.FirstName,mgr.LastName,mgr.Title,count(mgr.lastname) as No_of_reports
FROM employee e 
LEFT JOIN employee mgr ON e.reportsto = mgr.employeeid
group by mgr.lastname
order by count(mgr.lastname) desc
limit 1