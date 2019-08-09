SELECT (e.FirstName + ' ' + e.LastName) AS SalesAgent, i.InvoiceId
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId