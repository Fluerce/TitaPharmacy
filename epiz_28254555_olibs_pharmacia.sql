-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql307.epizy.com
-- Generation Time: Mar 31, 2021 at 12:39 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_28254555_olibs_pharmacia`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cash` int(11) NOT NULL DEFAULT '0',
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `role`, `name`, `username`, `password`, `cash`, `gender`, `address`, `birthdate`) VALUES
(1, 'admin001@gmail.com', 'admin', 'admin', 'admin-head', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 0, 'none', 'NA', '2021-03-01'),
(2, 'vicente0004@yahoo.com', 'user', 'Vicente Cadiz', 'Fluerce', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 20736, 'male', 'NA', '2021-01-05'),
(4, 'marites@gmail.com', 'user', 'Marites Buntes', 'xX_marites_Xx', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', 9206, 'none', 'sa puso mo', '2021-03-30'),
(3, 'Euphonnia@gmail.com', 'user', 'Eup honnia', 'Euphonnia', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 0, 'female', 'over there', '2021-03-10'),
(5, 'jstnrosecale@gmail.com', 'user', 'Tine Cale', 'jstnrose', '935962c30ff4b1a5e2a6a3950a2ac9eb26502d39', 1222, 'female', '118 Quezon St., Kaparangan, Orani, Bataan', '2000-01-30'),
(6, 'oliber.deleon18@gmail.com', 'user', 'Oliber De Leon', 'oliberdeleon', '18038e370e96cd105cb4ee7d63a35b6f09577679', 400, 'male', 'MOONWALK VILLAGE, TALON SINGKO', '2000-03-30'),
(7, 'vqiicadiz@gmail.com', 'user', 'Vic Cadiz', 'Fluerce', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 8640, 'female', 'NA', '2021-03-17'),
(8, 'test0002@gmail.com', 'user', '511', 'Fluerce', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 770, 'none', 'aaa', '2021-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_status` varchar(255) NOT NULL,
  `delivery_quantity` int(11) NOT NULL,
  `delivery_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `user_id`, `delivery_status`, `delivery_quantity`, `delivery_price`) VALUES
(1, 2, 'DELIVERED', 3, 3780),
(2, 2, 'SHIPPING', 2, 1370),
(3, 2, 'PENDING', 3, 1314),
(4, 2, 'SHIPPING', 2, 1010),
(5, 4, 'PENDING', 1, 825),
(6, 7, 'DELIVERED', 5, 1360),
(7, 5, 'PENDING', 3, 778),
(8, 2, 'DELIVERED', 1, 850),
(9, 6, 'SHIPPING', 2, 600),
(10, 8, 'PENDING', 1, 230),
(11, 2, 'SHIPPING', 1, 450);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_division` int(11) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_sub` int(11) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_division`, `product_category`, `product_sub`, `product_brand`, `product_stock`, `product_price`, `product_image`) VALUES
(1, 1, 1, 1, 'Sebamed - Feminine Wash', 50, 750, 'images\\products\\Personal\\Sebamed.jpg'),
(2, 1, 1, 1, 'Betadine - Calendula', 3, 230, 'images\\products\\Personal\\Betadine.jpg\r\n'),
(3, 1, 1, 1, 'Betadine - Witch Hazel', 72, 257, 'images\\products\\Personal\\Betadine2.jpg'),
(4, 2, 3, 2, 'Amoxil', 25, 70, 'images\\products\\Health Care\\Amoxil.png'),
(5, 2, 1, 1, 'Claritin', 4, 370, 'images\\products\\Health Care\\Claritin.png'),
(6, 2, 1, 1, 'Benadryl AH', 45, 1000, 'images\\products\\Health Care\\Benadryl \r\nAH.png'),
(7, 2, 1, 1, 'Zyrtec', 39, 580, 'images\\products\\Health Care\\Zyrtec.png'),
(8, 2, 1, 2, 'Decolgen Forte', 30, 120, 'images\\products\\Health Care\\Decolgen \r\nForte.png'),
(9, 2, 1, 2, 'Expel OD', 8, 615, 'images\\products\\Health Care\\Expel OD.png'),
(10, 2, 1, 2, 'Tuseran Night', 28, 126, 'images\\products\\Health Care\\Tuseran \r\nNight.png'),
(11, 2, 1, 3, 'Advil', 36, 42, 'images\\products\\Health Care\\Advil.png'),
(12, 2, 1, 3, 'Alaxan FR', 15, 65, 'images\\products\\Health Care\\Alaxan \r\nFR.png'),
(13, 2, 1, 3, 'Medicol Advance', 15, 88, 'images\\products\\Health Care\\Medicol \r\nAdvance.png'),
(14, 2, 2, 1, 'Benzac Spot Treatments', 65, 420, 'images\\products\\Health \r\nCare\\Benzac Spot Treatments.png'),
(15, 2, 2, 1, 'Top O', 10, 375, 'images\\products\\Health Care\\Top O.png'),
(16, 2, 2, 1, 'Trulife Collagen + Vitamins', 35, 180, 'images\\products\\Health \r\nCare\\Trulife Collagen + Vitamins.png'),
(17, 2, 2, 2, 'Myra Ultimate', 45, 180, 'images\\products\\Health Care\\Myra \r\nUltimate.png'),
(18, 2, 2, 2, 'NU Essence', 45, 901, 'images\\products\\Health Care\\NU \r\nEssence.png'),
(19, 2, 2, 2, 'Potencee', 15, 234, 'images\\products\\Health \r\nCare\\Potencee.png'),
(20, 2, 2, 3, 'Cosmo Skin', 31, 124, 'images\\products\\Health Care\\Cosmo \r\nSkin.png'),
(22, 2, 2, 3, 'Snow Caps', 50, 678, 'images\\products\\Health Care\\Snow \r\nCaps.png'),
(23, 2, 3, 1, 'Celestamine', 50, 222, 'images\\products\\Health \r\nCare\\Celestamine.png'),
(24, 2, 3, 1, 'Claricort', 12, 67, 'images\\products\\Health \r\nCare\\Claricort.png'),
(25, 2, 3, 1, 'Livostin', 20, 60, 'images\\products\\Health \r\nCare\\Livostin.png'),
(26, 1, 5, 1, 'Milea Propolis Throat Spray', 50, 576, 'images/products/Personal/OralCare/Milea.jpg'),
(27, 2, 3, 2, 'Bactiv', 7, 90, 'images\\products\\Health Care\\Bactiv.png'),
(28, 2, 3, 2, 'Ceporex', 10, 90, 'images\\products\\Health Care\\Ceporex.png'),
(29, 2, 3, 3, 'Arcoxia', 24, 19, 'images\\products\\Health Care\\Arcoxia.png'),
(30, 2, 3, 3, 'Celcoxx', 15, 55, 'images\\products\\Health Care\\Celcoxx.png'),
(31, 2, 3, 3, 'Dolfenal', 65, 90, 'images\\products\\Health Care\\Dolfenal.png'),
(32, 2, 4, 1, 'Athena', 64, 1050, 'images\\products\\Health Care\\Athena.png'),
(33, 2, 4, 1, 'Enervon HP', 9, 590, 'images\\products\\Health Care\\Enervon \r\nHP.png'),
(34, 2, 4, 1, 'Liverprime', 8, 890, 'images\\products\\Health \r\nCare\\Liverprime.png'),
(35, 1, 5, 1, 'Swish Mouthwash', 50, 199, 'images/products/Personal/OralCare/Swish.jpg'),
(36, 1, 5, 1, 'Tongue Scaper', 50, 66, 'images/products/Personal/OralCare/Tongue.jpg'),
(37, 1, 1, 1, 'pH Care -Cool Wind', 16, 177, 'images/products/Personal/phcare2.jpg'),
(38, 1, 1, 2, 'Whisper - Cottony Long ', 50, 53, 'images/products/Personal/Whisper.jpg'),
(39, 1, 1, 1, 'Easyflo - Menstrual Cup', 9, 46, 'images/products/Personal/Easyflo.jpg'),
(40, 1, 1, 2, 'Kotex - Overnight Pad', 50, 130, 'images/products/Personal/Kotex.jpg'),
(41, 1, 1, 2, 'Ladouce - Tampons', 10, 589, 'images/products/Personal/Ladouce.jpg'),
(42, 1, 1, 1, 'Lubie - Water-Based Lubricant', 48, 299, 'images/products/Personal/Lubie.jpg'),
(43, 1, 1, 2, 'ph Care - Wipes', 40, 35, 'images/products/Personal/phcare.jpg'),
(44, 1, 2, 1, 'Cream Silk - Damage Control', 13, 59, 'images/products/Personal/HairCare/Conditioner/CreamSilk.jpg'),
(45, 1, 2, 1, 'Skin Genie - Hair Spa', 32, 450, 'images/products/Personal/HairCare/Conditioner/SkinGenie.jpg'),
(46, 1, 2, 1, 'Zenutrients - Honey and Coconut', 50, 399, 'images/products/Personal/HairCare/Conditioner/Zenutrients.jpg'),
(47, 1, 2, 2, 'Dove - Nourishing Oil', 30, 89, 'images/products/Personal/HairCare/Shampoo/Dove.jpg'),
(48, 1, 2, 2, 'Tresemme - Color Radiance', 50, 299, 'images/products/Personal/HairCare/Shampoo/Tresemme.jpg'),
(49, 1, 2, 2, 'Zenutrients - Tea Tree', 25, 199, 'images/products/Personal/HairCare/Shampoo/Zen.jpg'),
(50, 1, 2, 3, 'L Oreal - Hair Spa', 18, 499, 'images/products/Personal/HairCare/Treatments/L_Oreal.jpg'),
(51, 1, 2, 3, 'Milea - Hair Butter', 50, 105, 'images/products/Personal/HairCare/Treatments/Milea.jpg '),
(52, 1, 2, 3, 'Pantene - Hair Mask ', 20, 199, 'images/products/Personal/HairCare/Treatments/Pantene.jpg '),
(53, 1, 3, 1, 'Caronia', 50, 33, 'images/products/Personal/Sanitizer/Caronia.jpg'),
(54, 1, 3, 1, 'Kiele', 50, 69, 'images/products/Personal/Sanitizer/Kiele.jpg'),
(55, 1, 3, 1, 'N2N - Lavender ', 25, 79, 'images/products/Personal/Sanitizer/N2N.jpg'),
(56, 1, 3, 1, 'Nippon Esthetic PHIL', 10, 35, 'images/products/Personal/Sanitizer/Nippon.jpg'),
(57, 1, 3, 1, 'Oxecure - High Five', 34, 100, 'images/products/Personal/Sanitizer/Oxecure.jpg'),
(58, 1, 3, 1, 'Sacred', 37, 149, 'images/products/Personal/Sanitizer/Sacred.jpg'),
(59, 1, 3, 1, 'Skin Genie - Alcohol', 25, 85, 'images/products/Personal/Sanitizer/SkinGenie.jpg'),
(60, 1, 3, 1, 'Zen Nutrients - Lavender', 14, 120, 'images/products/Personal/Sanitizer/Zen.jpg'),
(61, 1, 4, 1, 'Cacao Body Butter w/ Coconut Oil', 10, 353, 'images/products/Personal/Ointments _ Balms/Cacao.jpg'),
(62, 1, 4, 1, 'Calmoseptine Ointment', 10, 600, 'images/products/Personal/Ointments _ \r\nBalms/Calmo.jpg'),
(63, 1, 4, 1, 'Ginger Pain Itch Relief Balm', 19, 150, 'images/products/Personal/Ointments _ Balms/Ginger.jpg\r\n'),
(64, 1, 4, 1, 'Lucas Papaw Lip Apllicator', 45, 338, 'images/products/Personal/Ointments _ Balms/Lucas1.jpg'),
(65, 1, 4, 1, 'Mille Fluers Body Balm', 45, 995, 'images/products/Personal/Ointments _ \r\nBalms/Mille.jpg'),
(66, 1, 4, 1, 'Province Healing Eczema Balm', 15, 280, 'images/products/Personal/Ointments _ Balms/Province.jpg'),
(67, 1, 4, 1, 'Vco Balm', 67, 268, 'images/products/Personal/Ointments _ \r\nBalms/Vco.jpg'),
(68, 1, 4, 1, 'Waterful Aloe Soothing Gel', 64, 299, 'images/products/Personal/Ointments _ Balms/Watergel.jpg'),
(69, 1, 4, 1, 'Wonder Blanche Balm', 30, 480, 'images/products/Personal/Ointments _ \r\nBalms/Wonder.jpg'),
(70, 1, 5, 1, 'Bamboo Toothbrush', 57, 218, 'images/products/Personal/OralCare/Bamboo.jpg'),
(71, 1, 5, 1, 'Colgate Activate Salt', 50, 159, 'images/products/Personal/OralCare/Colgate.jpg'),
(72, 1, 5, 1, 'Dentiste Dental Floss', 4, 105, 'images/products/Personal/OralCare/Dentiste1.jpg'),
(73, 1, 5, 1, 'Human Nature Mouthwash', 75, 287, 'images/products/Personal/OralCare/Human.jpg'),
(74, 1, 5, 1, 'Listerine Healthy White', 9, 267, 'images/products/Personal/OralCare/Listerine.jpg'),
(75, 1, 5, 1, 'Tiny Buds Orange Navy', 50, 45, 'images/products/Personal/OralCare/Tiny.jpg'),
(76, 4, 1, 1, 'MamyPoko XL', 49, 500, 'images/products/Babies and Kids/MamyPoko \r\nXL.jpg'),
(77, 4, 1, 1, 'Premium Baby Wipes', 75, 150, 'images/products/Babies and Kids/Premium \r\nBaby Wipes.jpg'),
(78, 4, 1, 1, 'Water Absorbent Bedmats', 75, 150, 'images/products/Babies and \r\nKids/Water Absorbent Bedmats.jpg'),
(79, 4, 1, 1, 'Cotsheet 45x60cm', 43, 890, 'images/products/Babies and Kids/Cotsheet \r\n45x60cm.jpg'),
(80, 4, 1, 1, 'Diaper Taped - Small', 43, 50, 'images/products/Babies and Kids/Diaper \r\nTaped - Small.jpg'),
(81, 4, 1, 1, 'Sweetbaby Active Dry Pants Large', 54, 90, 'images/products/Babies and \r\nKids/Sweetbaby Active Dry Pants Large.jpg'),
(82, 4, 1, 2, 'Promil Four', 52, 890, 'images/products/Babies and Kids/Promil \r\nFour.jpg'),
(83, 4, 1, 2, 'Promil Gold Four', 542, 1090, 'images/products/Babies and Kids/Promil \r\nGold Four.jpg'),
(84, 4, 1, 2, 'Wyeth Promil Organic', 65, 1190, 'images/products/Babies and Kids/Wyeth \r\nPromil Organic.jpg'),
(85, 4, 1, 3, 'Natural Bottle Wash', 65, 200, 'images/products/Babies and Kids/Natural \r\nBottle Wash.jpg'),
(86, 4, 1, 3, 'Roll Up Bib', 69, 80, 'images/products/Babies and Kids/Roll Up \r\nBib.jpg'),
(87, 4, 1, 3, 'Silicone Baby Bottle', 691, 290, 'images/products/Babies and \r\nKids/Silicone Baby Bottle.jpg'),
(88, 5, 1, 1, 'Almond Breeze Original', 685, 99, 'images/products/Healthy \r\nOptions/Almond Breeze Original.jpg'),
(89, 5, 1, 1, 'Clean N Green Detox Tea', 23, 150, 'images/products/Healthy \r\nOptions/Clean N Green Detox Tea.jpg'),
(90, 5, 1, 1, 'Gluta-lipo', 87, 500, 'images/products/Healthy Options/Gluta-lipo.jpg'),
(91, 5, 1, 1, 'Honey Citron Tea', 98, 10, 'images/products/Healthy Options/Honey Citron \r\nTea.jpg'),
(92, 5, 1, 1, 'Kaffea Coffee', 12, 150, 'images/products/Healthy Options/Kaffea \r\nCoffee.jpg'),
(93, 5, 1, 1, 'Matcha Green Tea Powder', 121, 200, 'images/products/Healthy \r\nOptions/Matcha Green Tea Powder.jpg'),
(94, 5, 1, 2, 'Biopro', 121, 690, 'images/products/Healthy Options/Biopro.jpg'),
(95, 5, 1, 2, 'DigestiPro', 99, 570, 'images/products/Healthy Options/DigestiPro.jpg'),
(96, 5, 1, 2, 'Momma', 122, 800, 'images/products/Healthy Options/Momma.jpg'),
(97, 5, 1, 3, 'Chia Seeds', 123, 100, 'images/products/Healthy Options/Chia \r\nSeeds.jpg'),
(98, 5, 1, 3, 'Turmeric', 22, 150, 'images/products/Healthy Options/Turmeric.jpg'),
(99, 5, 1, 3, 'Walnuts', 21, 210, 'images/products/Healthy Options/Walnuts.jpg'),
(100, 3, 1, 1, 'Licorice - Balancing Toner', 87, 999, 'images/products/Beauty/CleanserToner/1.jpg'),
(101, 3, 1, 1, 'Good Morning Cleanser', 50, 109, 'images/products/Beauty/CleanserToner/2.jpg'),
(102, 3, 1, 1, 'BanilaCo Original', 10, 660, 'images/products/Beauty/CleanserToner/3.jpg'),
(103, 3, 1, 1, 'Joseon Bubble Toner', 25, 895, 'images/products/Beauty/CleanserToner/4.jpg'),
(104, 3, 1, 1, 'Cetaphil Gentle Cleanser', 50, 80, 'images/products/Beauty/CleanserToner/5.jpg'),
(105, 3, 1, 1, 'Neogen Real Foam', 10, 900, 'images/products/Beauty/CleanserToner/6.jpg'),
(106, 3, 2, 1, 'Mizon Repair Eye Cream', 5, 400, 'images/products/Beauty/EyeCare/1.jpg'),
(107, 3, 2, 1, 'Pixi Beauti-Eye', 5, 1209, 'images/products/Beauty/EyeCare/2.jpeg'),
(108, 3, 2, 1, 'Wildleaf Infinity Leaf', 15, 690, 'images/products/Beauty/EyeCare/3.jpg'),
(109, 3, 3, 1, 'Aqua Jelly', 13, 499, 'images/products/Beauty/Moisturizer/1.jpg'),
(110, 3, 3, 1, 'Cerave Cream', 45, 499, 'images/products/Beauty/Moisturizer/2.jpg'),
(111, 3, 3, 1, 'Midnight Blue Cream', 4, 1625, 'images/products/Beauty/Moisturizer/3.jpg'),
(112, 3, 3, 1, 'IWhite Vita Aqua ', 21, 195, 'images/products/Beauty/Moisturizer/4.jpg'),
(113, 3, 3, 1, 'Nature Republic Gel', 50, 175, 'images/products/Beauty/Moisturizer/5.jpg'),
(114, 3, 3, 1, 'Ponds White Milk Cream', 68, 299, 'images/products/Beauty/Moisturizer/6.jpg'),
(115, 3, 4, 1, 'Cerave Retinol Serum', 26, 630, 'images/products/Beauty/SerumEssence/1.jpg'),
(116, 3, 4, 1, 'Its Skin VC', 60, 310, 'images/products/Beauty/SerumEssence/2.jpg'),
(117, 3, 4, 1, 'IWhite Glow Booster', 120, 55, 'images/products/Beauty/SerumEssence/3.jpg'),
(118, 3, 4, 1, 'Neneng Fairy Glow', 34, 250, 'images/products/Beauty/SerumEssence/4.jpg'),
(119, 3, 4, 1, 'Hyaluronic Acid', 24, 139, 'images/products/Beauty/SerumEssence/5.jpg'),
(120, 3, 4, 1, 'Alpha Arbutin', 12, 488, 'images/products/Beauty/SerumEssence/6.jpg'),
(121, 3, 5, 1, 'Acne Master Patch', 300, 25, 'images/products/Beauty/SpotTreatment/1.jpg'),
(122, 3, 5, 1, 'Clear Master Patch', 45, 200, 'images/products/Beauty/SpotTreatment/2.jpg'),
(123, 3, 5, 1, 'Centell Blemish Cream', 4, 930, 'images/products/Beauty/SpotTreatment/3.jpg'),
(124, 3, 5, 1, 'AXIS Y Serum', 25, 715, 'images/products/Beauty/SpotTreatment/4.jpg'),
(125, 3, 5, 1, 'Oile Co-Tea Tree', 78, 104, 'images/products/Beauty/SpotTreatment/5.jpg'),
(21, 3, 5, 1, 'Soul Apotherapy', 10, 195, 'images/products/Beauty/SpotTreatment/6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `on_cart` tinyint(1) NOT NULL DEFAULT '1',
  `delivery_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `product_id`, `total_quantity`, `total_price`, `on_cart`, `delivery_id`) VALUES
(1, 2, 82, 2, 1780, 0, 1),
(2, 2, 6, 1, 2000, 0, 1),
(3, 2, 6, 1, 1000, 0, 2),
(4, 2, 5, 1, 370, 0, 2),
(6, 2, 2, 1, 215, 0, 3),
(7, 2, 6, 1, 1000, 0, 3),
(8, 2, 88, 1, 99, 0, 3),
(9, 2, 96, 1, 800, 0, 4),
(10, 2, 99, 1, 210, 0, 4),
(12, 4, 1, 1, 825, 0, 5),
(13, 7, 76, 1, 500, 0, 6),
(14, 7, 2, 4, 860, 0, 6),
(15, 5, 7, 1, 580, 0, 7),
(16, 5, 88, 2, 198, 0, 7),
(17, 6, 2, 1, 230, 0, 9),
(18, 6, 5, 1, 370, 0, 9),
(19, 2, 1, 1, 850, 0, 8),
(23, 8, 3, 1, 257, 1, NULL),
(22, 8, 2, 1, 230, 0, 10),
(24, 2, 45, 1, 450, 0, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `delivery_id` (`delivery_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
