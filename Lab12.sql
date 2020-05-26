drop trigger if exists on_artist_delete;
drop trigger if exists on_song_insert;
drop trigger if exists on_artist_update;
 
delete from song_platform;
delete from song where song.idSong=13;
delete from artist where artist.idArtist =20;

select * from artist;
select * from song;

DELIMITER $$
create trigger on_artist_delete 
before delete on artist
for each row
BEGIN
     delete from song where song.artist_id = old.idArtist;
END $$ 
DELIMITER ;

delete from artist where idArtist=11;

select * from artist;
select * from song;

insert into artist values (11,'GUCCI MANE','Swae','Rich','2002-06-15','Male');
insert into song value (5,5,11,'name5');



select * from song;
select * from platform;
select * from song_platform;

DELIMITER $$
create trigger on_song_insert
after insert on song
for each row
BEGIN
	insert into song_platform values(new.idSong,1,0),(new.idSong,2,0),(new.idSong,3,0),(new.idSong,4,0);
END $$ 
DELIMITER ;

delete from song where song.idSong=13;
insert into song values (13,2,2,'name_13');

select * from song;
select * from platform;
select * from song_platform;



DELIMITER $$
create trigger on_artist_update 
before update on artist
for each row
BEGIN
     delete  from song where artist_id = old.idArtist;
END $$ 
DELIMITER ;

update artist set idArtist = 20 where idArtist = 11;

select * from artist;
select * from song;
