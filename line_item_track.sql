SELECT i.InvoiceLineId, t.Name AS PurchasedTrackName
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackID