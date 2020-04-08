select artist.Nickname,artist.FirstName,artist.Surname from artist where artist.idArtist = 5;

SELECT artist.Nickname,artist.FirstName,artist.Surname, song.Name
FROM artist left JOIN song ON
artist.idArtist = song.artist_id;

SELECT artist.Nickname, artist.FirstName ,artist.Surname, song.Name
FROM artist INNER JOIN song ON artist.idArtist = song.artist_id WHERE artist.idArtist >7;

SELECT artist.Nickname,artist.FirstName,artist.Surname, song.Name as SongName, album.Name as AlbumName, album.Genre
FROM (artist INNER JOIN song) INNER JOIN album ON artist.idArtist = song.artist_id
AND album.idAlbum = song.album_id WHERE song.Name in ('name2','name3','name4','name5');

SELECT artist.Nickname, artist.FirstName ,artist.Surname, song.Name
FROM artist INNER JOIN song
ON artist.idArtist = song.artist_id
WHERE artist.idArtist IN (SELECT song.artist_id FROM song 
WHERE song.Name in ('name2','name3','name4','name5')) 
ORDER BY artist.Nickname DESC LIMIT 3;

SELECT artist.Nickname,artist.FirstName,artist.Surname FROM artist
WHERE NOT EXISTS
(SELECT * FROM song WHERE song.artist_id= artist.idArtist);

SELECT artist.Nickname,artist.FirstName,artist.Surname
FROM artist
WHERE artist.Nickname REGEXP "^[A-Z]+(?:_[A-Z]+)*$";
