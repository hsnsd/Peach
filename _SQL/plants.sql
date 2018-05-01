-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 08:17 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peachblossom`
--

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `light` varchar(25) DEFAULT NULL,
  `water` varchar(25) DEFAULT NULL,
  `plant_type` varchar(25) DEFAULT NULL,
  `life` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`product_id`, `height`, `width`, `light`, `water`, `plant_type`, `life`) VALUES
(1, 8, 5, 'Full', '1to2days', 'flower', 'seasonal'),
(2, 9, 7, 'Full', '2to3days', 'flower', 'annual'),
(3, 5, 8, 'Partial', '6to7days', 'leafy plant', 'evergreen'),
(8118, 3, 2, 'No light ', '2 to 3 days', 'leafy', 'annual'),
(8116, 3, 6, 'Partial', '1 to 2 days', 'flowering plants', 'seasonal'),
(8116, 3, 6, 'Partial', '1 to 2 days', 'flowering plants', 'seasonal'),
(8120, 500, 32, 'Partial', '6 to 7days', 'flowering plant', 'evergreen'),
(8116, 520, 321, 'No Light', '1 to 2 days', 'flowering plant', 'seasonal'),
(8117, 52, 200, 'No Light', '6 to 7 days', 'leafy plant', 'annual'),
(8115, 52, 36, 'Partial', '2 to 3 days', 'flowering plant', 'evergreen'),
(8118, 522, 300, 'No Light', '1 to 2 days', 'flowering plant', 'seasonal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD KEY `product_id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
