CREATE TABLE IF NOT EXISTS DIM_Track AS
  SELECT t.TrackId AS "dim_track_id", 
         t.Name As track_name,al.Title as album_name, ar.name as artist_name,t.composer as composer,g.name as genre,m.name as mediatype
  FROM Track t,Artist ar,Album al,MediaType m,Genre g
  where ar.ArtistId=al.ArtistId
  and al.AlbumId=t.AlbumId
  and t.MediaTypeId=m.MediaTypeId
  and t.GenreId=g.GenreId;
  

