use `rating_of_musicians`;

ALTER TABLE `rating_of_musicians`.`song` 
	DROP FOREIGN KEY `fk_song_artist1`;
    
ALTER TABLE `rating_of_musicians`.`song` 
	DROP COLUMN `Name`;

ALTER TABLE `rating_of_musicians`.`song` 
ADD COLUMN `name` VARCHAR(45) NULL AFTER `artist_id`;

ALTER TABLE `rating_of_musicians`.`song` 
ADD CONSTRAINT `song_artist`
  FOREIGN KEY (`artist_id`)
  REFERENCES `rating_of_musicians`.`artist` (`idArtist`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
