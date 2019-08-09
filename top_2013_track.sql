SELECT TOP 1 t. Name, COUNT(il.InvoiceLineId) AS TimesPurchased
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY t.Name
ORDER BY TimesPurchased DESC