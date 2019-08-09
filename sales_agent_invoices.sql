Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.

SELECT e.Title, i.InvoiceId 
FROM Employee e
JOIN Invoice i ON i.EmployeeId = e.EmployeeId