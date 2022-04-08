CREATE TABLE artists (
	artistID INT NOT NULL,
    artistName varchar(100),
    PRIMARY KEY(artistID)
);
INSERT INTO artists VALUES (1, 'SALES');
INSERT INTO artists VALUES (2, 'Kero Kero Bonito');
INSERT INTO artists VALUES (3, 'Alt-J');
INSERT INTO artists VALUES (4, 'Labrinth');


CREATE TABLE albums (
	albumID INT NOT NULL PRIMARY KEY,
    albumName varchar(100),
    artistID INT,
    FOREIGN KEY(artistID) REFERENCES artists(artistID)
);
INSERT INTO albums VALUES (1, 'Sales LP', 1);
INSERT INTO albums VALUES (2, 'Forever and Ever', 1);
INSERT INTO albums VALUES (3, 'Bonito Generation', 2);
INSERT INTO albums VALUES (4, 'Time ''n'' Place', 2);
INSERT INTO albums VALUES (5, 'An Awesome Wave', 3);
INSERT INTO albums VALUES (6, 'This Is All Yours', 3);
INSERT INTO albums VALUES (7, 'Euphoria (Original Score from the HBO Series', 4);


CREATE TABLE songs (
	songID INT PRIMARY KEY,
    songName varchar(100),
    albumID INT,
    trackNumber INT,
    songLength varchar(100),
    FOREIGN KEY(albumID) REFERENCES albums(albumID)
);
INSERT INTO songs VALUES (1, 'Over', 1, 1, '2:25');
INSERT INTO songs VALUES (2, 'Ivy', 1, 2, '3:16');
INSERT INTO songs VALUES (3, 'Checkin'' Out', 1, 3, '2:05');
INSERT INTO songs VALUES (4, 'Crash', 1, 4, '3:25');
INSERT INTO songs VALUES (5, 'Pope Is a Rockstar', 1, 6, '3:07');
INSERT INTO songs VALUES (6, 'Talk a Lot', 2, 7, '3:03');
INSERT INTO songs VALUES (7, 'White Jeans', 2, 5, '3:48');
INSERT INTO songs VALUES (8, 'Lipslap', 3, 7, '3:39');
INSERT INTO songs VALUES (9, 'Fish Bowl', 3, 4, '1:45');
INSERT INTO songs VALUES (10, 'Picture This', 3, 11, '3:24');
INSERT INTO songs VALUES (11, 'Only Acting', 4, 3, '3:49');
INSERT INTO songs VALUES (12, 'Taro', 5, 13, '5:05');
INSERT INTO songs VALUES (13, 'Fitpleasure', 5, 10, '3:39');
INSERT INTO songs VALUES (14, 'Matilda', 5, 8, '3:47');
INSERT INTO songs VALUES (15, 'Taro', 5, 13, '5:05');
INSERT INTO songs VALUES (16, 'Intro', 6, 1, '4:38');
INSERT INTO songs VALUES (17, 'Every Other Freckle', 6, 4, '3:36');
INSERT INTO songs VALUES (18, 'Left Hand Free', 6, 5, '2:53');
INSERT INTO songs VALUES (19, 'Forever', 7, 4, '3:22');
INSERT INTO songs VALUES (20, 'Nate Growing Up', 7, 6, '2:33');
INSERT INTO songs VALUES (21, 'Still Don''t Know My Name', 7, 12, '2:33');
INSERT INTO songs VALUES (22, 'Gangster', 7, 23, '2:30');


SELECT artistName, songName, albumName, songLength
FROM artists
INNER JOIN  albums ON artists.artistID = albums.artistID
RIGHT JOIN songs ON albums.albumID = songs.albumID
GROUP BY albumName, artistName, songName, songLength;


