USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT name FROM albums WHERE artist = 'Pink FLoyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band release date' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# The genre for Nevermind
SELECT genre AS 'Nirvana''s Nevermind Genre' FROM albums WHERE name = 'Nevermind';
# Which albums were released in the 1990s
SELECT name AS 'Albums released in the 90''s' FROM albums WHERE release_date BETWEEN '1990' AND '1999';
# Which albums had less than 20 million certified sales
SELECT name AS 'Albums with less than 20 mil. sales' FROM albums WHERE sales <= 20.0;
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name AS 'Albums with Rock genre' from albums WHERE genre = 'Rock' || genre ='Hard Rock' || genre ='Progressive Rock';
