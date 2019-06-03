USE codeup_test_db;

select 'All albums in your table.' as 'Caption';
select *
from albums;

select 'All albums released before 1980' as 'Caption';
select *
from albums
where release_date < 1980;

select 'All albums by Michael Jackson' as 'Caption';
select *
from albums
where artist = 'Micheal Jackson';


#UPDATES
UPDATE albums
SET sales = sales * 10;


