-- phpMyAdmin SQL Dump
-- version 4.1.14.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2018 at 07:03 PM
-- Server version: 5.1.73
-- PHP Version: 5.5.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stranocka`
--

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE IF NOT EXISTS `forum_comments` (
  `commentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id_c` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(300) COLLATE utf8_slovak_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`commentar_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`commentar_id`, `post_id_c`, `user_id`, `comment`, `date`) VALUES
(1, 2, 1, 'hej?', '2018-09-18 21:39:56'),
(2, 3, 1, 'cv xcv', '2018-09-25 12:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE IF NOT EXISTS `forum_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post` varchar(500) COLLATE utf8_slovak_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=4 ;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`post_id`, `user_id`, `post`, `date`) VALUES
(1, 1, 'Co to tu take?', '2018-07-09 18:35:19'),
(2, 1, 'No neviem neviem', '2018-07-09 18:48:11'),
(3, 1, 'asdasdasdassd', '2018-07-10 18:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sender` int(11) NOT NULL COMMENT 'ID uzivatela ktory zaslal friend request',
  `id_recipient` int(11) NOT NULL COMMENT 'ID uzivatela ktory dostal friend request',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci COMMENT='Tabulka pre friend requesty' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `id_sender`, `id_recipient`) VALUES
(8, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `private_questions`
--

CREATE TABLE IF NOT EXISTS `private_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question` varchar(200) COLLATE utf8_slovak_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=4 ;

--
-- Dumping data for table `private_questions`
--

INSERT INTO `private_questions` (`question_id`, `user_id`, `question`, `date`) VALUES
(1, 1, 'Dosť tu toho chýba...', '2018-07-11 19:13:17'),
(2, 1, 'Nič nefunguje ako ma', '2018-07-11 19:15:00'),
(3, 1, 'dasdasdas', '2018-07-11 19:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id pouzivatela',
  `nick` varchar(10) COLLATE utf8_slovak_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_slovak_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_slovak_ci NOT NULL COMMENT 'Meno',
  `surname` varchar(50) COLLATE utf8_slovak_ci NOT NULL COMMENT 'Priezvisko',
  `gender` varchar(2) COLLATE utf8_slovak_ci NOT NULL COMMENT 'm - male, f - female, o - other, n - not defined',
  `email` varchar(200) COLLATE utf8_slovak_ci NOT NULL,
  `reg_date` date NOT NULL COMMENT 'Datum registracie uzivatela',
  `last_login` datetime NOT NULL COMMENT 'Datum a cas posledneho loginu',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci COMMENT='Vsetky informacie uzivatela' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nick`, `password`, `name`, `surname`, `gender`, `email`, `reg_date`, `last_login`) VALUES
(1, 'adamko', '$2y$10$3AM3J.BvGMY4hV91vnWK6uZsJzSCwSwkIGyn/pFppHiQussu1hSlG', 'Adam', ' ', 'n', 'sromovskyadam@gmail.com', '2018-07-08', '2018-09-25 12:49:14'),
(2, 'erig', '$2y$10$oZ7R/9imXQZe3jGwpx/rUO6KgYkFkEMfQoYSZTQH35st0t0EngBTS', 'n', 'n', 'n', 'erig@gmail.com', '2018-07-08', '2018-07-10 21:20:32'),
(3, 'erika', '$2y$10$GTM0yVpwW7A/bbA6DajHOOUcPCD.Bc9Si5KzOgrrsxzs/ra2utAh2', 'n', 'n', 'n', 'erika@gmail.com', '2018-07-08', '0000-00-00 00:00:00'),
(4, 'ada', '$2y$10$6KdQ79NZUCIeQG2NOL3qMOydkyxmhKHZKBXKGrQIrMdo/e4WDmIcC', 'n', 'n', 'n', 'dasda@gmail.com', '2018-09-18', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
