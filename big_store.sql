-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 06:14 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `big_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 'Walton', 'Walton is a conglomerate based in Kaliakair, Bangladesh. It comprises numerous subsidiaries and affiliated businesses, most of them united under the Walton brand.', 1, '2018-02-01 12:17:38', '2018-02-01 12:17:38'),
(8, 'Azuba', 'Azuba Electronics specializes in the installation and maintenance of all electronic security systems as well as product development and manufacture of a range of reliable electronic products for the commercial and industrial industry.', 1, '2018-02-01 12:19:39', '2018-02-01 12:19:39'),
(9, 'Hitachi', 'Hitachi offers world class consumer, business, government products, and services with the latest technologies.', 1, '2018-02-01 12:20:38', '2018-02-01 13:24:10'),
(10, 'Haiko', 'We are passionate about technology and making it accessible to the world.We believe that for technology to be truly innovative,it has to be accessible.It\'s not about what it is; it\'s about what it does', 1, '2018-02-01 12:43:20', '2018-02-01 13:24:00'),
(11, 'Cooper', 'Cooper has the latest technology across its range the three areas that matter:', 1, '2018-02-01 12:45:48', '2018-02-01 12:45:48'),
(12, 'Minister', 'Minister Refrigerator BCD 142G In the market of home appliance Refrigerator becomes one of the most common appliance in the people of root level.', 1, '2018-02-01 12:47:11', '2018-02-01 12:47:11'),
(13, 'Titan', 'Shop For Your Best Collection of Titan Wrist Watches for Men and Women online in BD', 1, '2018-02-01 12:50:10', '2018-02-01 12:50:10'),
(14, 'Curren', 'Curren Watches is your source for discount stylish watches for men and women at prices Up to 90% Off.', 1, '2018-02-01 12:50:52', '2018-02-01 12:50:52'),
(15, 'Casio', 'A sporty, high-performance metal analogue watch that continues to evolve through a fusion of dynamic design with advanced technologies.', 1, '2018-02-01 12:51:50', '2018-02-01 12:51:50'),
(16, 'Hamko', 'Kitchenware · Tableware · Bathware · Storage; Furniture. Chair; Table; Kids Furniture; Others. Childrenware; Gardenware; Others. Basket · Coffee Mug/Cup, Glass · Fruit Basket. Folding Chair. PrevNext. 123. Classic Square Rack. easy to use & extraordinary houseware item', 1, '2018-02-01 12:56:29', '2018-02-01 12:56:29'),
(17, 'Panasonic', 'Panasonic Corporation is a worldwide leader in the development of diverse electronics technologies and solutions for customers in the consumer electronics, housing, automotive, enterprise solutions and device industries.', 1, '2018-02-01 13:02:13', '2018-02-01 13:02:13'),
(18, 'Sharp', 'Buy Sharp Refrigerator online at Best Electronics with cash on delivery or by using your VISA, MasterCard or American Express card.', 1, '2018-02-01 13:03:25', '2018-02-01 13:03:25'),
(19, 'Atlas', 'We are the leading Umbrella manufacturer in Bangladesh. We sale all verities of Quality umbrella in Bangladesh.', 1, '2018-02-01 13:05:20', '2018-02-01 13:05:20'),
(20, 'Rainbow', 'If you are interested in contributing, please visit our GOFUNDME and consider donating at a level that feels comfortable for you.', 1, '2018-02-01 13:06:27', '2018-02-01 13:06:27'),
(21, 'BMW', 'Our favorite car maker not only makes some of the most driver focused cars on the market today, it also owns some of the most revered brands of the automotive world.', 1, '2018-02-01 13:09:11', '2018-02-01 13:09:11'),
(22, 'Nova', 'We manufacture and sales all kind of solid wooden furniture. We use Segon, Mahgoni. Shilkorai. Gamari, and Gorzon wood. Our furniture items are Sofa, Bed, Dining set, Wall cabinet, Tea table, Complete Bed Room set, Kitchen cabinet, and Doors. We have Furniture designer experts.', 1, '2018-02-01 13:19:36', '2018-02-01 13:19:36'),
(23, 'Otobi', 'Number one furniture producer and retailer in Bangladesh since 1975.', 1, '2018-02-01 13:20:43', '2018-02-01 13:20:43'),
(24, 'Aroma', 'Sensual, spicy and fun! This exotic aroma spray is a long time favorite here at Mountain Rose Herbs, and contains oils from some of the most alluring and intoxicating botanicals from around the globe.', 1, '2018-02-01 13:22:22', '2018-02-01 13:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 'Refrigerator', 'High Capacity Branded Refrigerator in Bangladesh', 1, '2018-02-01 12:09:28', '2018-02-03 13:00:23'),
(8, 'Air Conditioner', 'Air Conditioner in Bangladesh with Lowest Price', 1, '2018-02-01 12:25:29', '2018-02-03 13:01:09'),
(9, 'Watch', 'Stylish & Popular Mens Watches in BD', 1, '2018-02-01 12:27:00', '2018-02-01 12:27:00'),
(10, 'Wardrobe', 'Multiple branded Wardrobe in one place', 1, '2018-02-01 12:34:33', '2018-02-01 12:34:33'),
(11, 'Umbrella & Rain coat', 'Best Quality Umbrella & Rain coat in BD', 1, '2018-02-01 12:36:18', '2018-02-01 12:36:18'),
(12, 'Almirah', 'Different branded Almirah in Bangladesh', 1, '2018-02-01 12:38:18', '2018-02-03 13:02:07'),
(13, 'Air Freshener', 'Air Freshener & Automatic Room Sprayer in BD', 0, '2018-02-01 13:14:11', '2018-02-06 01:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(3, 'Jamal', 'Uddin', 'mduddin514@gmail.com', '$2y$10$a/NLTOtMeZDRwpR0uOh66eiYfYqXrtFZFhUoQYthsAU9G0wyfcIQi', '01750789636', 'Nikunja-2', '2018-02-11 08:02:07', '2018-02-11 08:02:07'),
(4, 'Jamal', 'Uddin', 'mduddin514@gmail.com', '$2y$10$T.O4e0XSk1/z8kM.pXmDAO7NOiPm46vLLHCgW3loYZ/yRUzvPb7pu', '01750789636', 'Nikunja-2', '2018-02-11 08:16:32', '2018-02-11 08:16:32'),
(5, 'Sobuj', 'Khan', 'khan@mail.com', '$2y$10$ctx3LqZEU7VeldMudWsCfuKoN/RznkQ2pIWLndAtPcee/mnE5iSI6', '123456', 'Nikunja', '2018-03-04 06:47:16', '2018-03-04 06:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_26_194805_create_categories_table', 2),
(4, '2018_01_28_180200_create_brands_table', 3),
(5, '2018_02_01_102114_create_products_table', 4),
(6, '2018_02_11_021002_create_customers_table', 5),
(7, '2018_02_11_143648_create_shippings_table', 6),
(8, '2018_02_11_150633_create_orders_table', 7),
(9, '2018_02_11_150721_create_payments_table', 7),
(10, '2018_02_11_150844_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 49800.00, 'Pending', '2018-02-11 11:50:33', '2018-02-11 11:50:33'),
(2, 5, 3, 186198.00, 'Pending', '2018-03-04 06:53:23', '2018-03-04 06:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'Minister AC-1.5 Ton', 48500.00, 1, '2018-02-11 11:50:34', '2018-02-11 11:50:34'),
(2, 1, 14, 'TITAN gents watch- replica', 650.00, 2, '2018-02-11 11:50:34', '2018-02-11 11:50:34'),
(3, 2, 24, 'Sharp SJ-F70PE-SL', 185000.00, 1, '2018-03-04 06:53:23', '2018-03-04 06:53:23'),
(4, 2, 33, 'Aroma natural room spray- rose', 599.00, 2, '2018-03-04 06:53:23', '2018-03-04 06:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cash', 'Pending', '2018-02-11 11:50:34', '2018-02-11 11:50:34'),
(2, 2, 'Cash', 'Pending', '2018-03-04 06:53:23', '2018-03-04 06:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 7, 7, 'Walton Direct Cool Refrigerator', 33600.00, 1, 'Type: Direct Cool\r\nGross Volume: 348 Ltr', '<p>Type: Direct Cool</p>\r\n\r\n<p>Gross Volume: 348 Ltr</p>\r\n\r\n<p>Net Volume: 333 Ltr</p>\r\n\r\n<p>Refrigerant: R600a</p>\r\n\r\n<p>Special Technology: Nano Health care</p>\r\n\r\n<p>Rated Voltage/ Hz/ watt : 220- 240/ 50/ 145.7</p>\r\n\r\n<p>Cooling Effect Freezer Cabinet Less than -180C</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/walton1.jpg', 1, '2018-02-03 08:05:53', '2018-02-04 10:52:58'),
(2, 7, 7, 'Walton WFE-3B0-0302-RXXX-XX', 2890.00, 1, 'Type: Direct Cool\r\nGross Volume: 341 Ltr', '<p>Type: Direct Cool</p>\r\n\r\n<p>Gross Volume: 341 Ltr</p>\r\n\r\n<p>Net Volume: 320 Ltr</p>\r\n\r\n<p>Refrigerant: R600a</p>\r\n\r\n<p>Temperature Control (Electronic/ Mechanical) :Mechanical</p>\r\n\r\n<p>Defrosting (Automatic/ Manual) :Manual</p>\r\n\r\n<p>Egg Tray or Pocket : Yes</p>', 'product-images/walton2.jpg', 0, '2018-02-03 08:21:34', '2018-02-03 13:38:50'),
(3, 7, 7, 'Walton Direct Cool Refrigerator-345L', 35500.00, 1, 'Type: Direct Cool\r\nGross Volume: 358 Ltr', '<p>Type: Direct Cool</p>\r\n\r\n<p>Gross Volume: 358 Ltr</p>\r\n\r\n<p>Net Volume: 345 Ltr</p>\r\n\r\n<p>Refrigerant: R600a</p>\r\n\r\n<p>Performance : Climate Type (SN, N, ST, T)</p>\r\n\r\n<p>Rated Voltage/ Hz/ watt : 220~240/ 50/135</p>\r\n\r\n<p>Compressor RSCR</p>', 'product-images/walton3.jpg', 1, '2018-02-03 08:25:39', '2018-02-03 08:25:39'),
(4, 7, 8, 'Azuba Refrigerator -10.5 CFT', 28000.00, 1, 'Capacity:190 L \r\n3 doors', '<p>Capacity:190 L</p>\r\n\r\n<p>3 doors</p>\r\n\r\n<p>Size: 10.5 CFT</p>\r\n\r\n<p>Auto Defrost</p>\r\n\r\n<p>Power: 220-240V / 50-60 Hz</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/azuba1.jpg', 1, '2018-02-03 11:22:45', '2018-02-03 11:22:45'),
(5, 7, 9, 'Hitachi R-S700EUK8 Refrigerator 700L', 235000.00, 1, 'Capacity:700L\r\n5 years service warranty', '<p>Capacity:700L</p>\r\n\r\n<p>5 years service warranty&nbsp;</p>\r\n\r\n<p>220- 240/ 50/ 145.7</p>\r\n\r\n<p>Made in Japan</p>\r\n\r\n<p>Free home delivery</p>', 'product-images/hitachi1.jpg', 1, '2018-02-03 11:29:28', '2018-02-03 11:29:28'),
(6, 7, 9, 'Hitachi RT-270', 54000.00, 1, 'Capacity:216L\r\nSize (L x W x H cm) 54 x 159.8 x 61', '<p>Capacity:216L</p>\r\n\r\n<p>Size (L x W x H cm) 54 x 159.8 x 61</p>\r\n\r\n<p>Weight (kg) 100</p>\r\n\r\n<p>220- 240/ 50/ 145.7</p>\r\n\r\n<p>Made in Japan</p>\r\n\r\n<p>Free home delivery</p>', 'product-images/hitachi2.jpg', 1, '2018-02-03 11:32:53', '2018-02-03 11:32:53'),
(7, 7, 9, 'Hitachi R-S700PUK2', 255000.00, 1, 'Capacity:700L\r\n5 Years service warranty', '<p>Capacity:700L</p>\r\n\r\n<p>5 Years service warranty</p>\r\n\r\n<p>Compressor RSCR</p>\r\n\r\n<p>Made in Japan</p>\r\n\r\n<p>Free home delivery</p>', 'product-images/hitachi3.jpg', 1, '2018-02-03 11:38:03', '2018-02-03 11:38:03'),
(8, 8, 10, 'Haiko HS-12KDTLV 1.0', 29500.00, 1, 'Haiko HS-12KDTLV 1.0 TON Air Conditioner \r\nBTU 12000 BTU, 1. Ton', '<p>Haiko HS-12KDTLV 1.0 TON Air Conditioner</p>\r\n\r\n<p>BTU 12000 BTU, 1. Ton</p>\r\n\r\n<p>Coverage 100 &ndash; 120 Sqft</p>\r\n\r\n<p>Filter Type Washable Air Filter</p>\r\n\r\n<p>Cool Speed Air Flow Direction Adjustable</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/haiko1.jpg', 1, '2018-02-03 11:42:42', '2018-02-03 11:42:42'),
(9, 8, 10, 'HAIKO 2 TON Split AC', 43000.00, 1, 'Haiko AC HS-24FWM 2 ton air conditioner \r\nAC Type: Split AC', '<p>Haiko AC HS-24FWM 2 ton air conditioner</p>\r\n\r\n<p>AC Type: Split AC</p>\r\n\r\n<p>Capacity: BTU 24000 BTU, 2. Ton</p>\r\n\r\n<p>Coverage: 150-200 Sqft</p>\r\n\r\n<p>Cool Speed: Cooling Capacity 5304.5 Watts</p>\r\n\r\n<p>Air Control Automatic Air Flow Adjustment</p>', 'product-images/haiko2.jpg', 1, '2018-02-03 11:46:04', '2018-02-03 11:46:04'),
(10, 8, 10, 'HAIKO Split AC 1.5 TON Air Conditioner', 36000.00, 1, 'Haiko1.5 Ton 18000 BTU Split Type Wall Mounted Air Conditioner\r\ncoverage: (160-180) sq ft', '<p>Haiko1.5 Ton 18000 BTU Split Type Wall Mounted Air Conditioner</p>\r\n\r\n<p>coverage: (160-180) sq ft</p>\r\n\r\n<p>filter type: auto clean</p>\r\n\r\n<p>fan speed: air circulation (high) (M3/Hr): inner &ndash; 540</p>\r\n\r\n<p>outer &ndash; 1,760 &ndash; 1,830</p>\r\n\r\n<p>air control: can be freely adjusted</p>', 'product-images/haiko3.jpg', 1, '2018-02-03 11:48:38', '2018-02-03 11:48:38'),
(11, 8, 11, 'COOPER & HUNTER 2.0 Ton Air', 83000.00, 1, 'Model: CH-S24RX4 \r\nCapacity: 2.0 Ton', '<p>Model: CH-S24RX4</p>\r\n\r\n<p>Capacity: 2.0 Ton</p>\r\n\r\n<p>Power supply : 220-240V/50Hz/1Ph</p>\r\n\r\n<p>Rated input/Cold : 1,9 kW</p>\r\n\r\n<p>Energy performance/EER (Cold) : 3,24 kW/kW</p>\r\n\r\n<p>Air capacity : 850 m&sup3;/h</p>\r\n\r\n<p>Weight/outdoor unit : 50 kg</p>', 'product-images/cooper1.jpg', 1, '2018-02-03 11:52:58', '2018-02-03 11:52:58'),
(12, 8, 12, 'Minister AC-1.5 Ton', 48500.00, 1, 'Fast cooling\r\nCapacity:18000Btu/Hr', '<p>Fast cooling</p>\r\n\r\n<p>Capacity:18000Btu/Hr</p>\r\n\r\n<p>Coverage:150-200Sqft</p>\r\n\r\n<p>Auto clean filter</p>\r\n\r\n<p>7 years warranty</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/minister1.jpg', 1, '2018-02-03 11:55:50', '2018-02-03 11:55:50'),
(13, 8, 12, 'Minister AC-1 Ton', 39000.00, 1, 'Fast cooling \r\nCapacity:12000Btu/Hr', '<p>Fast cooling</p>\r\n\r\n<p>Capacity:12000Btu/Hr</p>\r\n\r\n<p>Coverage:120-140Sqft</p>\r\n\r\n<p>Auto clean filter</p>\r\n\r\n<p>7 years warranty</p>', 'product-images/minister2.jpg', 1, '2018-02-03 12:00:32', '2018-02-03 12:00:32'),
(14, 9, 13, 'TITAN gents watch- replica', 650.00, 0, 'TITAN gents watch- replica \r\nanalogue display', '<p>TITAN gents watch- replica</p>\r\n\r\n<p>analogue display</p>\r\n\r\n<p>brand new product</p>\r\n\r\n<p>1 year warranty</p>\r\n\r\n<p>Free home delivery</p>', 'product-images/titan1.jpg', 1, '2018-02-03 12:04:22', '2018-02-03 12:04:22'),
(15, 9, 13, 'TITAN gents wrist watch- copy', 550.00, 1, 'TITAN gents wrist watch- copy\r\nanalogue display', '<p>TITAN gents wrist watch- copy</p>\r\n\r\n<p>analogue display</p>\r\n\r\n<p>brand new product</p>\r\n\r\n<p>1 year warranty</p>\r\n\r\n<p>Free home delivery</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/titan2.jpg', 1, '2018-02-03 12:08:42', '2018-02-03 12:08:42'),
(16, 9, 14, 'CURREN Gents Wristwatch', 214.00, 1, 'Display: Analog \r\nDial Material: Stainless Steel \r\nStylish Design', '<p>Display: Analog</p>\r\n\r\n<p>Dial Material: Stainless Steel</p>\r\n\r\n<p>Quartz Movement</p>\r\n\r\n<p>Stylish Design</p>\r\n\r\n<p>One year free sevice</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/curren1.jpg', 1, '2018-02-03 12:11:35', '2018-02-03 12:11:35'),
(17, 9, 14, 'CURREN Gents Wrist Watch', 349.00, 1, 'Display: Analog\r\nDate Function', '<p>Display: Analog</p>\r\n\r\n<p>Date Function</p>\r\n\r\n<p>Dial Material: Stainless Steel</p>\r\n\r\n<p>Quartz Movement</p>\r\n\r\n<p>Stylish Design</p>\r\n\r\n<p>Case material:Alloy</p>\r\n\r\n<p>One year free sevice</p>', 'product-images/curren2.jpg', 1, '2018-02-03 12:14:01', '2018-02-03 12:14:01'),
(18, 9, 15, 'CASIO AW-80V-5BV Men\'s Wrist Watch', 3550.00, 1, 'CASIO BROWN LEATHER WATCH FOR GENTS (AW-80V-5BV) \r\nBand Material: Leather', '<p>CASIO BROWN LEATHER WATCH FOR GENTS (AW-80V-5BV)</p>\r\n\r\n<p>Band Material: Leather</p>\r\n\r\n<p>Date Function</p>\r\n\r\n<p>Dial Material: Stainless Steel</p>\r\n\r\n<p>Quartz Movement</p>\r\n\r\n<p>Stylish Design</p>\r\n\r\n<p>Case material:Alloy</p>', 'product-images/casio1.jpg', 1, '2018-02-03 12:17:07', '2018-02-03 12:17:07'),
(19, 9, 15, 'Casio Gents watch', 4560.00, 1, 'Dial: Analog\r\nQuartz movement', '<p>Dial: Analog</p>\r\n\r\n<p>Band Material: Leather</p>\r\n\r\n<p>Dial Material: Stainless Steel</p>\r\n\r\n<p>Quartz Movement</p>\r\n\r\n<p>Stylish Design</p>', 'product-images/casio2.jpg', 1, '2018-02-03 12:20:10', '2018-02-03 12:20:10'),
(20, 10, 16, 'Humko Wardrobe (4 Chamber)', 3778.00, 0, 'Material: Plastic \r\n4 chamber drawer', '<p>Material: Plastic</p>\r\n\r\n<p>4 chamber drawer</p>\r\n\r\n<p>High Quality Plastic</p>\r\n\r\n<p>Durable and long lasting product</p>\r\n\r\n<p>Made in Bangladesh</p>', 'product-images/hamko1.jpg', 1, '2018-02-03 12:23:54', '2018-02-03 12:23:54'),
(21, 7, 17, 'Panasonic NR-F603TT Refrigerator', 285000.00, 1, 'Capacity:618L\r\n6 doors', '<p>Capacity:618L</p>\r\n\r\n<p>6 doors</p>\r\n\r\n<p>Magic Top</p>\r\n\r\n<p>Inverter Compressor</p>\r\n\r\n<p>Micro Computer control</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/panasonic1.jpg', 1, '2018-02-03 12:28:26', '2018-02-03 12:28:26'),
(22, 7, 17, 'Panasonic NR-B53V1', 325000.00, 1, 'Capacity:524L\r\nSleek contemporary design', '<p>Capacity:524L</p>\r\n\r\n<p>Sleek contemporary design</p>\r\n\r\n<p>Great water and ice system</p>\r\n\r\n<p>Touch controls</p>\r\n\r\n<p>Inverter Compressor</p>\r\n\r\n<p>Incredibly quiet SKU: PA108HLAAJPKNAFAMZ Weight (kg) 132</p>', 'product-images/panasonic2.jpg', 1, '2018-02-03 12:31:20', '2018-02-03 12:31:20'),
(23, 7, 18, 'Sharp SJ-FP74V-BK Refrigerator(556 L)', 229000.00, 1, 'Capacity:556L\r\nDual Refrigeration System', '<p>Capacity:556L</p>\r\n\r\n<p>Dual Refrigeration System</p>\r\n\r\n<p>Plasmacluster Ion Technology (PCI)</p>\r\n\r\n<p>AG + Nano Deodorizer</p>\r\n\r\n<p>Spacious Interior</p>\r\n\r\n<p>2 years warranty</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/sharp1.jpg', 1, '2018-02-03 12:34:16', '2018-02-03 12:34:16'),
(24, 7, 18, 'Sharp SJ-F70PE-SL', 185000.00, 1, 'Capacity:555L\r\nClear view in refrigerator compartment', '<p>Capacity:555L</p>\r\n\r\n<p>Clear view in refrigerator compartment</p>\r\n\r\n<p>Can stand big dish / central pillar less</p>\r\n\r\n<p>Bottom freezer</p>\r\n\r\n<p>Saving energy, saving money</p>\r\n\r\n<p>Hybrid cooling system</p>\r\n\r\n<p>LCD Display &amp; Control Panel</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/sharp2.jpg', 1, '2018-02-03 12:37:28', '2018-02-03 12:37:28'),
(25, 11, 19, 'Atlas 2 fold umbrella', 250.00, 1, 'Atlas 2 fold umbrella \r\nAltus brand', '<p>Atlas 2 fold umbrella</p>\r\n\r\n<p>Altus brand</p>\r\n\r\n<p>Double layer cloth</p>\r\n\r\n<p>10 stick</p>\r\n\r\n<p>Strong</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/atlas1.jpg', 1, '2018-02-03 12:40:50', '2018-02-03 12:40:50'),
(26, 11, 19, 'Atlas 3 fold umbrella', 340.00, 1, 'Altus brand\r\nDouble layer cloth', '<p>Atlas 3 fold umbrella</p>\r\n\r\n<p>Altus brand</p>\r\n\r\n<p>Double layer cloth</p>\r\n\r\n<p>10 stick</p>\r\n\r\n<p>Strong</p>', 'product-images/atlas2.jpg', 1, '2018-02-03 12:43:40', '2018-02-03 12:43:40'),
(27, 11, 20, 'Rainbow Umbrella', 449.00, 1, 'Rainbow umbrella\r\nMaterial: Polyester Fabric', '<p>Rainbow umbrella</p>\r\n\r\n<p>Material: Polyester Fabric</p>\r\n\r\n<p>Plastic handle&nbsp;</p>\r\n\r\n<p>Manual folding function.</p>\r\n\r\n<p>Free home delivery</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/rainbow1.jpg', 1, '2018-02-03 12:46:58', '2018-02-03 12:46:58'),
(28, 11, 21, 'BMW logo printed umbrella-copy', 980.00, 1, 'very high quality \r\nvery stylish', '<p>very high quality</p>\r\n\r\n<p>very stylish</p>\r\n\r\n<p>Product : BMW umbrella?(live with style)</p>\r\n\r\n<p>Features : Soft touch open button, quick release, diamond cut alumuniam stick, carrying belt, heavy duty spring, Superior grip(anti slip)</p>\r\n\r\n<p>Guarantee: 3 years(Colour)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/bmw1.jpg', 1, '2018-02-03 12:50:12', '2018-02-03 12:50:12'),
(29, 11, 21, 'BMW Motorsport Umbrella - Special', 949.00, 1, 'Color: Navy Blue\r\nLogo: BMW', '<p>BMW Motorsport Umbrella</p>\r\n\r\n<p>Color: Navy Blue</p>\r\n\r\n<p>Logo: BMW</p>\r\n\r\n<p>Powered By: Motorsport</p>\r\n\r\n<p>Special Edition</p>', 'product-images/bmw2.jpg', 1, '2018-02-03 12:53:19', '2018-02-03 12:53:19'),
(30, 12, 22, 'Pink And White Steel Almirah', 21484.00, 1, 'Number of Door Cabinets:Double\r\nSafe Type:Key Lock', '<p>Color: Pink And White</p>\r\n\r\n<p>Number of Door Cabinets:Double</p>\r\n\r\n<p>Safe Type:Key Lock</p>\r\n\r\n<p>Material:Steel</p>\r\n\r\n<p>One year free service</p>', 'product-images/nova1.jpg', 1, '2018-02-03 13:15:46', '2018-02-03 13:15:46'),
(31, 12, 22, 'Stainless steel almirah', 30250.00, 1, 'Color:Gray\r\n\r\nNumber of Door Cabinets:Double', '<p>Color:Gray</p>\r\n\r\n<p>Number of Door Cabinets:Double</p>\r\n\r\n<p>Safe Type:Key Lock</p>\r\n\r\n<p>Material:Stainless Steel</p>\r\n\r\n<p>One year free service</p>', 'product-images/nova2.jpg', 1, '2018-02-03 13:22:27', '2018-02-03 13:22:27'),
(32, 12, 23, 'Bedroom otobi furniture steel almirah', 24000.00, 1, 'Thickness: 0.6-1.0mm \r\nSize : 1800*850*420mm or others', '<p>Thickness: 0.6-1.0mm&nbsp;</p>\r\n\r\n<p>Size : 1800*850*420mm or others</p>\r\n\r\n<p>Metal : top quality cold rolled steel&nbsp;</p>\r\n\r\n<p>Surface : Environmental power coating, electrosatic spying</p>\r\n\r\n<p>5 Years warranty</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/otobi1.jpg', 1, '2018-02-03 13:32:43', '2018-02-03 13:32:43'),
(33, 13, 24, 'Aroma natural room spray- rose', 599.00, 1, 'Quality Aroma. \r\nNatural Perfume Rose.', '<p>Quality Aroma.</p>\r\n\r\n<p>Natural Perfume Rose.</p>\r\n\r\n<p>Air Neutralizer</p>\r\n\r\n<p>Air Sanitzer</p>\r\n\r\n<p>Assainissear-Bactericide</p>\r\n\r\n<p>300 metered Sprays</p>\r\n\r\n<p>Includeing polished or varnished materials.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'product-images/aroma1.jpg', 1, '2018-02-03 13:36:16', '2018-02-03 14:17:05'),
(34, 7, 7, 'hsdgh', 300.00, 2, 'gsghd', '<p>fghs</p>', 'product-images/9-246x186.jpg', 1, '2018-02-06 14:03:01', '2018-02-06 14:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Jamal Uddin', 'mduddin514@gmail.com', '01750789636', 'Nikunja-2', '2018-02-11 08:59:36', '2018-02-11 08:59:36'),
(2, 'Jamal Uddin', 'mduddin514@gmail.com', '01750789636', 'Nikunja-2', '2018-02-11 10:52:39', '2018-02-11 10:52:39'),
(3, 'Mehedi Hasan', 'hasan@mail.com', '1234567', 'Farmgate', '2018-03-04 06:53:02', '2018-03-04 06:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jamal', 'jamal@mail.com', '$2y$10$dNNHigPHzDcQZH79SMJT.OS0N26PvkyxIt3BexEqr1mWnkU6k.ZdW', 'vfxpQbaTsoqHpX3YwuKK2KNjnRSb3McMGfvAyYiKlqzKLOIWmborscrcwuuX', '2018-01-23 06:52:29', '2018-01-23 06:52:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
