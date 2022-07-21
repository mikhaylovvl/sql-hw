DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

-- создаем таблицу жанры
create table genres (
	genre_id serial primary key,
	genre_name varchar(20) unique not null
);

-- создаем таблицу певцов
create table if not exists signers (
	signer_id serial primary key,
	signer_name varchar(20) unique not null
);

--Исполнители могут петь в разных жанрах, как и одному жанру могут принадлежать несколько исполнителей.
create table if not exists genres_signers (	
	genre_id integer references genres (genre_id),
	signer_id integer references signers (signer_id),
	constraint genres_signers_pk primary key (genre_id, signer_id)
);

-- создаем папку с альбомами 
create table if not exists albums (
	album_id serial primary key,
	album_name varchar(20) unique not null,
	release_year integer check (release_year between 1970 and 2022)	
);


--  альбом могут выпустить несколько исполнителей вместе. Как и исполнитель может принимать участие во множестве альбомов.
create table if not exists signers_albums (
	signer_id integer references signers (signer_id), 
	album_id integer references albums (album_id),
	constraint signers_albums_pk primary key (signer_id, album_id)
);

--создаем таблицу с треками
create table if not exists tracks (
	track_id serial primary key,
	track_name varchar(30) not null,
	track_length integer check (track_length>30),
	album_id integer references albums (album_id)	
);

-- создаем таблицу с названием колллекций
create table if not exists name_collections (
	name_collection_id serial primary key,
	name_of_collection varchar(20) unique not null,
	release_year integer check (release_year between 1970 and 2022)	
);

-- создаем таблицу коллекции
create table if not exists collections (
	collection_id integer references name_collections (name_collection_id),
	track_id integer references tracks (track_id),		
	constraint collections_pk primary key (collection_id, track_id)
);
