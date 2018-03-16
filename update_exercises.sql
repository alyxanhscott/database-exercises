USE codeup_test_db;

# All albums in your table.
SELECT name as 'All Albums' FROM albums;
# Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10;

SELECT sales FROM albums;

# All albums released before 1980
SELECT name as 'Albums before 1980' FROM albums WHERE release_date < 1980;
# Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

# All albums by Michael Jackson
SELECT name as 'Michael Jackson Albums' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT name as 'Peter Jackson Albums' FROM albums WHERE artist = 'Peter Jackson';
# Change 'Michael Jackson' to 'Peter Jackson'
# Add SELECT statements after each UPDATE so you can see the results of your handiwork.

