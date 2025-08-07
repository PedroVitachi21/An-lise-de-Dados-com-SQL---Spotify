SELECT `songs`.`name` AS 'Song name',
`artists`.`name` AS 'Artist/Group name',
`artists`.`is_group` AS 'Solo artist or group of artists?',
`songs`.`from_country` AS 'Origin country'
FROM `songs`
JOIN `artists` ON `artists`.`id` = `songs`.`artist_id`
WHERE `artists`.`is_group` = 'Group of artists'
ORDER BY `songs`.`name`;