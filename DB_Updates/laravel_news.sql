-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2021 at 08:30 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquire`
--

DROP TABLE IF EXISTS `enquire`;
CREATE TABLE IF NOT EXISTS `enquire` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enquire`
--

INSERT INTO `enquire` (`id`, `property_id`, `agent_id`, `name`, `email`, `phone`, `message`) VALUES
(1, 1, 1, 'Nde yanick', 'yanicknde@gmail.com', '675669200', 'I am interested'),
(2, 2, 1, 'Nde Yanick', 'yanicknde@gmail.com', '675669236', 'I am interested, i want to visit, please contact me. i have 50000 for this apartment');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_10_065428_create_settings_table', 1),
('2015_12_25_133843_create_enquire_table', 1),
('2015_12_25_134328_create_partners_table', 1),
('2015_12_25_134629_create_properties_table', 1),
('2015_12_25_142242_create_slider_table', 1),
('2015_12_25_142436_create_subscriber_table', 1),
('2015_12_25_142619_create_testimonials_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `partner_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `url`, `partner_image`) VALUES
(1, 'Diamond Reality', 'https://www.diamondrealty.estate/', 'diamond-reality-55f33fa634840af3568ab52b84049ce3'),
(2, 'Digital Rental', 'https://digitalrenter.com/', 'digital-rental-78b002f5f6f069de5d723f6b6f2229ae'),
(3, 'Gamer Changer', 'http://www.gamer.com/', 'ministry-of-housing-and-urban-deve-a98ce68243798c8b26974587d907b986'),
(4, 'Veronation', 'http://www.veronation.com/', 'veronation-53fdf85597ddf9a8064b5e8c37848233'),
(5, 'Blue Fox', 'http://www.bluefox.com/', 'blue-fox-3a668aeaaff9801950b04f6205a55683'),
(6, 'Crow Barel', 'http://www.crownbarel.com/', 'crow-barel-954fc1477b703ee154911fb898768526');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yanicknde@gmail.com', '82cea773d40318e102c960f2c410079464f341ea5efb1b165002a94670ec1027', '2021-02-15 14:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `featured_property` int(11) NOT NULL DEFAULT '0',
  `property_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rent_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `map_latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bathrooms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bedrooms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `user_id`, `featured_property`, `property_name`, `property_slug`, `property_type`, `property_purpose`, `sale_price`, `rent_price`, `address`, `map_latitude`, `map_longitude`, `bathrooms`, `bedrooms`, `area`, `description`, `featured_image`, `property_images1`, `property_images2`, `property_images3`, `property_images4`, `property_images5`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Studio Modern', 'studio-modern', 'Apartment', 'Rent', '', '30000', '1222 Rama III Road\r\nRail Bonaberi', '', '', '1', '1', '20*10', '<p>Modern Studio at Bonamoussadi&nbsp;</p><p>Careffou Etoo</p><p><br></p>', 'studio-modern-5b538e71b9114aba61cb4ad3c29b1575', 'studio-modern-de24e1cb8921280596f82fe71298847e', 'studio-modern-cede2d63a7c04ebd4cb55a2228c7141a', 'studio-modern-728593d62df58e605374532c761f3c3a', '', '', 1, '2021-02-03 18:26:20', '2021-02-13 22:32:52'),
(2, 1, 0, 'Modern Apartment', 'modern-apartment', 'Apartment', 'Rent', '', '60000', '1222 Rama III Road\r\nBang Phongphang', '', '', '3', '3', '50*60', '<p>This is a good apartment for you Loic.</p><p>Bla bla bla bla bla</p>', 'modern-apartment-15d185eaa7c954e77f5343d941e25fbd', 'modern-apartment-13e7bee3b430044417f76cc1a04dcb33', 'modern-apartment-4325d1772bbb08248572e96f643a8de1', 'modern-apartment-861d1372eadbe8dfab4c812c388ad07d', 'modern-apartment-22d9d2c66c6c79252642a0d25f9a7947', 'modern-apartment-cae4a57bcd2fa803df2270f5d8bbbbae', 1, '2021-02-06 20:35:48', '2021-02-13 22:32:28'),
(3, 1, 1, 'Modern Room', 'modern-room-at-gnoitik-cite', 'Room', 'Rent', '', '30000', 'Douala Cameroon\r\nBonapriso', '', '', '1', '1', '10*10', '<div dir=\"auto\" style=\"font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" font-size:=\"\" 15px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">MODERN ROOM IN HIS PORTILLON FOR RENT</div><div dir=\"auto\" style=\"font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" font-size:=\"\" 15px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">BONAPRISO</div><div dir=\"auto\" style=\"font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" font-size:=\"\" 15px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">SHOWER ROOM KITCHEN</div><div dir=\"auto\" style=\"font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" font-size:=\"\" 15px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">REZ SHOOTED FROM A BUILDING</div>', 'modern-room-at-gnoitik-cite-9a3e3ea965a7474da1cfe0dce858c8df', 'modern-room-at-gnoitik-cite-4a9fba99e25cd6458f3a85dbd8beef38', 'modern-room-at-gnoitik-cite-c333bad2a8b45d3c30902945bd98f699', 'modern-room-at-gnoitik-cite-69b09198d4248b8f24494f27a01367b9', 'modern-room-at-gnoitik-cite-a79f5158d38f5d570c22deb545a8fabd', 'modern-room-at-gnoitik-cite-a1fedac1c75a78f548e19fbfb43bcd92', 1, '2021-02-13 22:16:11', '2021-02-15 12:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_header_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_footer_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_widget1` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_widget2` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_widget3` text COLLATE utf8_unicode_ci NOT NULL,
  `addthis_share_code` text COLLATE utf8_unicode_ci NOT NULL,
  `disqus_comment_code` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_style`, `site_name`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `site_header_code`, `site_footer_code`, `site_copyright`, `footer_widget1`, `footer_widget2`, `footer_widget3`, `addthis_share_code`, `disqus_comment_code`) VALUES
(1, 'blue', 'Mecale Home - Real Estate', 'yanicknde@gmail.com', 'logo.png', 'favicon.png', 'MECALE Home Real Estates provide you with a quick and easy way to create a real estates site portal.', '', '', 'Copyright © 2021 Mecale Home - Real Estate. All rights reserved.', 'Mecale Home is a real estate agency based in Douala Cameroon, with a large and high quality real estate offer in Douala and Douala surroundings.\r\n\r\nOur company was founded in 2021 and has been operating successfully ever since. For the activity of real estate agency, we have a permission of the Ministry of Economy and are registered in the register of intermediaries at the Cameroon Chamber of Commerce.', 'We are very attentive to a professional care of our customers and you can contact us with full confidence as a buyer or seller of a property!\r\nWe actively advertise abroad, especially in the territory of the African Union, we invest considerable resources in marketing and advertising in the country and abroad, with which we have developed a large base of domestic and foreign customers.\r\n\r\nOur team for real estates:\r\nNde Yanick C. – Manager(French, English)\r\nGnoitik Loic V. – Mbouda Man(French, English)\r\n\r\nSince 2020, we hold the AAA Certificate of Excellence:', 'Our specialized team, which we employ, will give you all the information you need when renting, buying or selling a property, and will guide you throughout the entire buying process. We employ a lawyer, an architect and licensed real estate agents with passed brokerage examinations, registered with the Cameroon Chamber of Commerce. Our team speaks English and French, which is a great advantage in our day-to-day business as we work with clients and other companies from around the world. ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_name`) VALUES
(2, 'Cameroon', 'cameroon-d3cb6fe7924c0f0be9898fe240caefe3'),
(3, 'Best homes with pools', 'best-homes-with-pools-ce34f16fb83401721c136a2501237568'),
(4, 'Luxury homes', 'luxury-homes-78938ec1a98286d41c57b5f501ba50d6'),
(5, 'Amazing view for you', 'amazing-view-for-you-18d8d59762670088382aa29671e14dd7');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `testimonial` text COLLATE utf8_unicode_ci NOT NULL,
  `t_user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `testimonial`, `t_user_image`) VALUES
(1, 'Yanick Che', 'It was quite easy for my wife and I to find an apartment, just within 2day. Mecale Home helped me secure an amazing house and a very moderate cost.', 'yanick-che-8eabcf8d568fff1284b7a7f18bf3c011'),
(2, 'Gnoitil Loic Vanes', 'Getting a room beside my school has never been easier. Thanks to Mecale Home for assisting me as a student get a good room.', 'gnoitil-loic-vanes-1e25953af4b7f3178898fba5a5ac4862'),
(3, 'PAMT Ahmad Bissaka', 'All I did was visit the website and I got an amazing office space within a week. Amazing quality of service guys, I do recommend Mecale Home to everyone.', 'pamt-ahmad-bissaka-359f1bea55ca63b7e2fa21f89b7b182b');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertype` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `password`, `phone`, `fax`, `about`, `facebook`, `twitter`, `gplus`, `linkedin`, `image_icon`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$TrX4bS2eqq.o9zAl5DO9RuoXkcpDPtk/TJqgjHibYB404yYPcHUbW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zGCB52vIkN3Ia1bYAn4oi0lNbeCHC9dQhDUE4S8UDL2kVIPrKi3nb9hfsGH5', '2021-02-03 18:19:20', '2021-02-15 14:01:41'),
(2, 'Agents', 'Nde Yanick', 'yanicknde@gmail.com', '$2y$10$MQJmwyQQzVWOcEcasbgrgOuXTPH6U6cRwpF8B7sfy6aMIPHMNX9Uu', '675669236', '', 'Real estate Agent  10years of professional experiences in housing and urban development.', '', '', '', '', 'nde-yanick-6de0b085123b3c4206f7ac1dc0947dd8', 1, 'HF8K07TPnFv9H3FV917CpYb1BQV1CUAtzf2IOSGB8HZ7FRD3FfgIag6T4vlG', '2021-02-13 20:07:10', '2021-02-15 12:45:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
