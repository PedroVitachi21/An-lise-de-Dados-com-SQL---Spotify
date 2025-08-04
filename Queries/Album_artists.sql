SELECT DISTINCT `albums`.`name` AS 'Album name',
`albums`.`no_tracks` AS 'Number of tracks', 
`albums`.`duration` AS 'Running time',
`albums`.`release_year` AS 'Year it was released',
`artists`.`name` AS 'Artist/Group name',
`artists`.`is_group` AS 'Solo artist or group of artists',
`songs`.`from_country` AS 'Origin country'
FROM `songs` 
JOIN `albums` ON `albums`.`name` = `songs`.`album_name`
JOIN `artists` ON `artists`.`name` = `songs`.`artist_name`
ORDER BY `albums`.`no_tracks` DESC;