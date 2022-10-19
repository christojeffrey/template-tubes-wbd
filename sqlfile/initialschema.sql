CREATE TABLE IF NOT EXISTS `User` (
    `user_id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(256) NOT NULL,
    `password` varchar(256) NOT NULL,
    `username` varchar(265) NOT NULL,
    `isAdmin` boolean NOT NULL,
    PRIMARY KEY (`user_id`)
    );

CREATE TABLE IF NOT EXISTS `Album` (
    `album_id` int(11) NOT NULL AUTO_INCREMENT,
    `Judul` varchar(256) NOT NULL,
    `Penyanyi` varchar(128) NOT NULL,
    `Total_duration` int(11) NOT NULL,
    `Image_path` varchar(256) NOT NULL,
    `Tanggal_terbit` date NOT NULL,
    `Genre` varchar(256) NOT NULL,
    PRIMARY KEY (`album_id`)
    );
    
CREATE TABLE IF NOT EXISTS `Song` (
    `song_id` int(11) NOT NULL AUTO_INCREMENT,
    `Judul` varchar(256) NOT NULL,
    `Penyanyi` varchar(128) NOT NULL,
    `Tanggal_terbit` date NOT NULL,
    `Genre` varchar(64),
    `Duration` int(11) NOT NULL,
    `Audio_path` varchar(256) NOT NULL,
    `Image_path` varchar(256),
    `album_id` int(11) NOT NULL,
    PRIMARY KEY (`song_id`),
    FOREIGN KEY (`album_id`) REFERENCES `Album`(`album_id`)
    );
