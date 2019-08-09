SELECT i.InvoiceId, i.BillingCountry, i.InvoiceDate, Concat(c.FirstName, ' ', c.LastName) AS FullName 
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil'
