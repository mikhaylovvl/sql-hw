-- добавляем данные с жанрами
insert into genres 
values
(1, 'POP'),
(2, 'Metall'),
(3, 'Synth-pop'),
(4, 'Rock'),
(5, 'Blues');

--добавляем данные с певцами
insert into signers
values
(1, 'Sting'),
(2, 'Metallica'),
(3, 'Depeche Mode'),
(4, 'Noel Gallaher'),
(5, 'Gary Moore'),
(6, 'Pink Floyd'),
(7, 'Oasis'),
(8, 'Placebo');

--добавляем данные 
insert into genres_signers 
values
(1, 1),
(2, 2),
(2, 4),
(2, 7),
(3, 3),
(4, 2),
(4, 3),
(4, 4),
(4, 6),
(4, 7),
(4, 8),
(5, 5);

-- добавляем данные по альбомам
insert into albums
values
(1, 'Ten Summoner''s Tales', 1993),
(2, 'Metallica', 1991),
(3, 'Load', 1996),
(4, 'Black Celebration', 1986),
(5, 'Delta Machine', 2013),
(6, 'Who Built the Moon?', 2017),
(7, 'After the War', 1989), 
(8, 'The Wall', 1979),
(9, 'Definitely Maybe', 1994),
(10, 'Meds', 2006),
(11, 'Me', 2007); 

--добавляем данные в таблицу 
insert into signers_albums 
values
(1, 1),
(2, 2),
(2, 4),
(3, 7),
(4, 3),
(4, 2),
(5, 3),
(6, 4),
(6, 6),
(7, 7),
(7, 8),
(8, 9),
(8, 10),
(8, 11);


--добавляем данные в таблицу треки
insert into tracks
values
(1, 'Fields of Gold', 222, 1),
(2, 'Shape of My Heart', 198, 1),
(3, 'The Unforgiven', 386, 2),
(4, 'Nothing Else Matters', 387, 2),
(5, 'Until It Sleeps', 269, 3),
(6, 'Mama Said', 319, 3),
(7, 'Black Celebration', 215, 4),
(8, 'Stripped', 176, 4),
(9, 'Heaven', 163, 5),
(10, 'Goodbye', 303, 5),
(11, 'Keep on Reaching', 204, 6),
(12, 'The Man Who Built the Moon', 188, 6),
(13, 'After the War', 257, 7),
(14, 'Livin'' on Dreams',  267, 7),
(15, 'Hey You', 301, 8),
(16, 'Empty Spaces', 127, 8),
(17, 'Up in the Sky', 268, 9),
(18, 'Slide Away', 392, 9),
(19, 'Blind', 241, 10),
(20, 'Pierrot the Clown', 262, 10),
(21, 'Pierrot the', 265, 11);

-- добавляем данные в с названиями коллекций и годом выпуска
insert into name_collections 
values
(1, 'collection_1', '2016'),
(2, 'collection_2', '2017'),
(3, 'collection_3', '2018'),
(4, 'collection_4', '2019'),
(5, 'collection_5', '2020'),
(6, 'collection_6', '2021'),
(7, 'collection_7', '2022'),
(8, 'collection_8', '2010');

-- добавлям данные по коллекция-трэк
insert into collections 
values
(1, 1),
(1, 8),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 13),
(2, 14),
(2, 17),
(2, 18),
(3, 9),
(3, 10),
(3, 14),
(3, 16),
(3, 17),
(4, 1),
(4, 4),
(4, 5),
(4, 7),
(4, 9),
(4, 12),
(5, 1),
(5, 6),
(5, 10),
(5, 13),
(5, 20),
(5, 19),
(6, 5),
(6, 6),
(6, 10),
(6, 14),
(6, 19),
(6, 20),
(7, 3),
(7, 1),
(7, 15),
(7, 19),
(7, 20),
(8, 3),
(8, 7),
(8, 1),
(8, 15),
(8, 18),
(8, 21);
