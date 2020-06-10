Drop Table Movies;
SET FOREIGN_KEY_CHECKS=0;
Drop Table Boxoffice;
Drop Table Trilogy;
Select * from Movies;
Create Table if not exists Movies(
ID int NOT NULL AUTO_INCREMENT,
Title TEXT NOT NULL,
Director VARCHAR(40),
Year_ int,
Duration int,
## Release_Date Date
Primary Key(ID)
);

Create Table if not exists BoxOffice(
	Movie_id int ,
	Rating Float ,
	International_Earning bigint  ,
    FOREIGN KEY(Movie_id) REFERENCES Movies(ID) ON DELETE SET NULL
);

Create Table if not exists Trilogy(
	Trilogy_ID int,
    Title VARCHAR(40) Default 'Standalone Movie',
    Media_Company TEXT,
    FOREIGN KEY(Trilogy_ID) REFERENCES Movies(ID) ON DELETE SET NULL
);


INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'Avengers:Infinity','Joe,Anthony', 2018, 160);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'Avengers:Endgame', 'Joe,Anthony',2019, 182);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'Avengers:Age of Ultron', 'Joss Whedon','2015', 142);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'The Avengers', 'Joss Whedon','2012', 143);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'Batman Begins', 'Christopher Nolan','2005', 160);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'The Dark Knight', 'Christopher Nolan','2008', 152);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( 'The Dark Knight Rises', 'Christopher Nolan','2012', 165);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Philosopher's Stone", 'Chris Columbus','2001', 159);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Chamber of Secrets", 'Chris Columbus','2002', 161);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Prisoner of Azkaban", 'Alfonso Cuarón','2004', 142);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Goblet of Fire", 'Mike Newell','2005', 157);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Order of the Phoenix", 'David Yates','2007', 138);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Half-Blood Prince", 'David Yates','2009', 154);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Deathly Hallows - Part I", 'David Yates','2010', 147);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Harry Potter and the Deathly Hallows – Part 2 ", 'David Yates','2011', 130);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Toy Story", 'John Lasseter','1995', 81);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Toy Story 2", 'John Lasseter','1999', 95);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Toy Story 3", 'Lee Unkrich','2010', 108);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Interstellar", 'Christopher Nolan','2014', 169);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Dunkirk", 'Christopher Nolan','2014', 106);
INSERT INTO Movies (Title,Director,Year_,Duration)VALUES( "Inception", 'Christopher Nolan','2010', 148);

INSERT INTO Boxoffice VALUES( 1,  8.5, 2048359754);
INSERT INTO Boxoffice VALUES( 2,  8.4, 2797800564);
INSERT INTO Boxoffice VALUES( 3,  7.3, 1402805868);
INSERT INTO Boxoffice VALUES( 4,  8,   1518812988);
INSERT INTO Boxoffice VALUES( 5,  8.2,  37348590 );
INSERT INTO Boxoffice VALUES( 6,  8.4, 1004934033);
INSERT INTO Boxoffice VALUES( 7,  8.5, 1084939099);
INSERT INTO Boxoffice VALUES( 8,  7.6,  975051288);
INSERT INTO Boxoffice VALUES( 9,  7.4,  879576546);
INSERT INTO Boxoffice VALUES( 10, 7.9,  796106789);
INSERT INTO Boxoffice VALUES( 11, 7.7,  896376578);
INSERT INTO Boxoffice VALUES( 12, 7.5,  942657890);
INSERT INTO Boxoffice VALUES( 13, 7.6,  934569867);
INSERT INTO Boxoffice VALUES( 14, 7.7,  976987453);
INSERT INTO Boxoffice VALUES( 15, 8.1, 1342765490);
INSERT INTO Boxoffice VALUES( 16, 8.3,   30765432);
INSERT INTO Boxoffice VALUES( 17, 7.9,  497475689);
INSERT INTO Boxoffice VALUES( 18, 8.3, 1067765431);
INSERT INTO Boxoffice VALUES( 19, 8.6,  677554382);
INSERT INTO Boxoffice VALUES( 20, 7.9,  526989754);
INSERT INTO Boxoffice VALUES( 21, 8.8,  829989571);


INSERT INTO Trilogy VALUES( 1, 'Avengers',  'Marvel Studios / Disney');
INSERT INTO Trilogy VALUES( 2, 'Avengers',  'Marvel Studios / Disney');
INSERT INTO Trilogy VALUES( 3, 'Avengers',  'Marvel Studios / Disney');
INSERT INTO Trilogy VALUES( 4, 'Avengers',  'Marvel Studios / Disney');
INSERT INTO Trilogy VALUES( 5, 'Dark Knight',  'DC / Warner Bros.');
INSERT INTO Trilogy VALUES( 6, 'Dark Knight',  'DC / Warner Bros.');
INSERT INTO Trilogy VALUES( 7, 'Dark Knight',  'DC / Warner Bros.');
INSERT INTO Trilogy VALUES( 8, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES( 9, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(10, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(11, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(12, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(13, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(14, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(15, 'Harry Potter',  'Warner Bros.');
INSERT INTO Trilogy VALUES(16, 'Toy Story',  'Disney / Pixar Animation Studios');
INSERT INTO Trilogy VALUES(17, 'Toy Story',  'Disney / Pixar Animation Studios');
INSERT INTO Trilogy VALUES(18, 'Toy Story',  'Disney / Pixar Animation Studios');
INSERT INTO Trilogy (Trilogy_ID, Media_Company)VALUES(19, 'Paramount Pictures / Warner Bros. Pictures');
INSERT INTO Trilogy (Trilogy_ID, Media_Company)VALUES(20,   'Warner Bros. Pictures');
INSERT INTO Trilogy (Trilogy_ID, Media_Company)VALUES(21,  'Warner Bros. Pictures');


Select * from Boxoffice;