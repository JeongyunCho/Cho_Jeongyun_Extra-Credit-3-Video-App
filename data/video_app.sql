-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- 생성 시간: 18-12-10 04:48
-- 서버 버전: 5.7.21
-- PHP 버전: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `video_app`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action '),
(2, 'Horror'),
(3, 'Science fiction'),
(4, 'Romance'),
(5, 'Fantasy');

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_images`
--

DROP TABLE IF EXISTS `tbl_images`;
CREATE TABLE IF NOT EXISTS `tbl_images` (
  `images_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `images_url` varchar(50) NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_images`
--

INSERT INTO `tbl_images` (`images_id`, `images_url`) VALUES
(1, 'avengers-1'),
(2, 'forceawakens-1'),
(3, 'strangerthings-1');

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_vid_gen`
--

DROP TABLE IF EXISTS `tbl_vid_gen`;
CREATE TABLE IF NOT EXISTS `tbl_vid_gen` (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vid_id` tinyint(4) NOT NULL,
  `genre_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_vid_gen`
--

INSERT INTO `tbl_vid_gen` (`id`, `vid_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_vid_img`
--

DROP TABLE IF EXISTS `tbl_vid_img`;
CREATE TABLE IF NOT EXISTS `tbl_vid_img` (
  `vid_img_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `images_id` tinyint(4) NOT NULL,
  `vid_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`vid_img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_vid_img`
--

INSERT INTO `tbl_vid_img` (`vid_img_id`, `images_id`, `vid_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `vid_id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL,
  `vid_synopsis` text NOT NULL,
  PRIMARY KEY (`vid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `video`
--

INSERT INTO `video` (`vid_id`, `vid_name`, `vid_path`, `vid_desc`, `vid_thumb`, `vid_synopsis`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'When Thor\'s evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D.', 'avengers.jpg', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'Thirty years after the defeat of the Galactic Empire, the galaxy faces a new threat from the evil Kylo Ren (Adam Driver) and the First Order. When a defector named Finn (John Boyega) crash-lands on a desert planet, he meets Rey (Daisy Ridley), a tough scavenger whose droid contains a top-secret map', 'forceawakens.jpg', 'Thirty years after the defeat of the Galactic Empire, the galaxy faces a new threat from the evil Kylo Ren (Adam Driver) and the First Order. When a defector named Finn (John Boyega) crash-lands on a desert planet, he meets Rey (Daisy Ridley), a tough scavenger whose droid contains a top-secret map. Together, the young duo joins forces with Han Solo (Harrison Ford) to make sure the Resistance receives the intelligence concerning the whereabouts of Luke Skywalker (Mark Hamill), the last of the Jedi Knights.'),
(3, 'Stranger Things', 'strangerthings.mp4', 't\'s the fall of 1984, about a year after Will Byers was found, and he has been plagued by seeing visions of the Upside Down featuring a more dangerous monster. That leads the boy to see a suspiciously friendly new doctor, with the possibility that Will\'s visions are the result of suffering from PTS', 'strangerthings.jpg', 'It is November 16, 1983 in Hawkins, Indiana. Inside Hawkins National Laboratory, a scientist bursts out a door, running from something that isn\'t there. He runs to the elevator, tapping the floor button repeatedly, looking back and forth. He then gets in and taps the button again. He looks forward then up slowly, as he hears and sees something that we can\'t see. He is then pulled up as the elevator doors close, yelling loudly.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
