SELECT `name` AS 'Album with the longest running time',
`duration` AS 'Running time'
FROM `albums`
WHERE `duration` = (
    SELECT MAX(`duration`)
    FROM `albums`
);
