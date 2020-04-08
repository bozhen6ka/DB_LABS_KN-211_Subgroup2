SELECT * FROM artist UNION SELECT * FROM artist1;

SELECT * FROM artist WHERE idArtist IN (SELECT idArtist FROM artist1);

SELECT * FROM artist WHERE idArtist NOT IN (SELECT idArtist FROM artist1);

SELECT artist.Nickname,artist1.BirhDate FROM artist,artist1;  