SELECT BillingCountry, COUNT(InvoiceId) AS InvoiceCount
FROM Invoice
GROUP BY BillingCountry


