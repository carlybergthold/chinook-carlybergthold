SELECT i.InvoiceLineId, t.Name AS PurchasedTrackName, ar.Name AS ArtistName
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackID
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Artist ar ON ar.ArtistId = a.ArtistId