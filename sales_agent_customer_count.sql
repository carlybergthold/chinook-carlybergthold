SELECT e.EmployeeId AS SalesRep, COUNT(c.CustomerId) AS Customers
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId