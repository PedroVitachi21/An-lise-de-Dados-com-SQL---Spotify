SELECT `artists`.`name` AS 'Artist with the longest song name',
`songs`.`name` AS 'Song name'
FROM `artists` 
JOIN `songs` ON `songs`.`artist_name` = `artists`.`name`
WHERE LENGTH(`songs`.`name`) = (
				SELECT MAX(LENGTH(`songs`.`name`))
                FROM `songs`
);