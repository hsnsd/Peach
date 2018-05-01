-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2018 at 06:35 AM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_by_product_id` (IN `id` INT)  NO SQL
select * from plants natural join product where product_id = id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `show_plants` ()  NO SQL
SELECT * from plants join product where plants.product_id = product.product_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(35) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_02_182856_create_posts_table', 1),
(4, '2017_06_03_144733_add_user_id_to_posts', 2),
(5, '2017_06_03_211549_add_cover_image_to_posts', 3),
(6, '2018_04_30_135142_create_Products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 5, 8, 'Partial', '6to7days', 'leafy plant', 'evergreen');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(13, 'May Dreams Gardens', '<p><a href=\"https://2.bp.blogspot.com/-pC9ENvwUvFI/Wt82Rw96vfI/AAAAAAAAafA/HUtbX-pDj5c2os4pguOs7RZ9XpuUx4GMQCLcBGAs/s1600/butterfly.jpg\" target=\"_self\"><img alt=\"Garden is life\" src=\"https://2.bp.blogspot.com/-pC9ENvwUvFI/Wt82Rw96vfI/AAAAAAAAafA/HUtbX-pDj5c2os4pguOs7RZ9XpuUx4GMQCLcBGAs/s1600/butterfly.jpg\" style=\"border-style:solid; border-width:2px; height:267px; width:200px\" /></a></p>\r\n\r\n<p>May Dreams Gardens is chock-full of know-how. It&rsquo;s run by a self-described &ldquo;gardenangelist&rdquo; (an evangelist for gardening) with a bachelor&rsquo;s degree in horticulture production. The blog boasts over 2,500 posts of gardening info going back to 2004. This zone 6A (Indiana) gardener devised&nbsp;<a href=\"http://www.maydreamsgardens.com/2015/01/garden-bloggers-bloom-day-january-2015.html\" target=\"_blank\">Garden Blogger&rsquo;s Bloom Day</a>, where gardening bloggers around the globe share photos of their gardens on the 15th of the month. Delve into her posts to see how you too can have a &ldquo;<a href=\"http://www.maydreamsgardens.com/2017/03/perpetual-spring.html\" target=\"_blank\">perpetual spring</a>&rdquo; in your garden or to see which tools she favors in the&nbsp;<a href=\"http://www.maydreamsgardens.com/p/my-hoe-collection.html\" target=\"_blank\">tool shed</a>.</p>\r\n\r\n<p>&nbsp;</p>', '2018-04-29 10:47:09', '2018-04-29 10:52:18', 3, 'Flowers-in-Keukenhof-Gardens-Netherlands_1525016829.jpg'),
(14, 'Vegetable Garden-What Worked & What Didn\'t', '<h3>Gardeners have traditionally very much been people who have stayed in one place, but as someone who has become a globally-orientated teacher of&nbsp;<em>gardening</em>&nbsp;and related skills, staying in one place has become to seem dangerously limiting. One of the biggest&nbsp;<em>problems</em>&nbsp;in&nbsp;<em>garden</em>&nbsp;writing I think has been the assumption&nbsp;</h3>', '2018-04-29 10:58:24', '2018-04-29 10:59:22', 3, 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `Unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `Name`, `Photo`, `category_id`, `Unit_price`, `created_at`, `updated_at`) VALUES
(1, 'Mari Gold', 'Marigold.jpg', 1, 80, '2018-04-29 19:00:00', NULL),
(2, 'Red Rose', 'Rose.jpg', 1, 120, '2018-04-29 19:00:00', NULL),
(3, 'Purple Shamrock', 'PurpleShamrock.jpg', 1, 200, '2018-04-29 19:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `description`, `property`) VALUES
(1, 'Sun Flower', 'flower.jpg', 'This is a flower', 'Water'),
(2, 'Garden', 'gardener.jpg', 'This is a gardener', 'nowater'),
(3, 'Rose', 'rose.jpg', 'This is a gardener', 'Water');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Soha Khan', 'so@gmail.com', '$2y$10$TFNf7dsF8QZbdPIEvFOdiexx./bo8VP6CukZFt2tK87mGMWI.zO7i', '9CwMrYCAjQbul19Q7HdIDNlCoYyFLN6458xg1aB0cdZY0wS0eonFeMgoQgnb', '2018-04-29 10:40:30', '2018-04-29 10:40:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_product_id_unique` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
