SELECT p.PlaylistId as PlaylistId, COUNT(t.Name) AS Tracks, p.Name
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
JOIN Track t ON t.TrackId = pt.TrackId
GROUP BY p.PlaylistId, p.Name