DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Faisal Ali');
INSERT INTO people (name) VALUES ('Samantha Campbell');
INSERT INTO people (name) VALUES ('Jasmse Cox');
INSERT INTO people (name) VALUES ('Upul Dissanayaka');
INSERT INTO people (name) VALUES ('Martin Eguizabel');
INSERT INTO people (name) VALUES ('Pedro Everett');
INSERT INTO people (name) VALUES ('Filipe Granha');
INSERT INTO people (name) VALUES ('Winston Ingram');
INSERT INTO people (name) VALUES ('Fred');
INSERT INTO people (name) VALUES ('Reece Jones');
INSERT INTO people (name) VALUES ('Eugene Kim');
INSERT INTO people (name) VALUES ('Steven MacDonald');
INSERT INTO people (name) VALUES ('Fred');
INSERT INTO people (name) VALUES ('Jamie Martin');
INSERT INTO people (name) VALUES ('Ciaran McKenna');
INSERT INTO people (name) VALUES ('Ross Murray');
INSERT INTO people (name) VALUES ('Victoria Plows');
INSERT INTO people (name) VALUES ('Finn Porter');
INSERT INTO people (name) VALUES ('Tom Roddick');
INSERT INTO people (name) VALUES ('Alan White');
INSERT INTO people (name) VALUES ('Glen Young');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '17:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '17:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '19:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '18:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '19:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '23:30');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '14:55');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '19:05');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '14:35');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:15');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:35');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '21:30');

-- 1. Return ALL the data in the 'movies' table.
  SELECT * FROM movies; 
  
-- 2. Return ONLY the name column from the 'people' table
  SELECT * FROM people;

-- 3. Oops! Someone at CodeClan spelled James' name wrong! Change it to reflect the proper spelling (change 'Jasmse Cox' to 'James Cox').
  UPDATE people SET name = 'James Cox' where name = 'Jasmse Cox';

-- 4. Return ONLY your name from the 'people' table.
  SELECT name FROM people WHERE name = 'Ciaran McKenna';

-- 5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
  DELETE FROM movies WHERE title = 'Batman Begins';

-- 6. Create a new entry in the 'people' table with the name of one of the instructors.
  INSERT INTO people (name) VALUES ('Sandy')

-- 7. Winston Ingram, has decided to hijack our movie evening, Remove him from the table of people.
  DELETE FROM people WHERE name = 'Winston Ingram';

-- 8. Somehow the list of people includes two people named 'Fred'. Change these entries to the proper names ('Jack Jarvis', 'Victor McDade')
  SELECT * FROM people WHERE name = 'Fred';
  UPDATE people SET name = 'Jack Jarvis' WHERE id = 9;
  UPDATE people SET name = 'Victor McDade' WHERE id = 13;
-- 9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
  INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');

-- 10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30
  UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy' AND show_time = '19:05';

-- ## Extension

-- 1. Research how to delete multiple entries from your table in a single command.
