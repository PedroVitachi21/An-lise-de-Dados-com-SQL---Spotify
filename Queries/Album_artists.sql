SELECT DISTINCT `albums`.`name` AS 'Album name',
`albums`.`no_tracks` AS 'Number of tracks', 
`albums`.`duration` AS 'Running time',
`albums`.`release_year` AS 'Year it was released',
`artists`.`name` AS 'Artist/Group name',
`artists`.`is_group` AS 'Solo artist or group of artists',
`songs`.`from_country` AS 'Origin country'
FROM `songs` 
JOIN `albums` ON `albums`.`id` = `songs`.`album_id`
JOIN `artists` ON `artists`.`id` = `songs`.`artist_id`
ORDER BY `albums`.`no_tracks` DESC;
