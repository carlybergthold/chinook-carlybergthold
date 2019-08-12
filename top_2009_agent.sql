SELECT MAX(SalesRep) AS SalesRep, MAX(TotalSales) AS TotalSales
FROM
(SELECT CONCAT(e.FirstName, ' ', e.LastName) AS SalesRep, SUM(i.Total) AS TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE Year(InvoiceDate) = 2009
GROUP BY e.EmployeeId, e.FirstName, e.LastName) AS SalesRep
