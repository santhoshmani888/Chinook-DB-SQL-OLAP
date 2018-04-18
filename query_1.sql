select ar.name as Artist,al.Title
from Artist ar,Album al
where ar.ArtistId=al.ArtistId
and ar.Name like 'U%'
order by ar.name,al.Title;

