-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 06:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(15) NOT NULL,
  `content` varchar(1555) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `content`, `status`) VALUES
(1, 'Welcome to our clothing rental website! We are a team of fashion enthusiasts who believe in the power of sustainable and affordable fashion. Our mission is to help people save money and reduce waste while still looking stylish and trendy.  We understand that not everyone can afford to buy new outfits every season, and that\'s where we come in. Our platform allows you to rent high-quality clothing items for a fraction of their retail price. Whether you\'re looking for a stunning cocktail dress for a special occasion, a professional suit for a job interview, or a trendy outfit for a night out with friends, we\'ve got you covered.  We take great pride in curating our collection, which includes a wide range of styles, sizes, and designers. Our pieces are carefully selected to ensure they are in excellent condition, and we clean and sanitize each item before and after every rental to guarantee the highest level of hygiene.  At our clothing rental website, we are committed to providing our customers with an exceptional rental experience. From our easy-to-use platform to our friendly customer service team, we go above and beyond to make sure you are satisfied with your rental. We believe in creating a more sustainable future for fashion, one rental at a time, and we hope you\'ll join us on this journey.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(24, 'Men', 1),
(26, 'Women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `address`, `email`, `phone`, `status`) VALUES
(2, 'Shop no.12,  4th Floor, ABC Building, Vapi, Gujarat.', 'fashionhub@gmail.com', 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`) VALUES
(33, 16, 'ljfiuhbwejnvkmcwk;evkl', 'sanjan', 1234, 'COD', 2000, 'pending', '', '2023-04-15 07:17:33'),
(34, 16, 'nefuegfulk;eqm', 'sanjan', 1234, 'COD', 2000, 'pending', '', '2023-04-15 08:07:07'),
(35, 16, 'qkfjhugefiuok;eq', 'vapi', 7889, 'COD', 2500, 'pending', '', '2023-04-15 08:09:19'),
(36, 16, 'sanjan', 'vapi', 1234, 'COD', 1500, 'pending', '', '2023-04-17 09:15:03'),
(37, 16, 'bhilad', 'vapi', 4567, 'COD', 5500, 'pending', '', '2023-04-17 09:18:04'),
(38, 16, 'sanjan', 'vapi', 1234, 'COD', 5700, 'pending', '', '2023-04-17 11:16:55'),
(39, 16, 'frggh', 'fh', 1234, 'COD', 5700, 'pending', '', '2023-04-18 06:22:16'),
(40, 16, 'hfgjk', 'vgui', 234, 'COD', 1800, 'pending', '', '2023-04-18 06:23:54'),
(41, 18, 'nefuegfulk;eqm', 'vapi', 234, 'COD', 1800, 'pending', '', '2023-04-18 06:27:24'),
(42, 18, 'sanjan', 'sanjan', 4567, 'COD', 1800, 'pending', '', '2023-04-18 06:48:18'),
(43, 17, 'sanjan', 'sanjan', 123, 'COD', 1800, 'pending', '', '2023-04-18 09:20:18'),
(44, 16, 'sanjan', 'vapi', 2345, 'COD', 1800, 'pending', '', '2023-04-21 06:58:54'),
(45, 16, 'sdd', 'sss', 2344, 'COD', 4600, 'pending', '', '2023-04-21 08:07:50'),
(46, 16, 'sdd', 'sss', 2344, 'COD', 4600, 'pending', '', '2023-04-21 08:08:52'),
(47, 16, 'sdd', 'sss', 2344, 'COD', 4600, 'pending', '', '2023-04-21 08:09:21'),
(48, 16, 'nefuegfulk;eqm', 'fh', 234, 'COD', 4000, 'pending', '', '2023-04-21 08:10:08'),
(49, 16, 'fghjk', 'dfghjk', 34567, 'COD', 3700, 'pending', '', '2023-04-21 08:13:36'),
(50, 16, 'asdfgh', 'sdfghjkl', 23456, 'COD', 3500, 'pending', '', '2023-04-21 08:17:48'),
(51, 16, 'sdfghj', 'xcvbnm', 345678, 'COD', 1400, 'pending', '', '2023-04-21 08:36:36'),
(52, 16, 'sdfghj', 'sdfghjk', 1234, 'COD', 2200, 'pending', '', '2023-04-21 11:27:24'),
(53, 16, 'sdfghj', 'cvbnm,', 345678, 'COD', 1800, 'pending', '', '2023-04-21 08:02:03'),
(54, 16, 'dfghjk', 'wertyuio', 12345, 'COD', 5500, 'pending', '', '2023-04-22 06:11:13'),
(55, 19, 'vapi', 'vapi', 1234, 'COD', 1400, 'pending', '2', '2023-04-24 06:36:18'),
(56, 19, 'ertyui', 'vapi', 4568, 'COD', 2400, 'pending', '1', '2023-04-24 06:36:50'),
(57, 21, 'umergam', 'vapi', 7865, 'COD', 1600, 'pending', '1', '2023-04-24 06:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `price`) VALUES
(42, 33, 66, 2000),
(43, 34, 66, 2000),
(44, 35, 67, 2500),
(45, 36, 130, 5300),
(46, 36, 129, 5700),
(47, 36, 109, 1500),
(48, 37, 127, 5500),
(49, 38, 129, 5700),
(50, 39, 128, 3200),
(51, 39, 129, 5700),
(52, 40, 104, 1800),
(53, 41, 104, 1800),
(54, 42, 104, 1800),
(55, 43, 111, 2400),
(56, 43, 104, 1800),
(57, 44, 104, 1800),
(58, 47, 125, 4600),
(59, 48, 122, 4000),
(60, 49, 97, 3700),
(61, 50, 92, 3500),
(62, 51, 100, 1400),
(63, 52, 103, 2200),
(64, 53, 69, 1800),
(65, 54, 127, 5500),
(66, 55, 100, 1400),
(67, 56, 111, 2400),
(68, 57, 119, 1600);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'pending'),
(2, 'complete'),
(3, 'canceled');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `sub_categories_id` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `pname`, `size`, `price`, `image`, `short_desc`, `description`, `best_seller`, `status`) VALUES
(68, '24', '71', 'Navy Blue Dhoti Kurta', 'L', 2000, '362092641_dk7.jpg', 'Designer Collection Navy Dhoti Kurta', 'Rent Designer Collection Navy Blue Dhoti Kurta Online from Fashion Hub at best price. Select a wide range of designer kurta Dhoti , pathani suit for men, wedding kurta, ethnic kurta set, sangeet kurta & more.', 0, 1),
(69, '24', '71', 'Black Printed Dhoti Kurta', 'M', 1800, '438524087_dk2.jpg', 'Black Printed Dhoti Kurta for men', 'Rent Designer Collection Black Dhoti Kurta Online from Fashion Hub at best price. Select a wide range of designer kurta Dhoti , pathani suit for men, wedding kurta, ethnic kurta set, sangeet kurta & more.', 1, 1),
(70, '24', '71', 'Dhoti Kurta with koti', 'XL', 1500, '576323394_dk6.jpg', 'Designer collection Dhoti Kurta with Floral Chiku Koti', 'Kurta Pajama - Check out our exclusive collection of Mens kurta pajama online. Rent stylish Dhoti kurta sets at best price from the Fashion Hub.', 0, 1),
(71, '24', '71', 'Royal Dhoti-Kurta', 'M', 2000, '621913126_dk5.jpg', 'Men\'s Ethnic Slik Dhoti Kurta', 'Rent Designer Collection Chiku Dhoti Kurta Online from Fashion Hub at best price. Select a wide range of designer kurta Dhoti , pathani suit for men, wedding kurta, ethnic kurta set, sangeet kurta & more.', 0, 1),
(72, '24', '71', 'Green Ethnic Dhoti kurta', 'XL', 2200, '558824870_dk8.jpg', 'Exclusive Green Ethnic Dhoti kurta for men', 'Rent Designer Collection Chiku Dhoti Kurta Online from Fashion Hub at best price. Select a wide range of designer kurta Dhoti , pathani suit for men, wedding kurta, ethnic kurta set, sangeet kurta & more.', 1, 1),
(73, '24', '71', 'Floral', 'XXL', 2500, '488369956_dk3.jpg', 'Designer Collection of men\'s Floral Dhoti Kurta', 'Rent Designer Collection Chiku Dhoti Kurta Online from Fashion Hub at best price. Select a wide range of designer kurta Dhoti , pathani suit for men, wedding kurta, ethnic kurta set, sangeet kurta & more.', 0, 1),
(74, '24', '71', 'Exclusive Chiku Kurta', 'L', 1700, '667007838_dk4.jpg', 'Men\'s Exclusive Chiku Kurta', 'Rent Designer Collection Chiku Dhoti Kurta Online from Fashion Hub at best price. Select a wide range of designer kurta Dhoti , pathani suit for men, wedding kurta, ethnic kurta set, sangeet kurta & more.', 0, 1),
(75, '24', '72', 'Men\'s Suit Set', 'L', 1000, '984691527_suit8.jpg', 'Designer Men\'s Suit Set', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Kurta & more at Fashion Hub.', 0, 1),
(76, '24', '72', 'Black Floral Suit', 'L', 1200, '583580450_suit3.jpg', 'Exclusive Black Floral Suit For Men', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Kurta & more at Fashion Hub.', 0, 1),
(77, '24', '72', 'Royal Blue Suit', 'M', 1200, '378400232_suit7.jpg', 'Designer Collection of Royal Blue Suit For Men', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Dhoti-Kurta & more at  Fashion Hub.', 1, 1),
(78, '24', '72', 'Green Suit', 'L', 1800, '182683420_suit5.jpg', 'Exclusive Green Suit for Men', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Dhoti-Kurta & more at Fashion Hub.', 1, 1),
(79, '24', '72', 'White Floral Suit', 'M', 1000, '612063135_345181327_suit6.jpg', 'Chiku Suit for Men', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Dhoti-Kurta & more at Fashion Hub.', 0, 1),
(80, '24', '72', 'Black Suit', 'L', 1500, '498766666_suit2.jpg', 'Designer Black Suit for Men', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Dhoti-Kurta & more at Fashion Hub.', 1, 1),
(81, '24', '72', 'Designer Suit', 'XXL', 2500, '748835817_suit4.jpg', 'Exclusive Men\'s Floral Designer Suit', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Dhoti-Kurta & more at Fashion Hub.', 1, 1),
(82, '24', '72', 'Grey Suit', 'XL', 1500, '838317223_suit1.jpg', 'Designer Collection For Men\'s Suit', 'Rent our exclusive collection of designer wear for men featuring luxury designs including Sherwanis, Dhoti-Kurta & more at Fashion Hub.', 1, 1),
(83, '24', '74', 'Black Designer Kurta', 'L', 1000, '853734007_kurta1.jpg', 'Black Designer Kurta for Men', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 1, 1),
(84, '24', '74', 'Royal Printed Kurta', 'M', 1800, '616532714_kurta2.jpg', 'Royal Printed Kurta', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 1, 1),
(85, '24', '74', 'Floral Black Kurta', 'XXL', 2000, '494573748_kurta3.jpg', 'Exclusive Floral Black Kurta For Men', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 0, 1),
(86, '24', '74', 'White Chikenkari Kurta', 'L', 2000, '933028498_kurta4.jpg', 'Designer Chikenkari White Kurta for Men', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 1, 1),
(87, '24', '74', 'Chikenkari Kurta with Koti', 'XL', 2200, '823757643_kurta5.jpg', 'Designer Chikenkari Kurta With Koti', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 1, 1),
(88, '24', '74', 'Ethnic Pink Kurta', 'XXL', 1900, '551959621_kurta6.jpg', 'Ethnic Pink Kurta For Men', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 0, 1),
(89, '24', '74', 'Designer Kurta', 'XXL', 1700, '530232679_kurta7.jpg', 'Designer Kurta For Men', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 0, 1),
(90, '24', '74', 'Royal Kurta', 'XL', 2500, '549123388_kurta8.jpg', 'Royal Blue Kurta for Men', 'In India, A man wears designer kurta pajama, and a woman wears a saree or lehenga at weddings. Here are the best designs of kurta pajama for marriage.', 1, 1),
(92, '24', '73', 'Velvet Sherwani', 'XL', 3500, '977182995_shervani8.jpg', 'Exclusive Velvet Sherwani for Men', 'The wedding Sherwani designs for groom are also given embroidery designs which makes it compulsory to be made in velvet, cotton or cotton silk material. Rent it form our shop at low price.', 1, 1),
(93, '24', '73', 'Royal Sherwani', 'L', 4000, '667525532_shervani7.jpg', 'Designer Royal Sherwani for Men', 'The wedding Sherwani designs for groom are also given embroidery designs which makes it compulsory to be made in velvet, cotton or cotton silk material. Rent it form our shop at low price.', 1, 1),
(94, '24', '73', 'Sky Blue Sherwani', 'XXL', 3400, '139777117_shervani1.jpg', 'Exclusive Sky Blue Sherwani for Men', 'The wedding Sherwani designs for groom are also given embroidery designs which makes it compulsory to be made in velvet, cotton or cotton silk material. Rent it form our shop at low price.', 1, 1),
(95, '24', '73', 'Floral Peach Sherwani', 'M', 3700, '436487108_shervani2.jpg', 'Designer Floral Peach Sherwani For Men', 'The wedding Sherwani designs for groom are also given embroidery designs which makes it compulsory to be made in velvet, cotton or cotton silk material. Rent it form our shop at low price.', 0, 1),
(96, '24', '73', 'Royal Designer Sherwani', 'L', 4000, '680572205_shervani6.jpg', 'Designer Royal Sherwani For Men', 'The wedding Sherwani designs for groom are also given embroidery designs which makes it compulsory to be made in velvet, cotton or cotton silk material. Rent it form our shop at low price.', 1, 1),
(97, '24', '73', 'Blue Sherwani', 'XL', 3700, '527256929_shervani3.jpg', 'Exlusive Blue Sherwani for Men', 'The wedding Sherwani designs for groom are also given embroidery designs which makes it compulsory to be made in velvet, cotton or cotton silk material. Rent it form our shop at low price.', 1, 1),
(98, '26', '67', 'Pink Gown', 'M', 2000, '616054983_161419662_gown3.jpg', 'Designer Pink Gown for Women', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Latest Gowns, Saree, Lehenga & more from our shop.', 0, 1),
(99, '26', '67', 'Long Green Gown', 'L', 1200, '814059630_gown4.jpg', 'Long Green Dress Gown for Women.', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(100, '26', '67', 'Net Gown', 'XL', 1400, '330753264_gown8.jpg', 'Exclusive Long Net Gown for Women.', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(101, '26', '67', 'Green Gown', 'M', 1500, '413086368_gown7.jpg', 'Designer Green Gown for Women', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(102, '26', '67', 'Net Sky Blue Gown', 'L', 2100, '365264477_gown1.jpg', 'Designer Layered Sky Blue Gown for Women', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(103, '26', '67', 'Red Gown', 'XL', 2200, '672558018_gown2.jpg', 'Exclusive Long Red Gown for Women', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(104, '26', '67', 'Purple Gown', 'XL', 1800, '559718203_gown5.jpg', 'Designer Purple Gown for Women', 'Very attractive beautiful & stylish party wear long gown. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(105, '26', '68', 'Royal Blue Saree', 'M', 2000, '993851295_saree4.jpg', 'Designer Royal Blue Saree & Blouse for Women', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(106, '26', '68', 'Beautiful Net Saree', 'M', 1800, '758911831_saree6.jpg', 'Beautiful Saree & Blouse for Women.', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(107, '26', '68', 'Embroidery Blue Blouse & Saree', 'M', 2200, '882352624_saree7.jpg', 'Net Saree with Heavy Embroidery Blouse', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(108, '26', '68', 'Red Saree', 'M', 1700, '850357281_saree3.jpg', 'Beautiful Red Saree & Blouse', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(109, '26', '68', 'Black Saree', 'M', 1500, '310417529_saree1.jpg', 'Designer Black Saree & Blouse for Women.', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(110, '26', '68', 'Layered Orange Saree', 'M', 2100, '672470310_saree5.jpg', 'Exclusive Layered Saree & Blouse for Women', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(111, '26', '68', 'Layered Yellow Saree', 'M', 2400, '361504751_saree8.jpg', 'Designer Layered Saree & Blouse for Women.', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(112, '26', '68', 'Royal Saree', 'M', 3500, '133472882_saree2.jpg', 'Exclusive Royal Saree & Blouse for Women.', 'Very attractive beautiful & stylish party wear Saree. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(113, '26', '70', 'Printed Indo-Western', 'XL', 1200, '654174545_iw1.jpg', 'Printed Indo-Western for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(114, '26', '70', 'Yellow Indo-Western', 'XL', 1700, '192740790_iw3.jpg', 'Designer Indo-Western Wear with koti for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(115, '26', '70', 'Black Floral Indo-Westren', 'L', 2000, '832905793_iw6.jpg', 'Designer Floral Black Indo-Western Party Wear for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(116, '26', '70', 'Green Indo-Western', 'XXL', 1500, '126610121_iw4.jpg', 'Designer Green Indo-Western Party Wear for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(117, '26', '70', 'Unique Indo-Western', 'M', 1750, '375682358_iw8.jpg', 'Unique Indo-Western Party Wear for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(118, '26', '70', 'Grey Indo-Western', 'XL', 2200, '682129989_iw2.jpg', 'Exclusive Grey Indo-Western Party Wear for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(119, '26', '70', 'Designer Indo-western', 'L', 1600, '730881867_iw7.jpg', 'Designer Indo-Western Party Wear for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(120, '26', '70', 'Blue Indo-Western', 'XL', 3000, '666028859_iw5.jpg', 'Exclusive Indo-Western Party Wear for Women.', 'Very attractive beautiful & stylish party wear Indo-Western for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(121, '26', '69', 'Green Lehenga', 'XL', 3500, '722644712_gc4.jpg', 'Designer Green Lehenga', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(122, '26', '69', 'Yellow Lehenga', 'L', 4000, '901072244_gc2.jpg', 'Designer Yellow Lehenga for Women', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(123, '26', '69', 'Red Lehenga', 'M', 4300, '816248905_gc8.jpg', 'Designer Red Lehenga', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(124, '26', '69', 'Designer Lehenga', 'L', 4200, '192971919_gc7.jpg', 'Designer Lehenga for Women', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 0, 1),
(125, '26', '69', 'Royal Lehenga', 'L', 4600, '441955887_gc6.jpg', 'Exclusive Royal Lehenga', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(126, '26', '69', 'Sky Blue Lehenga', 'L', 5100, '272833337_gc5.jpg', 'Designer Sky Blue Lehenga for Women', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(127, '26', '69', 'Printed Blue Lehenga', 'M', 5500, '279117829_gc1.jpg', 'Exclusive Printed Blue Lehenga for Women', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(128, '26', '67', 'Layered Gown', 'XL', 3200, '947949502_gown6.jpg', 'Exclusive Designer Layered Gown', 'Very attractive beautiful & stylish party wear Lehenga for Women. Rent Popular designs Gown, Saree, Lehenga & more from our Shop.', 1, 1),
(129, '24', '73', 'Royal Wedding Sherwani', 'L', 5700, '436610887_shervani5.jpg', 'Exclusive Royal Look Sherwani for Men', 'Rent Royal look Shrewani , Dhoti-Kurta, & more from our Shop.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(15) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `sub_categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(67, '26', 'Gown', 1),
(68, '26', 'Saree & Blouses', 1),
(69, '26', 'Lehenga', 1),
(70, '26', 'Indo-Western', 1),
(71, '24', 'Dhoti-Kurta', 1),
(72, '24', 'Suit', 1),
(73, '24', 'Sherwani', 1),
(74, '24', 'Kurta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cname`, `password`, `email`, `mobile`, `added_on`) VALUES
(16, 'disha', '123', 'disha@gmail.com', '3425167876', '2023-03-14 09:07:36'),
(17, 'yaxita', 'yaxita', 'yaxita@gmail.com', '3545768345', '2023-04-08 07:19:01'),
(18, 'divya', 'divya', 'divya@gmail.com', '9876587365', '2023-04-08 07:24:42'),
(19, 'laxmi', 'laxmi', 'laxmi@gmail.com', '3476287649', '2023-04-08 07:28:15'),
(20, 'Mansha', 'mansha', 'mansha@gmail.com', '4567895643', '2023-04-24 06:46:37'),
(21, 'jinal', 'jinal', 'jinal@gmail.com', '4567895643', '2023-04-24 06:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact`
--

CREATE TABLE `user_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contact`
--

INSERT INTO `user_contact` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(7, 'disha', 'disha@gmail.com', '4645868343', 'hello', '2023-04-08 06:36:13'),
(9, 'Divya', 'divya@gmail.com', '7895643765', 'Hii there!!!', '2023-04-10 06:22:56'),
(10, 'jinal', 'jinal@gmail.com', '4645868343', 'heloooooooo', '2023-04-18 06:45:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contact`
--
ALTER TABLE `user_contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_contact`
--
ALTER TABLE `user_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
