SELECT c.FirstName,c.LastName,SUM(iv.UnitPrice) AS TotalMoneySpent,COUNT(iv.Quantity) AS NoOfTracks
FROM Invoice i
JOIN
Customer c ON c.CustomerId = i.CustomerId
JOIN
InvoiceLine AS iv ON i.InvoiceId = iv.InvoiceId
 GROUP BY c.CustomerId
 ORDER BY sum(iv.UnitPrice) DESC
 LIMIT 1;