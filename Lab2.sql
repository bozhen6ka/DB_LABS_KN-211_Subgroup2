CREATE TABLE `artist` (
  `idArtist` int unsigned NOT NULL AUTO_INCREMENT,
  `Nickname` varchar(45) NOT NULL,
  `First Name` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL,
  `BirhDate` date DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  PRIMARY KEY (`idArtist`),
  UNIQUE KEY `idArtist_UNIQUE` (`idArtist`)
);

CREATE TABLE `album` (
  `idAlbum` int NOT NULL AUTO_INCREMENT,
  `artist_id` int unsigned NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAlbum`),
  UNIQUE KEY `idAlbum_UNIQUE` (`idAlbum`),
  KEY `fk_album_artist_idx` (`artist_id`),
  CONSTRAINT `fk_album_artist` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`idArtist`)
);

CREATE TABLE `song` (
  `idSong` int unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int NOT NULL,
  `artist_id` int unsigned NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSong`),
  KEY `fk_song_album1_idx` (`album_id`),
  KEY `fk_song_artist1_idx` (`artist_id`),
  CONSTRAINT `fk_song_artist1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`idArtist`)
);


CREATE TABLE `platform` (
  `idPlatform` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Coefficient` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idPlatform`)
);

CREATE TABLE `song_platform` (
  `song_id` int unsigned NOT NULL,
  `platform_id` int unsigned NOT NULL,
  KEY `fk_song_platform_song1_idx` (`song_id`),
  KEY `fk_song_platform_platform1_idx` (`platform_id`),
  CONSTRAINT `fk_song_platform_platform1` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`idPlatform`),
  CONSTRAINT `fk_song_platform_song1` FOREIGN KEY (`song_id`) REFERENCES `song` (`idSong`)
);


