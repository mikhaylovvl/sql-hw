-- �������� � ��� ������ ��������, �������� � 2017 ����;
select album_name, release_year
from albums 
where release_year = 2017; 


-- �������� � ����������������� ������ ����������� �����;
select track_name, track_length
from tracks
where track_length = (select max(track_length) from tracks);

-- �������� ������, ����������������� ������� �� ����� 3,5 ������;
select track_name
from tracks
where track_length >= 210;

-- �������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������;
select name_of_collection
from name_collections
where release_year between 2018 and 2020;

--�����������, ��� ��� ������� �� 1 �����;
select signer_name
from signers 
where array_length(regexp_split_to_array(signer_name, '\s+'), 1) = 1;


-- �������� ������, ������� �������� ����� "���"/"ea".
select track_name
from tracks 
where track_name like '%���%' or track_name like '%ea%';


--���������� ������������ � ������ �����;
SELECT genre_id, count(*)
FROM genres_signers 
GROUP BY genre_id
ORDER BY genre_id; 


--���������� ������, �������� � ������� 2013-2017 �����;
SELECT count(*)   
FROM tracks  
INNER JOIN albums ON tracks.album_id = albums.album_id
WHERE release_year BETWEEN 2013 AND 2017;


--������� ����������������� ������ �� ������� �������;
SELECT album_id, avg(track_length)
FROM tracks
GROUP BY album_id
ORDER BY album_id;


--��� �����������, ������� �� ��������� ������� � 1996 ����;
SELECT signer_name 
FROM signers
except  
SELECT DISTINCT signer_name
FROM signers
INNER JOIN signers_albums ON signers.signer_id = signers_albums.signer_id 
INNER JOIN albums ON signers_albums.album_id = albums.album_id
WHERE release_year = 1996
ORDER BY signer_name;


--�������� ���������, � ������� ������������ ���������� ����������� (Sting);
SELECT DISTINCT name_of_collection
FROM name_collections
INNER JOIN collections ON name_collections.name_collection_id = collections.collection_id 
INNER JOIN tracks ON collections.track_id = tracks.track_id 
INNER JOIN albums ON tracks.album_id = albums.album_id 
INNER JOIN signers_albums ON albums.album_id = signers_albums.album_id 
INNER JOIN signers ON signers_albums.signer_id = signers.signer_id 
WHERE signer_name = 'Sting'
ORDER BY name_of_collection;

--�������� ��������, � ������� ������������ ����������� ����� 1 �����;
SELECT album_name
FROM albums
JOIN signers_albums USING (album_id) 
JOIN (SELECT signer_id, count(*)
		FROM genres_signers
		GROUP BY signer_id
		HAVING count(*) > 1
		ORDER BY signer_id) AS gs
USING (signer_id)
GROUP BY album_name
ORDER BY album_name;

--������������ ������, ������� �� ������ � ��������;
SELECT track_name
FROM tracks 
WHERE track_id NOT IN (SELECT DISTINCT track_id
						FROM collections);

					
--�����������(-��), ����������� ����� �������� �� ����������������� ���� (������������ ����� ������ ����� ���� ���������);
SELECT DISTINCT signer_name
FROM signers 
JOIN signers_albums USING (signer_id)
JOIN tracks USING (album_id)
WHERE track_length IN (select min(track_length) from tracks);

--�������� ��������, ���������� ���������� ���������� ������.
SELECT DISTINCT album_name
FROM albums 
JOIN tracks USING (album_id)
GROUP BY album_id
HAVING count(*) = (SELECT MIN(count) FROM (SELECT COUNT(*) FROM tracks GROUP BY album_id) t);


