explain select artist.Nickname,artist.BirhDate, song.Name
FROM artist inner join song inner join song_platform inner join  platform
on artist.idArtist = song.artist_id and song.idSong=song_platform.song_id and song_platform.platform_id = platform.idPlatform;

drop index artist_index on artist;
drop index song_index on song;
drop index on_song_platform_index on song_platform;
drop index on_platform_index on platform;

create index artist_index on artist(idArtist,BirhDate);
create index song_index on song(artist_id,idSong,Name);
create index on_song_platform_index on song_platform(song_id,platform_id);
create index on_platform_index on platform(idPlatform);

show index from artist;
show index from song;

explain select straight_join artist.Nickname,artist.BirhDate, song.Name
FROM artist inner join song inner join song_platform inner join  platform
on artist.idArtist = song.artist_id and song.idSong=song_platform.song_id and song_platform.platform_id = platform.idPlatform  and length(song.Name)>2;

explain select artist.Nickname,artist.BirhDate, song.Name
FROM artist inner join song inner join song_platform inner join  platform
on artist.idArtist = song.artist_id and song.idSong=song_platform.song_id and song_platform.platform_id = platform.idPlatform  and length(song.Name)>2;

