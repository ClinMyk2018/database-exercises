USE codeup_test_db;

select 'All albums in your table.' as 'Caption';
select *
from albums;

select 'All albums released before 1980' as 'Caption';
select *
from albums
where release_date > 1991;

select *
from albums
where genre = 'disco';

select *
from albums
where artist = 'Whitney Houston'