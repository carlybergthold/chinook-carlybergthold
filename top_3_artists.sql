SELECT TOP 3 a.Name AS ArtistName, COUNT(il.InvoiceLineId) AS TimesPurchased
FROM Artist a
JOIN Album al ON a.ArtistId = al.ArtistId
Join Track t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY a.Name
ORDER BY TimesPurchased DESC