select ar.Name as ArtsistName,al.Title as TrackName,count(t.TrackId) as No_of_Tracks
from Artist ar,Album al,Track t
where ar.ArtistId=al.ArtistId
and al.AlbumId=t.AlbumId
group by ar.Name,al.Title
order by count(t.TrackId) desc
limit 10
