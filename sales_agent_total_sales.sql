SELECT CONCAT(e.FirstName, ' ', e.LastName) AS SalesRep, SUM(i.Total) AS TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId, e.FirstName, e.LastName;