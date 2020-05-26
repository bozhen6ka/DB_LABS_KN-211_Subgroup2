SET AUTOCOMMIT=0;

delete from artist where artist.idArtist =12 or artist.idArtist=13 or artist.idArtist=3 or artist.idArtist=9;

select * from artist;

start transaction;
SAVEPOINT kek;
insert into artist value (12, 'Playboy Carti', 'Nick','Carter', '2001-01-11', 'Male');
rollback to savepoint kek;
insert into artist value (13, 'Fredo Santana', 'Fredo','Santana', '1991-03-11', 'Male');
rollback;

select * from artist;

start transaction;
SAVEPOINT lol;
insert into artist value (3, 'Playboy Carti', 'Nick','Carter', '2001-01-11', 'Male');
insert into artist value (9, 'Young Nudy', 'Nick','Rose', '2000-01-11', 'Male');
insert into artist value (14, 'Fredo Santana', 'Fredo','Santana', '1991-03-11', 'Male');
rollback to savepoint lol;
rollback;

select * from artist;