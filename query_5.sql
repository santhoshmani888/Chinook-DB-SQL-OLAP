select * from Artist ar
where ar.ArtistId
not in
(select distinct al.ArtistId
from Album al)