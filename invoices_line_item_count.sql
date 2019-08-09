SELECT i.InvoiceId, COUNT(il.InvoiceLineId) AS InvoiceLineItems
FROM Invoice i
LEFT JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId