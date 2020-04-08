delete from song;

insert into song values (1, 4, 4, 'name1'), 
(2, 3, 5, 'name2'), 
(3, 6, 6, 'name3'), 
(4,  7, 8, 'name3'),
(5,  5, 11, 'name5'),
(6,  7, 8, 'name6'),
(7,  1, 2, 'name6');

select * from artist;
select * from song;


drop view if exists song2;

CREATE VIEW song2 AS SELECT DISTINCT song.Name
FROM song;

select * from song2;


SELECT *
FROM song
WHERE song.idSong <= 4;


SELECT song.idSong , song.Name, artist.Nickname, artist.Gender, artist.BirhDate
FROM song, artist
WHERE song.artist_id = artist.idArtist;

SELECT song.idSong , song.Name, artist.Nickname, artist.Gender, artist.BirhDate
FROM song, artist
WHERE song.artist_id = artist.idArtist and song.idSong> artist.idArtist;

