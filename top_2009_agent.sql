SELECT TOP 1 (e.FirstName + ' ' + e.LastName) AS SalesRep, SUM(i.Total) AS TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE Year(InvoiceDate) = 2009
GROUP BY (e.FirstName + ' ' + e.LastName)
ORDER BY TotalSales DESC