-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https
--
-- Host: 127.0.0.1:3306
-- Generation Time: July 07, 2021 (add trigger)
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";

--
-- Database: `relax&chill`
--
-- TABLE & PRIMARY KEY
--
-- Manage members' profile
DROP TABLE IF EXISTS `member` ;
CREATE TABLE IF NOT EXISTS `member` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`username` VARCHAR(30) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
	`pass` VARCHAR(100) NOT NULL,
    `fullname` VARCHAR(100) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
	`email` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `member` (`username`,`pass`,`fullname`,`email`) VALUES
('admin','admin123','adminrelaxchill','admin@gmail.com'),
('thanhtruc','thanhtruc123', 'Trịnh Thị Thanh Trúc','thanhtruc@gmail.com'),
('thuydung','thuydung123','Lê Phan Thùy Dung','thuydung@gmail.com'),
('myle','myle1234', 'Lê Thị Trà My','myle@gmail.com'),
('hongyen','hongyen123','Nguyễn Thị Hồng Yến','hongyen@gmail.com'),
('kieuanh','kieuanh123','Phan Mai Kiều Anh','kieuanh@gmail.com'),
('thuhang','thuhang123','Nguyễn Thu Hằng','thuhang@gmail.com');


-- Manage uploaded music
DROP TABLE IF EXISTS `music` ;
CREATE TABLE IF NOT EXISTS `music` (
    `idmusic` INT AUTO_INCREMENT NOT NULL,
    `songtitle` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `songlink` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
	`idtype` INT NOT NULL,
	`listens` INT,
	PRIMARY KEY(`idmusic`),
	FOREIGN KEY (`idtype`) REFERENCES typemusic(`idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO music (idmusic,songtitle,songlink,idtype,listens) VALUES 
(1,'Anime-MusicBox','public/music/Playlist/Anime-MusicBox.wav',2,0),
(2,'Anime-Piano','public/music/Playlist/Anime-Piano.wav',2,0),
(3,'BTS-Piano','public/music/Playlist/BTS-Piano.wav',2,0),
(4,'Classical-Music-Happy','public/music/Playlist/Classical-Music-Happy.wav',2,0),
(5,'Classical-Music','public/music/Playlist/Classical-Music.wav',2,0),
(6,'Lofi-Beat','public/music/Playlist/Lofi-Beat.wav',2,0),
(7,'Lofi-Song-01','public/music/Playlist/Lofi-Song-01.wav',2,0),
(8,'Lofi-Song-02','public/music/Playlist/Lofi-Song-02.wav',2,0),
(9,'Sad-Song','public/music/Playlist/Sad-Song.wav',2,0),

(10,'Boating','public/music/white_sound/Boating.wav',1,0),
(11,'Cafe','public/music/white_sound/Cafe.wav',1,0),
(12,'Fan','public/music/white_sound/Fan.wav',1,0),
(13,'Fire','public/music/white_sound/Fire.wav',1,0),
(14,'Forest','public/music/white_sound/Forest.wav',1,0),
(15,'Horse','public/music/white_sound/Horse.wav',1,0),
(16,'Jungle','public/music/white_sound/Jungle.wav',1,0),
(17,'Library-01','public/music/white_sound/Library-01.wav',1,0),
(18,'Library-02','public/music/white_sound/Library-02.wav',1,0),
(19,'Night-01','public/music/white_sound/Night-01.wav',1,0),
(20,'Night-02','public/music/white_sound/Night-02.wav',1,0),
(21,'Rain','public/music/white_sound/Rain.wav',1,0),
(22,'Seaside-Wave','public/music/white_sound/Seaside-Wave.wav',1,0),
(23,'Thunder','public/music/white_sound/Thunder.wav',1,0),
(24,'Traffic','public/music/white_sound/Traffic.wav',1,0),
(25,'Walking','public/music/white_sound/Walking.wav',1,0),
(26,'Water-Wave','public/music/white_sound/Water-Wave.wav',1,0),
(27,'Wind-01','public/music/white_sound/Wind-01.wav',1,0),
(28,'Wind-02','public/music/white_sound/Wind-02.wav',1,0);


-- Histoy of listening music
DROP TABLE IF EXISTS `loghistory` ;
CREATE TABLE IF NOT EXISTS `loghistory` (
    `idlh` INT AUTO_INCREMENT NOT NULL,
    `date` date NOT NULL,
	`time` time NOT NULL,
    `idmusic` INT NOT NULL,
	`idmember` INT NOT NULL,
	`idtype` INT,
	PRIMARY KEY (`idlh`),
	FOREIGN KEY (`idmusic`) REFERENCES music(`idmusic`),
	FOREIGN KEY (`idmember`) REFERENCES member(`idmember`),
	FOREIGN KEY (`idtype`) REFERENCES tymusic(`idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- How to insert timestamp for table 'loghistory'
-- INSERT INTO `loghistory` (`date`, `time`, `idmusic`, `idmember`) VALUES (DATE(CURRENT_TIME()), TIME(CURRENT_TIME()), 1, 1);

-- Types of music: 'song' or 'white noise'
DROP TABLE IF EXISTS `typemusic` ;
CREATE TABLE IF NOT EXISTS `typemusic` (
    `idtype` INT AUTO_INCREMENT NOT NULL,
    `typemusic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY (`idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `typemusic` (`typemusic`) VALUES
('White noise'),
('Song');


COMMIT;
-- END