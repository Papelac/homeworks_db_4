SELECT g.name, count(performer_id) FROM performer_list p
LEFT JOIN genre g ON p.genre_id = g.id
GROUP BY g.name;

SELECT a.name, a.year_of_manufacture, count(t.name) FROM track t
JOIN album a ON t.album_id = a.id
WHERE a.year_of_manufacture between '2019-01-01' and '2020-12-31'
GROUP BY a.name, a.year_of_manufacture;

SELECT a.name, a.year_of_manufacture, AVG(t.duration) FROM track t
JOIN album a ON t.album_id = a.id
GROUP BY a.name, a.year_of_manufacture;

SELECT name FROM performer
WHERE id not in (SELECT p.id FROM performer p
    JOIN performer_album pa ON pa.performer_id = p.id
    JOIN album a ON pa.album_id = a.id
    WHERE extract(year from a.year_of_manufacture) = 2020);

SELECT distinct c.name FROM collection_list cl
JOIN collection c ON cl.collection_id = c.id
JOIN track t ON cl.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN performer_album pa ON pa.album_id = a.id
JOIN performer p ON pa.performer_id = p.id
Where p.name = N'system of a down';

SELECT a.name FROM performer_album pa
JOIN album a on pa.album_id = a.id  
WHERE pa.performer_id in (SELECT performer_id FROM performer_list p
    JOIN genre g ON p.genre_id = g.id
    GROUP BY p.performer_id
    HAVING count(g.id) > 1);

SELECT distinct t.name FROM track t
LEFT JOIN collection_list cl ON cl.track_id = t.id
WHERE cl.track_id is null;

SELECT distinct p.name FROM performer p
JOIN performer_album pa ON pa.performer_id = p.id 
JOIN album a ON a.id = pa.album_id
JOIN track t ON t.album_id = a.id
WHERE t.duration = (SELECT MIN(duration) FROM track);

SELECT a.name FROM album a
JOIN track t ON t.album_id = a.id
GROUP BY a.name
HAVING COUNT(t.id) = SELECT MIN(tc) from (SELECT a.name as am, COUNT(t.id) as tc FROM album a
JOIN track t ON t.album_id = a.id
GROUP BY a.name) as Table_track);