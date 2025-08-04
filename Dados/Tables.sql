create database music;
use music;

CREATE TABLE `artists`(
	`name` VARCHAR(50) NOT NULL,
    `is_group` VARCHAR(20) NOT NULL
);

CREATE TABLE `albums` (
    `name` VARCHAR(50) NOT NULL,
    `release_date` DATE NOT NULL,
	`duration` TIME NOT NULL,
	`no_tracks` INT NOT NULL
);

CREATE TABLE `songs` (
    `name` VARCHAR(50) NOT NULL,
	`artist_name` VARCHAR(50) NOT NULL,
    `feat_name` VARCHAR(75),
	`album_name` VARCHAR(75) NOT NULL,
    `from_country` VARCHAR(30) NOT NULL
);