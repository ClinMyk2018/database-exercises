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

select 'All albums with sales * 10' as 'sales * 10';
#UPDATES
UPDATE albums
SET sales = sales * 10;

select 'All albums before 1980 to 1800s' as 'Year change';
UPDATE albums
SET release_date = release_date - 100
where release_date < 1980;

select 'All albums with MJ tp PJ' as 'Name change';
UPDATE albums
SET artist = 'Peter Jackson'
where artist = 'Micheal Jackson';

SELECT * FROM albums;





