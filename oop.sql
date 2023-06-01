-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2018 at 03:26 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`) VALUES
(2, 'Mauris blandit ipsum', 'Mauris blandit ipsum sed sapien bibendum sagittis aliquet at dui. Morbi ipsum libero, vestibulum et felis quis, iaculis cursus purus. Nunc semper tortor ante, sit amet sodales ligula rutrum a. Nulla congue varius lacus, ac finibus felis semper nec. Duis vestibulum et lacus mollis fermentum. Etiam posuere pellentesque urna. Praesent porttitor lacinia diam vitae pharetra. Duis vel bibendum neque. Vestibulum in semper leo, quis tincidunt metus. Cras ut ante vel ipsum gravida porta. Maecenas efficitur ipsum id enim volutpat sollicitudin. Curabitur ac quam suscipit erat mollis varius eget sit amet turpis. Fusce venenatis ultrices feugiat. Praesent bibendum nisl eu nunc facilisis, sed ultricies eros euismod. Vivamus lorem erat, congue eget finibus non, malesuada et orci. Curabitur ac tortor maximus, ornare sapien in, ultricies justo.', '2018-01-12 20:51:07'),
(3, 'Post three', 'Duis vestibulum et lacus mollis fermentum. Etiam posuere pellentesque urna. Praesent porttitor lacinia diam vitae pharetra. Duis vel bibendum neque. Vestibulum in semper leo, quis tincidunt metus. Cras ut ante vel ipsum gravida porta. Maecenas efficitur ipsum id enim volutpat sollicitudin. Curabitur ac quam suscipit erat mollis varius eget sit amet turpis. Fusce venenatis ultrices feugiat. Praesent bibendum nisl eu nunc facilisis, sed ultricies eros euismod. Vivamus lorem erat, congue eget finibus non, malesuada et orci. Curabitur ac tortor maximus, ornare sapien in, ultricies justo.', '2018-01-13 20:19:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
