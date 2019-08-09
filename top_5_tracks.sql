SELECT TOP 5 t. Name, COUNT(il.InvoiceLineId) AS TimesPurchased
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY TimesPurchased DESC