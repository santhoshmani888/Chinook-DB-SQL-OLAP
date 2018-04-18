select al.Title,t.Name,t.Milliseconds
from Album al,Track t
where al.AlbumId=t.AlbumId
order by t.Milliseconds desc
limit 1;



