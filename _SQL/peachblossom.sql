-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2018 at 08:09 PM
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
-- Database: `peachblossom1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPlant` (IN `product_id` INT(11), IN `height` INT(11), IN `width` INT(11), IN `light` VARCHAR(25), IN `water` VARCHAR(25), IN `plant_type` VARCHAR(25), IN `life` VARCHAR(25))  NO SQL
INSERT into plants  (product_id, height,width,light,water,plant_type,life)
      values ( product_id, height, width, light, water, plant_type, life)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addProduct` (IN `name` VARCHAR(191), IN `photo` VARCHAR(191), IN `category_id` INT(11), IN `Unit_price` INT(11))  NO SQL
INSERT into product (Name, Photo, category_id, Unit_price)
        values (name, photo, category_id, Unit_price )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePlant` (IN `id` INT(11))  NO SQL
DELETE from plants where product_id = id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteProduct` (IN `id` INT(11))  NO SQL
BEGIN
DELETE from product where product_id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPlant` ()  NO SQL
select * from plants natural join product$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductCount` ()  NO SQL
select max(product_id)+1 as count from product$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_by_product_id` (IN `id` INT)  NO SQL
select * from plants natural join product where product_id = id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_seeds_by_product_id` (IN `id` INT(11))  NO SQL
select * from seeds natural join product where product_id = id$$

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
(1, 8, 5, 'Full', '1 to 2 days', 'flowering plant', 'seasonal'),
(2, 9, 7, 'Full', '2 to 3 days', 'flowering plant', 'annual'),
(3, 5, 8, 'Partial', '6 to 7 days', 'leafy plant', 'evergreen'),
(35, 8, 7, 'No Light', '2 to 3 days', 'leafy plant', 'evergreen'),
(36, 500, 400, 'Full', '6 to 7 days', 'tree', 'evergreen');

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
(3, 'Purple Shamrock', 'PurpleShamrock.jpg', 1, 200, '2018-04-29 19:00:00', NULL),
(4, 'Arum', 'arum.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(5, 'Bitter Gourd', 'bittergourd.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(6, 'Bottle Gourd', 'bottlegourd.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(7, 'Brinjal', 'brinjal.jpg', 2, 40, '2018-04-30 19:00:00', NULL),
(8, 'Brocoli', 'brocoli.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(9, 'Cabbage', 'cabbage.jpg', 2, 70, '2018-04-30 19:00:00', NULL),
(10, 'Carrot', 'carrot.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(11, 'Cauliflower', 'cauliflower.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(12, 'Celery', 'celery.jpg', 2, 120, '2018-04-30 19:00:00', NULL),
(13, 'Coriander', 'coriander.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(14, 'Cucumber', 'cucumber.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(15, 'Fenugreek', 'fenugreek.jpg', 2, 70, '2018-04-30 19:00:00', NULL),
(16, 'Garlic', 'garlic.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(17, 'Ginger', 'ginger.png', 2, 40, '2018-04-30 19:00:00', NULL),
(18, 'Hot Peppers', 'hotpepper.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(19, 'Lettuce', 'lettuce.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(20, 'Mint', 'mint.png', 2, 100, '2018-04-30 19:00:00', NULL),
(21, 'Mustard', 'mustardplant.jpg', 2, 110, '2018-04-30 19:00:00', NULL),
(22, 'Okra', 'okra.jpg', 2, 70, '2018-04-30 19:00:00', NULL),
(23, 'Onion', 'onion.jpg', 2, 30, '2018-04-30 19:00:00', NULL),
(24, 'Peas', 'peas.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(25, 'Potato', 'potato.png', 2, 0, '2018-04-30 19:00:00', NULL),
(26, 'Radish', 'radish.jpg', 2, 130, '2018-04-30 19:00:00', NULL),
(27, 'Spinach', 'spinach.jpg', 2, 90, '2018-04-30 19:00:00', NULL),
(28, 'Sponge Gourd', 'sponge_gourd.png', 2, 80, '2018-04-30 19:00:00', NULL),
(29, 'Sweet peppers', 'sweetPeppers.jpg', 2, 80, '2018-04-30 19:00:00', NULL),
(30, 'Sweet Potato', 'sweetpotato.jpg', 2, 60, '2018-04-30 19:00:00', NULL),
(31, 'Tinda Gourd', 'tindaGourd.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(32, 'Tomato', 'tomato.jpg', 2, 100, '2018-04-30 19:00:00', NULL),
(33, 'Turmeric', 'turmeric.jpg', 2, 50, '2018-04-30 19:00:00', NULL),
(34, 'Turnip', 'turnip.jpg', 2, 150, '2018-04-30 19:00:00', NULL),
(35, 'Caladium', 'caladium.jpg', 1, 330, '2018-04-30 19:00:00', NULL),
(36, 'Tabebuia Argentea', '36.jpg', 1, 10000, NULL, NULL);

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
-- Table structure for table `seeds`
--

CREATE TABLE `seeds` (
  `product_id` int(100) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `local_name` varchar(255) DEFAULT NULL,
  `sowing_time` date DEFAULT NULL,
  `sowing_time_end` date DEFAULT NULL,
  `sowing_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seeds`
--

INSERT INTO `seeds` (`product_id`, `Name`, `local_name`, `sowing_time`, `sowing_time_end`, `sowing_method`) VALUES
(4, 'Arum', 'Arwi', '2018-02-01', '2018-03-31', 'Direct Tubers'),
(5, 'Bitter Gourd', 'Karela', '2018-02-01', '2018-07-01', 'Direct Seeds'),
(6, 'Bottle Gourd', 'Kaddu', '2018-02-01', '2018-10-01', 'DirectSeeds'),
(7, 'Brinjal', 'Baingan', '2018-01-01', '2018-12-31', 'Grow Seedlings'),
(8, 'Broccoli', 'Broccoli', '2018-09-01', '2018-11-01', 'Grow Seedlings'),
(9, 'Cabbage', 'Bandgobi', '2018-09-01', '2018-11-01', 'Direct Seedlings'),
(10, 'Carrot', 'Gaajar', '2018-09-01', '2018-11-01', 'Direct Seeds'),
(11, 'Cauliflower', 'Phoolgobi', '2018-09-01', '2018-11-30', 'Grow Seedlings'),
(12, 'Celery', 'Salaad', '2018-09-01', '2018-10-31', 'Direct Seeds'),
(13, 'Coriander', 'Dhania', '2018-02-01', '2018-11-30', 'Direct Seeds'),
(14, 'Cucumber', 'Kheera', '2018-02-01', '2018-10-31', 'Seedlings'),
(15, 'Fenugreek', 'Methi', '2018-09-01', '2018-12-31', 'Direct Seeds'),
(16, 'Garlic', 'Lehsan', '2018-09-01', '2018-10-31', 'Direct Bulbs'),
(17, 'Ginger', 'Adrak', '2018-02-01', '2018-03-31', 'Direct Tubers'),
(18, 'Hot Peppers', 'Mirch', '2018-02-01', '2018-10-31', 'Grow Seedlings'),
(19, 'Lettuce', 'Salaad Patta', '2018-09-01', '2018-10-31', 'Direct Seeds'),
(20, 'Mint', 'Podina', '2018-09-01', '2018-10-31', 'Roots / Cuttings'),
(21, 'Mustard', 'Sarson', '2018-09-01', '2018-10-31', 'Direct Seeds'),
(22, 'Okra', 'Bhindi', '2018-02-01', '2018-09-30', 'Direct Seeds'),
(23, 'Onion', 'Pyaaz', '2018-02-01', '2018-10-31', 'Grow Seedlings'),
(24, 'Peas', 'Matar', '2018-09-15', '2018-11-15', 'Directs Seeds'),
(25, 'Potato ', 'Aalu', '2018-02-01', '2018-10-31', 'Direct Tubers'),
(26, 'Radish', 'Mooli', '2018-02-01', '2018-11-30', 'Direct Seeds'),
(27, 'Spinach', 'Paalak', '2018-03-01', '2018-10-31', 'Direct Seeds'),
(28, 'Sponge Gourd', 'Turai', '2018-02-01', '2018-10-31', 'Direct Seeds'),
(29, 'Sweet Peppers', 'Shimla Mirch', '2018-02-01', '2018-11-30', 'Grow Seedlings'),
(30, 'Sweet Potato', 'Shakar Kandi', '2018-02-01', '2018-03-31', 'Direct Tubers / Cuttings'),
(31, 'Tinda Gourd', 'Tinda', '2018-02-01', '2018-10-31', 'Direct Seeds'),
(32, 'Tomato', 'Timaatar', '2018-02-01', '2018-11-30', 'Grow Seedlings'),
(33, 'Turmeric', 'Haldi', '2018-03-01', '2018-07-31', 'Direct Tubers'),
(34, 'Turip', 'Shaljam', '2018-09-01', '2018-11-30', 'Direct Seeds');

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
(3, 'Soha Khan', 'so@gmail.com', '$2y$10$TFNf7dsF8QZbdPIEvFOdiexx./bo8VP6CukZFt2tK87mGMWI.zO7i', '9CwMrYCAjQbul19Q7HdIDNlCoYyFLN6458xg1aB0cdZY0wS0eonFeMgoQgnb', '2018-04-29 10:40:30', '2018-04-29 10:40:30'),
(4, 'Maha', 'maha@gmail.com', '$2y$10$7cuqbm5fpVbwsy6F.QjKIeskAAHI0YYnP67NLUdqlkWIfu8r6oPpq', NULL, '2018-05-01 03:18:04', '2018-05-01 03:18:04'),
(5, 'Hassan', 'hassan@iba.com', '$2y$10$HAFnTTf5xTmnp9YMYPRDJ.TOoYGOsJK2R/FQpjGVZeRCwK4ARGaAe', NULL, '2018-05-01 12:57:53', '2018-05-01 12:57:53');

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
  ADD UNIQUE KEY `product_id_2` (`product_id`),
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
-- Indexes for table `seeds`
--
ALTER TABLE `seeds`
  ADD UNIQUE KEY `product-id` (`product_id`);

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
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
