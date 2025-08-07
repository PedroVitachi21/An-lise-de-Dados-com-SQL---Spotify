SELECT `artists`.`name` AS 'Artist/Group name',
COUNT(`songs`.`name`) AS 'Ammount of songs'
FROM `songs` 
JOIN `artists` ON `artists`.`id` = `songs`.`artist_id`
GROUP BY `artists`.`name`
ORDER BY COUNT(`songs`.`name`) DESC;