UPDATE `songs`
SET `feat_name` = 'No features'
WHERE `feat_name` = '';

UPDATE `songs`
SET `album_name` = '8 Mile (Music From and Inspired By The Motion Picture)'
WHERE `album_name` = '8 Mile';

UPDATE `artists`
SET `is_group` = 'Solo artist'
WHERE `is_group` = '0';

UPDATE `artists`
SET `is_group` = 'Group of artists'
WHERE `is_group` = '1';