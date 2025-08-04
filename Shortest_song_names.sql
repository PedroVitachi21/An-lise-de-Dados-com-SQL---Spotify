SELECT `artists`.`name` AS 'Artists with the shortest songs names',
`songs`.`name` AS 'Song name'
FROM `artists` 
JOIN `songs` ON `songs`.`artist_name` = `artists`.`name`
ORDER BY LENGTH(`songs`.`name`) ASC
LIMIT 10;