USE codeup_test_db;

select artist 'Name of Artist', name 'Name of Album'
from albums;

select artist 'Name of Artist', name 'Name of Album', release_date
from albums
where release_date > 1991;
delete
from albums
where release_date > 1991;

select name, genre
from albums
where genre like '%disco%';
delete
from albums
where genre like '%disco%';

select name 'Whitney Houston Songs', release_date
from albums
where artist = 'Whitney Houston';
delete
from albums
where artist = 'Whitney Houston';




