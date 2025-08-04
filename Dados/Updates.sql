UPDATE `songs`
SET `feat_name` = 'No features'
WHERE `feat_name` = '';

UPDATE `songs`
SET `album_name` = 'Single'
WHERE `album_name` = '';

UPDATE `songs`
SET `album_name` = '8 Mile (Music From and Inspired By The Motion Picture)'
WHERE `album_name` = '8 Mile';

UPDATE `artists`
SET `is_group` = 'Solo artist'
WHERE `is_group` = '0';

UPDATE `artists`
SET `is_group` = 'Group of artists'
WHERE `is_group` = '1';

UPDATE `songs`
SET `from_country` = 'United States'
WHERE `from_country` = 'Estados Unidos';

UPDATE `songs`
SET `from_country` = 'Brazil'
WHERE `from_country` = 'Brasil';
