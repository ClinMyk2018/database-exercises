USE codeup_test_db;

# SELECT * FROM albums WHERE id = BETWEEN 33 AND 64;

SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

select *
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select *
from albums
where genre = 'Grunge, alternative rock';

select *
from albums
where release_date >= 1990
and release_date <= 1999;

select *
from albums
where sales >= 20;

select *
from albums
where genre = 'rock';

