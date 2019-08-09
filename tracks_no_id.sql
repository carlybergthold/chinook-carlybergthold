SELECT t.Name AS Track, a.Title AS AlbumName, m.Name AS MediaType, g.Name AS Genre
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
JOIN Track t ON t.TrackId = pt.TrackId
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId