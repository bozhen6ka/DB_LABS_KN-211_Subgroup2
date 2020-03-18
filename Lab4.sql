insert into rating_of_musicians.artist values 
(1,"XXXTENTATION","Jahseh","Onfroy","2000-06-15","Male");
select * from rating_of_musicians.artist;

insert into rating_of_musicians.artist values 
(2,"ROODY RICH","Roody","Rich","2002-06-15","Male"),
(3,"TRIPPIE REDD","Michael","Daveson","1998-06-15","Male"),
(4,"LIL UZi VERT","John","Onfroy","2000-06-15","Male"),
(5,"CHIEF KEEF","Alex","Gates","1996-06-15","Male");
select * from rating_of_musicians.artist;

update rating_of_musicians.artist set  Surname = 'Cozart' 
where Nickname = 'CHIEF KEEF';
update rating_of_musicians.artist set idArtist = idArtist  + 1 
order by idArtist  desc;
select * from rating_of_musicians.artist;

delete from artist where idArtist =3; 
select * from artist;
