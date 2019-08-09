SELECT i.Total AS InvoiceTotal, (c.FirstName + ' ' + c.LastName) AS CustomerName, i.BillingCountry, e.LastName AS SalesRep
FROM Customer c
JOIN Employee e ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId