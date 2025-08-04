SELECT `name` AS 'Album with the least tracks',
`no_tracks` AS 'Number of tracks'
FROM `albums`
WHERE `no_tracks` = (
    SELECT MIN(`no_tracks`)
    FROM `albums`
);