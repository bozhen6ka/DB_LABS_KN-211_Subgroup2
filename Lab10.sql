SET GLOBAL log_bin_trust_function_creators = 1;

select * from artist;
select * from song;

drop function is_valid_date;

DELIMITER $$
create function is_valid_date(date1 date)
  returns varchar(100)
    DETERMINISTIC
  begin
    declare result boolean;
  IF (date1<=current_date()) THEN
    SET result = true;
    ELSE
        SET result = false;
  END IF;
    return result;
    end $$
  DELIMITER ;
    
select is_valid_date('2018-03-1');

select is_valid_date('2030-03-1');


drop procedure artist_songs_count;

DELIMITER //
create procedure artist_songs_count (in date1 date, in date2 date)
begin
declare error varchar(80);
set error = 'Incorrect data';
if (date1<=date2) then begin
create table if not exists stats(artist varchar(255), quantity_of_songs int unsigned);
truncate stats;
insert into stats select artist.Nickname,
count(song.idSong) as quantity
from artist inner join song
on artist.idArtist = song.artist_id
where artist.BirhDate between  date1 and date2 group by artist.idArtist;
end;
else select error; end if;
end// DELIMITER ;


call artist_songs_count('1996-01-01', '2002-05-05'); 
select * from stats; 

call artist_songs_count('1999-01-01', '2000-09-05');
select * from stats;