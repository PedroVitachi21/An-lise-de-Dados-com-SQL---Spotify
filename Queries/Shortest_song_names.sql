SELECT `artists`.`name` AS 'Artists with the shortest songs names',
`songs`.`name` AS 'Song name'
FROM `artists` 
JOIN `songs` ON `songs`.`artist_id` = `artists`.`id`
ORDER BY LENGTH(`songs`.`name`) ASC
LIMIT 10;
