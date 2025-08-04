SELECT DISTINCT `albums`.`name` AS 'Name of the album',
`artists`.`name` AS 'Name of the artist',
`albums`.`duration` AS 'Running time', 
`songs`.`from_country` AS 'Country of origin'
FROM `songs`
JOIN `artists` ON `artists`.`name` = `songs`.`artist_name`
JOIN `albums` ON `albums`.`name` = `songs`.`album_name`
WHERE `songs`.`from_country` = 'Brasil'
AND `albums`.`duration` < '00:50:00'
ORDER BY `albums`.`duration` DESC;

INTERSECT 

SELECT DISTINCT `albums`.`name` AS 'Name of the album',
`artists`.`name` AS 'Name of the artist',
`albums`.`duration` AS 'Running time', 
`songs`.`from_country` AS 'Country of origin'
FROM `songs`
JOIN `artists` ON `artists`.`name` = `songs`.`artist_name`
JOIN `albums` ON `albums`.`name` = `songs`.`album_name`
WHERE `songs`.`from_country` = 'Estados Unidos'
AND `albums`.`duration` > '00:50:00'
ORDER BY `albums`.`duration` DESC;
