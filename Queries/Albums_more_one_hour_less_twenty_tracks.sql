SELECT DISTINCT `albums`.`name` AS 'Album name',
`albums`.`no_tracks` AS 'Number of tracks', 
`albums`.`duration` AS 'Running time',
`artists`.`name` AS 'Artist/Group name'
FROM `songs` 
JOIN `albums` ON `albums`.`name` = `songs`.`album_name`
JOIN `artists` ON `artists`.`name` = `songs`.`artist_name`
WHERE `albums`.`duration` > '01:00:00'
AND `albums`.`no_tracks` < 20;
