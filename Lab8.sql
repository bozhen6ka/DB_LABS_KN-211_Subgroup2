select * from artist;
select * from song;

select artist.idArtist,artist.Nickname from artist 
where artist.Nickname like '%d%' order by artist.Nickname;

select artist.idArtist,artist.Nickname,artist.BirhDate from artist 
order by artist.BirhDate desc limit 5;

select  artist.Nickname,count(*) as SongsCount from artist
inner join song on artist.idArtist = song.artist_id group by song.artist_id;