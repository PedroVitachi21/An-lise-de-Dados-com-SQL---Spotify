SELECT `songs`.`name` AS 'Song name',
`artists`.`name` AS 'Artist/Group name',
`albums`.`name` AS 'Album name',
`songs`.`feat_name` AS 'Features'
FROM `songs` 
JOIN `albums` ON `albums`.`id` = `songs`.`album_id`
JOIN `artists` ON `artists`.`id` = `songs`.`artist_id`
WHERE `songs`.`feat_name` != 'No features';