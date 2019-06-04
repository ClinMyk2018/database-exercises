USE codeup_test_db;

# SELECT * FROM albums WHERE id = BETWEEN 33 AND 64;

select name as 'All Pink Floyd albums.', Artist as 'Band'
FROM albums
WHERE artist = 'Pink Floyd';

select name as 'Song', Artist as 'Band'
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre as 'The genre for Nevermind'
from albums
where name = 'Nevermind';

select name as 'Albums released in the 1990s', Artist, release_date
from albums
where release_date >= 1990
and release_date <= 1999;

select name as "Albums with more than 20 mil sales", sales
from albums
where sales >= 20;

select name 'Rock albums', genre
from albums
where genre like '%rock%';

