SELECT `artists`.`name` AS 'Artist with the longest song name',
`songs`.`name` AS 'Song name'
FROM `songs` 
JOIN `artists` ON `artists`.`id` = `songs`.`artist_id`
WHERE LENGTH(`songs`.`name`) = (
				SELECT MAX(LENGTH(`songs`.`name`))
                FROM `songs`
);
