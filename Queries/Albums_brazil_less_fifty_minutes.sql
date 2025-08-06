SELECT DISTINCT `albums`.`name` AS 'Name of the album',
`artists`.`name` AS 'Name of the artist',
`albums`.`duration` AS 'Running time', 
`songs`.`from_country` AS 'Country of origin'
FROM `songs` 
JOIN `albums` ON `albums`.`id` = `songs`.`album_id`
JOIN `artists` ON `artists`.`id` = `songs`.`artist_id`
WHERE `songs`.`from_country` = 'BRA'
AND `albums`.`duration` < '00:50:00'
ORDER BY `albums`.`duration` DESC;
