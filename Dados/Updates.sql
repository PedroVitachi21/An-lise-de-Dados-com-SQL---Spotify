UPDATE `songs`
SET `feat_name` = 'No features'
WHERE `feat_name` = '';

UPDATE `albums`
JOIN `songs` ON `songs`.`album_id` = `albums`.`id`
SET `albums`.`name` = 'Single'
WHERE `songs`.`album_id` IS NULL;

UPDATE `artists`
SET `is_group` = 'Solo artist'
WHERE `is_group` = '0';

UPDATE `artists`
SET `is_group` = 'Group of artists'
WHERE `is_group` = '1';

UPDATE `songs`
SET `from_country` = 'USA'
WHERE `from_country` = 'Estados Unidos';

UPDATE `songs`
SET `from_country` = 'BRA'
WHERE `from_country` = 'Brasil';
