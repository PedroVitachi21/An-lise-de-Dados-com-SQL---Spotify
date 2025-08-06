CREATE DATABASE IF NOT EXISTS music;
USE music;

CREATE TABLE `artists` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `is_group` VARCHAR(20) NOT NULL
);

CREATE TABLE `albums` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(75) NOT NULL,
    `release_year` INT NOT NULL,
    `duration` TIME NOT NULL,
    `no_tracks` INT NOT NULL
);

CREATE TABLE `songs` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `artist_id` INT NOT NULL,
    `album_id` INT,
    `feat_name` VARCHAR(75),
    `from_country` VARCHAR(30) NOT NULL,
    FOREIGN KEY (`artist_id`) REFERENCES `artists`(`id`),
    FOREIGN KEY (`album_id`) REFERENCES `albums`(`id`)
);
