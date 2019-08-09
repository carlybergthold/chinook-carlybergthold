SELECT InvoiceId, COUNT(InvoiceLineId) AS TotalLines
FROM InvoiceLine
GROUP BY InvoiceId