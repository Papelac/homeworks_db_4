INSERT INTO 
    performer(name) 
VALUES
    (N'Король и Шут'),
    (N'bloodhound gang'),
    (N'system of a down'),
    (N'no doubt'),
    (N'Limp Bizkit'),
    (N'linkin park'),
    (N'Руки Вверх!'),
    (N'Ленинград');

INSERT INTO
    genre(name) 
VALUES
    (N'русский шансон'),
    (N'рок'),
    (N'фолк'),
    (N'ПОП'),
    (N'альтернативный метал'),
    (N'альтернативный рок'),
    (N'ню-метал'),
    (N'рэп-рок'),
    (N'хоррор-панк');

INSERT INTO
    performer_list(performer_id, genre_id)
VALUES
    (1, 9),
    (2, 2),
    (3, 5),
    (3, 6),
    (4, 2),
    (5, 7),
    (5, 8),
    (6, 5),
    (6, 6),
    (6, 4),
    (7, 4),
    (8, 2);

INSERT INTO
    album(name, year_of_manufacture) 
VALUES
    (N'Ели мясо мужики', '1999-06-16'),
    (N'Hooray for Boobies', '2020-10-04'),
    (N'Mezmerize', '2005-05-17'),
    (N'Tragic Kingdom', '1995-10-10'),
    (N'Still Sucks', '2020-10-31'),
    (N'One More Light', '2018-05-19'),
    (N'Маленькие девочки', '2001-03-20'),
    (N'Точка', '2019-11-29');

INSERT INTO
    performer_album(performer_id, album_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8);

INSERT INTO
    track(name, duration, album_id)
VALUES
    (N'Ели мясо мужики', 160, 1),
    (N'мой Лесник', 193, 1),
    (N'Прыгну со скалы', 197, 1),
    (N'Hidden track', 293, 2),
    (N'I Hope You Die', 220, 2),
    (N'Sad Statue', 206, 3),
    (N'Radio/Video', 249, 3),
    (N'Lost in Hollywood', 321, 3),
    (N'End It on This', 226, 4),
    (N'Sunday Morning', 273, 4),
    (N'Goodbye', 156, 5),
    (N'Out of my Style', 203, 5),
    (N'Invisible', 214, 6),
    (N'Nobody Can Save Me', 225, 6),
    (N'Маленькие девочки', 266, 7),
    (N'18 Мне Уже', 245, 7),
    (N'Dance', 156, 8),
    (N'Money', 194, 8);

INSERT INTO
    Collection(name, year_of_manufacture)
VALUES
    (N'На сладкое', '2023-26-03'),
    (N'Пора взрослеть', '2023-03-26'),
    (N'intresting', '2023-03-26'),
    (N'Relax', '2018-03-26'),
    (N'Wake up', '2023-03-26'),
    (N'Collection 1', '2018-06-12'),
    (N'Collection 2', '2020-01-26'),
    (N'Collection 3', '2020-03-26');

INSERT INTO
    Collection_list(Collection_id, track_id)
VALUES
    (1, 1),
    (1, 6),
    (2, 13),
    (2, 14),
    (3, 15),
    (3, 5),
    (3, 10),
    (4, 8),
    (4, 9),
    (5, 4),
    (5, 8),
    (5, 12),
    (6, 3),
    (6, 15),
    (7, 7),
    (7, 11),
    (8, 4),
    (8, 5),
    (8, 12);