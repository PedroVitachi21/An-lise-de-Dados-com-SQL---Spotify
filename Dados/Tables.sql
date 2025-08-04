create database music;
use music;

CREATE TABLE `artists` (
    `name` VARCHAR(50) NOT NULL,
    `is_group` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`name`)
);

CREATE TABLE `albums` (
    `name` VARCHAR(75) NOT NULL,
    `release_year` INT NOT NULL,
    `duration` TIME NOT NULL,
    `no_tracks` INT NOT NULL,
    PRIMARY KEY (`name`)
);

CREATE TABLE `songs` (
    `name` VARCHAR(50) NOT NULL,
    `artist_name` VARCHAR(50) NOT NULL,
    `feat_name` VARCHAR(75),
    `album_name` VARCHAR(75),
    `from_country` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`name`),
    FOREIGN KEY (`artist_name`) REFERENCES `artists`(`name`),
    FOREIGN KEY (`album_name`) REFERENCES `albums`(`name`)
);
