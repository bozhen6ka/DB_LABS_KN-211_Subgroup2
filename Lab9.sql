select * from artist;
select * from song;

select  artist.Nickname,count(album.idAlbum) as AlbumsCount,count(song.artist_id) as SongsCount from (artist inner join song)
inner join album on artist.idArtist = song.artist_id and song.album_id = album.idAlbum group by artist.idArtist;

select  year(artist.BirhDate) as year,count(song.idSong) as SongsCount from artist
inner join song on artist.idArtist = song.artist_id group by year(artist.BirhDate) with rollup;

select  monthname(artist.BirhDate) as month,count(song.idSong) as SongsCount from artist
inner join song on artist.idArtist = song.artist_id group by month(artist.BirhDate) with rollup;

select artist.Nickname,avg(char_length(song.Name)) as SongsCount from artist
inner join song on artist.idArtist = song.artist_id group by song.artist_id;

select artist.Nickname, (COUNT(*)) as SongsCount
from artist inner join song on artist.idArtist = song.artist_id
WHERE (datediff(artist.BirhDate,now()) / 365.25)<= 20 GROUP BY song.artist_id ORDER BY SongsCount DESC LIMIT 3;