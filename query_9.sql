SELECT ar.Name ArtistName, COUNT(DISTINCT t.TrackId)  NoOfTracks, COUNT(DISTINCT pl.PlaylistId)  NoOfPlaylists FROM PlaylistTrack as pl, Track t, Album al, Artist ar
WHERE ar.ArtistId = al.ArtistId AND al.AlbumID = t.AlbumID AND t.TrackId = pl.TrackId
GROUP BY ar.ArtistId
ORDER BY NoOfTracks DESC
limit 10;