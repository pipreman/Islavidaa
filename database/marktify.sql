-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 01:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marktify`
--

-- --------------------------------------------------------

--
-- Table structure for table `tp_comments`
--

CREATE TABLE `tp_comments` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_contactus`
--

CREATE TABLE `tp_contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_replay` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for reply 0 for pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_countries`
--

CREATE TABLE `tp_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(25) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `currency_code` varchar(25) DEFAULT NULL,
  `symbol` varchar(25) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_countries`
--

INSERT INTO `tp_countries` (`id`, `name`, `short_name`, `currency`, `currency_code`, `symbol`, `thousand_separator`, `decimal_separator`) VALUES
(1, 'Afghanistan', 'AF', 'Afghanis', 'AF', '؋', ',', '.'),
(2, 'Aland Islands', 'AX', NULL, NULL, NULL, NULL, NULL),
(3, 'Albania', 'AL', 'Leke', 'ALL', 'Lek', ',', '.'),
(4, 'Algeria', 'DZ', NULL, NULL, NULL, NULL, NULL),
(5, 'American Samoa', 'AS', NULL, NULL, NULL, NULL, NULL),
(6, 'Andorra', 'AD', NULL, NULL, NULL, NULL, NULL),
(7, 'Angola', 'AO', NULL, NULL, NULL, NULL, NULL),
(8, 'Anguilla', 'AI', NULL, NULL, NULL, NULL, NULL),
(9, 'Antarctica', 'AQ', NULL, NULL, NULL, NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', NULL, NULL, NULL, NULL, NULL),
(11, 'Argentina', 'AR', 'Pesos', 'ARS', '$', ',', '.'),
(12, 'Armenia', 'AM', NULL, NULL, NULL, NULL, NULL),
(13, 'Aruba', 'AW', 'Guilders', 'AWG', 'ƒ', ',', '.'),
(14, 'Australia', 'AU', 'Dollars', 'AUD', '$', ',', '.'),
(15, 'Austria', 'AT', NULL, NULL, NULL, NULL, NULL),
(16, 'Azerbaijan', 'AZ', 'New Manats', 'AZ', 'ман', ',', '.'),
(17, 'Bahamas', 'BS', 'Dollars', 'BSD', '$', ',', '.'),
(18, 'Bahrain', 'BH', NULL, NULL, NULL, NULL, NULL),
(19, 'Bangladesh', 'BD', NULL, NULL, NULL, NULL, NULL),
(20, 'Barbados', 'BB', 'Dollars', 'BBD', '$', ',', '.'),
(21, 'Belarus', 'BY', 'Rubles', 'BYR', 'p.', ',', '.'),
(22, 'Belgium', 'BE', 'Euro', 'EUR', '€', ',', '.'),
(23, 'Belize', 'BZ', NULL, NULL, NULL, NULL, NULL),
(24, 'Benin', 'BJ', NULL, NULL, NULL, NULL, NULL),
(25, 'Bermuda', 'BM', 'Dollars', 'BMD', '$', ',', '.'),
(26, 'Bhutan', 'BT', NULL, NULL, NULL, NULL, NULL),
(27, 'Bolivia', 'BO', 'Bolivianos', 'BOB', '$b', ',', '.'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, NULL, NULL, NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', 'Convertible Marka', 'BAM', 'KM', ',', '.'),
(30, 'Botswana', 'BW', 'Pula\'s', 'BWP', 'P', ',', '.'),
(31, 'Bouvet Island', 'BV', NULL, NULL, NULL, NULL, NULL),
(32, 'Brazil', 'BR', 'Reais', 'BRL', 'R$', ',', '.'),
(33, 'British Indian Ocean Territory', 'IO', NULL, NULL, NULL, NULL, NULL),
(34, 'Brunei Darussalam', 'BN', 'Dollars', 'BND', '$', ',', '.'),
(35, 'Bulgaria', 'BG', 'Leva', 'BG', 'лв', ',', '.'),
(36, 'Burkina Faso', 'BF', NULL, NULL, NULL, NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL, NULL, NULL, NULL),
(38, 'Cambodia', 'KH', 'Riels', 'KHR', '៛', ',', '.'),
(39, 'Cameroon', 'CM', NULL, NULL, NULL, NULL, NULL),
(40, 'Canada', 'CA', 'Dollars', 'CAD', '$', ',', '.'),
(41, 'Cape Verde', 'CV', NULL, NULL, NULL, NULL, NULL),
(42, 'Cayman Islands', 'KY', 'Dollars', 'KYD', '$', ',', '.'),
(43, 'Central African Republic', 'CF', NULL, NULL, NULL, NULL, NULL),
(44, 'Chad', 'TD', NULL, NULL, NULL, NULL, NULL),
(45, 'Chile', 'CL', 'Pesos', 'CLP', '$', ',', '.'),
(46, 'China', 'CN', 'Yuan Renminbi', 'CNY', '¥', ',', '.'),
(47, 'Christmas Island', 'CX', NULL, NULL, NULL, NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, NULL, NULL, NULL, NULL),
(49, 'Colombia', 'CO', 'Pesos', 'COP', '$', ',', '.'),
(50, 'Comoros', 'KM', NULL, NULL, NULL, NULL, NULL),
(51, 'Congo', 'CG', NULL, NULL, NULL, NULL, NULL),
(52, 'Congo, Democratic Republic of the Congo', 'CD', NULL, NULL, NULL, NULL, NULL),
(53, 'Cook Islands', 'CK', NULL, NULL, NULL, NULL, NULL),
(54, 'Costa Rica', 'CR', 'Colón', 'CRC', '₡', ',', '.'),
(55, 'Cote D\'Ivoire', 'CI', NULL, NULL, NULL, NULL, NULL),
(56, 'Croatia', 'HR', 'Kuna', 'HRK', 'kn', ',', '.'),
(57, 'Cuba', 'CU', 'Pesos', 'CUP', '₱', ',', '.'),
(58, 'Curacao', 'CW', NULL, NULL, NULL, NULL, NULL),
(59, 'Cyprus', 'CY', 'Euro', 'EUR', '€', ',', '.'),
(60, 'Czech Republic', 'CZ', 'Koruny', 'CZK', 'Kč', ',', '.'),
(61, 'Denmark', 'DK', 'Kroner', 'DKK', 'kr', ',', '.'),
(62, 'Djibouti', 'DJ', NULL, NULL, NULL, NULL, NULL),
(63, 'Dominica', 'DM', NULL, NULL, NULL, NULL, NULL),
(64, 'Dominican Republic', 'DO', 'Pesos', 'DOP ', 'RD$', ',', '.'),
(65, 'Ecuador', 'EC', NULL, NULL, NULL, NULL, NULL),
(66, 'Egypt', 'EG', 'Pounds', 'EGP', '£', ',', '.'),
(67, 'El Salvador', 'SV', 'Colones', 'SVC', '$', ',', '.'),
(68, 'Equatorial Guinea', 'GQ', NULL, NULL, NULL, NULL, NULL),
(69, 'Eritrea', 'ER', NULL, NULL, NULL, NULL, NULL),
(70, 'Estonia', 'EE', NULL, NULL, NULL, NULL, NULL),
(71, 'Ethiopia', 'ET', NULL, NULL, NULL, NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL, NULL, NULL, NULL),
(73, 'Faroe Islands', 'FO', NULL, NULL, NULL, NULL, NULL),
(74, 'Fiji', 'FJ', 'Dollars', 'FJD', '$', ',', '.'),
(75, 'Finland', 'FI', NULL, NULL, NULL, NULL, NULL),
(76, 'France', 'FR', 'Euro', 'EUR', '€', ',', '.'),
(77, 'French Guiana', 'GF', NULL, NULL, NULL, NULL, NULL),
(78, 'French Polynesia', 'PF', NULL, NULL, NULL, NULL, NULL),
(79, 'French Southern Territories', 'TF', NULL, NULL, NULL, NULL, NULL),
(80, 'Gabon', 'GA', NULL, NULL, NULL, NULL, NULL),
(81, 'Gambia', 'GM', NULL, NULL, NULL, NULL, NULL),
(82, 'Georgia', 'GE', NULL, NULL, NULL, NULL, NULL),
(83, 'Germany', 'DE', NULL, NULL, NULL, NULL, NULL),
(84, 'Ghana', 'GH', 'Cedis', 'GHC', '¢', ',', '.'),
(85, 'Gibraltar', 'GI', 'Pounds', 'GIP', '£', ',', '.'),
(86, 'Greece', 'GR', 'Euro', 'EUR', '€', ',', '.'),
(87, 'Greenland', 'GL', NULL, NULL, NULL, NULL, NULL),
(88, 'Grenada', 'GD', NULL, NULL, NULL, NULL, NULL),
(89, 'Guadeloupe', 'GP', NULL, NULL, NULL, NULL, NULL),
(90, 'Guam', 'GU', NULL, NULL, NULL, NULL, NULL),
(91, 'Guatemala', 'GT', 'Quetzales', 'GTQ', 'Q', ',', '.'),
(92, 'Guernsey', 'GG', 'Pounds', 'GGP', '£', ',', '.'),
(93, 'Guinea', 'GN', NULL, NULL, NULL, NULL, NULL),
(94, 'Guinea-Bissau', 'GW', NULL, NULL, NULL, NULL, NULL),
(95, 'Guyana', 'GY', 'Dollars', 'GYD', '$', ',', '.'),
(96, 'Haiti', 'HT', NULL, NULL, NULL, NULL, NULL),
(97, 'Heard Island and Mcdonald Islands', 'HM', NULL, NULL, NULL, NULL, NULL),
(98, 'Holy See (Vatican City State)', 'VA', NULL, NULL, NULL, NULL, NULL),
(99, 'Honduras', 'HN', 'Lempiras', 'HNL', 'L', ',', '.'),
(100, 'Hong Kong', 'HK', 'Dollars', 'HKD', '$', ',', '.'),
(101, 'Hungary', 'HU', 'Forint', 'HUF', 'Ft', ',', '.'),
(102, 'Iceland', 'IS', 'Kronur', 'ISK', 'kr', ',', '.'),
(103, 'India', 'IN', 'Rupees', 'INR', '₹', ',', '.'),
(104, 'Indonesia', 'ID', 'Rupiahs', 'IDR', 'Rp', ',', '.'),
(105, 'Iran, Islamic Republic of', 'IR', NULL, NULL, NULL, NULL, NULL),
(106, 'Iraq', 'IQ', NULL, NULL, NULL, NULL, NULL),
(107, 'Ireland', 'IE', 'Euro', 'EUR', '€', ',', '.'),
(108, 'Isle of Man', 'IM', 'Pounds', 'IMP', '£', ',', '.'),
(109, 'Israel', 'IL', 'New Shekels', 'ILS', '₪', ',', '.'),
(110, 'Italy', 'IT', 'Euro', 'EUR', '€', ',', '.'),
(111, 'Jamaica', 'JM', 'Dollars', 'JMD', 'J$', ',', '.'),
(112, 'Japan', 'JP', 'Yen', 'JPY', '¥', ',', '.'),
(113, 'Jersey', 'JE', 'Pounds', 'JEP', '£', ',', '.'),
(114, 'Jordan', 'JO', NULL, NULL, NULL, NULL, NULL),
(115, 'Kazakhstan', 'KZ', 'Tenge', 'KZT', 'лв', ',', '.'),
(116, 'Kenya', 'KE', NULL, NULL, NULL, NULL, NULL),
(117, 'Kiribati', 'KI', NULL, NULL, NULL, NULL, NULL),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL, NULL, NULL, NULL),
(119, 'Korea, Republic of', 'KR', NULL, NULL, NULL, NULL, NULL),
(120, 'Kosovo', 'XK', NULL, NULL, NULL, NULL, NULL),
(121, 'Kuwait', 'KW', NULL, NULL, NULL, NULL, NULL),
(122, 'Kyrgyzstan', 'KG', 'Soms', 'KGS', 'лв', ',', '.'),
(123, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL, NULL, NULL, NULL),
(124, 'Latvia', 'LV', 'Lati', 'LVL', 'Ls', ',', '.'),
(125, 'Lebanon', 'LB', 'Pounds', 'LBP', '£', ',', '.'),
(126, 'Lesotho', 'LS', NULL, NULL, NULL, NULL, NULL),
(127, 'Liberia', 'LR', 'Dollars', 'LRD', '$', ',', '.'),
(128, 'Libyan Arab Jamahiriya', 'LY', NULL, NULL, NULL, NULL, NULL),
(129, 'Liechtenstein', 'LI', 'Switzerland Francs', 'CHF', 'CHF', ',', '.'),
(130, 'Lithuania', 'LT', 'Litai', 'LTL', 'Lt', ',', '.'),
(131, 'Luxembourg', 'LU', 'Euro', 'EUR', '€', ',', '.'),
(132, 'Macao', 'MO', NULL, NULL, NULL, NULL, NULL),
(133, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, NULL, NULL, NULL, NULL),
(134, 'Madagascar', 'MG', NULL, NULL, NULL, NULL, NULL),
(135, 'Malawi', 'MW', NULL, NULL, NULL, NULL, NULL),
(136, 'Malaysia', 'MY', 'Ringgits', 'MYR', 'RM', ',', '.'),
(137, 'Maldives', 'MV', NULL, NULL, NULL, NULL, NULL),
(138, 'Mali', 'ML', NULL, NULL, NULL, NULL, NULL),
(139, 'Malta', 'MT', 'Euro', 'EUR', '€', ',', '.'),
(140, 'Marshall Islands', 'MH', NULL, NULL, NULL, NULL, NULL),
(141, 'Martinique', 'MQ', NULL, NULL, NULL, NULL, NULL),
(142, 'Mauritania', 'MR', NULL, NULL, NULL, NULL, NULL),
(143, 'Mauritius', 'MU', 'Rupees', 'MUR', '₨', ',', '.'),
(144, 'Mayotte', 'YT', NULL, NULL, NULL, NULL, NULL),
(145, 'Mexico', 'MX', 'Pesos', 'MX', '$', ',', '.'),
(146, 'Micronesia, Federated States of', 'FM', NULL, NULL, NULL, NULL, NULL),
(147, 'Moldova, Republic of', 'MD', NULL, NULL, NULL, NULL, NULL),
(148, 'Monaco', 'MC', NULL, NULL, NULL, NULL, NULL),
(149, 'Mongolia', 'MN', 'Tugriks', 'MNT', '₮', ',', '.'),
(150, 'Montenegro', 'ME', NULL, NULL, NULL, NULL, NULL),
(151, 'Montserrat', 'MS', NULL, NULL, NULL, NULL, NULL),
(152, 'Morocco', 'MA', NULL, NULL, NULL, NULL, NULL),
(153, 'Mozambique', 'MZ', 'Meticais', 'MZ', 'MT', ',', '.'),
(154, 'Myanmar', 'MM', NULL, NULL, NULL, NULL, NULL),
(155, 'Namibia', 'NA', 'Dollars', 'NAD', '$', ',', '.'),
(156, 'Nauru', 'NR', NULL, NULL, NULL, NULL, NULL),
(157, 'Nepal', 'NP', 'Rupees', 'NPR', '₨', ',', '.'),
(158, 'Netherlands', 'NL', 'Euro', 'EUR', '€', ',', '.'),
(159, 'Netherlands Antilles', 'AN', 'Guilders', 'ANG', 'ƒ', ',', '.'),
(160, 'New Caledonia', 'NC', NULL, NULL, NULL, NULL, NULL),
(161, 'New Zealand', 'NZ', 'Dollars', 'NZD', '$', ',', '.'),
(162, 'Nicaragua', 'NI', 'Cordobas', 'NIO', 'C$', ',', '.'),
(163, 'Niger', 'NE', NULL, NULL, NULL, NULL, NULL),
(164, 'Nigeria', 'NG', 'Nairas', 'NG', '₦', ',', '.'),
(165, 'Niue', 'NU', NULL, NULL, NULL, NULL, NULL),
(166, 'Norfolk Island', 'NF', NULL, NULL, NULL, NULL, NULL),
(167, 'Northern Mariana Islands', 'MP', NULL, NULL, NULL, NULL, NULL),
(168, 'Norway', 'NO', 'Krone', 'NOK', 'kr', ',', '.'),
(169, 'Oman', 'OM', 'Rials', 'OMR', '﷼', ',', '.'),
(170, 'Pakistan', 'PK', 'Rupees', 'PKR', '₨', ',', '.'),
(171, 'Palau', 'PW', NULL, NULL, NULL, NULL, NULL),
(172, 'Palestinian Territory, Occupied', 'PS', NULL, NULL, NULL, NULL, NULL),
(173, 'Panama', 'PA', 'Balboa', 'PAB', 'B/.', ',', '.'),
(174, 'Papua New Guinea', 'PG', NULL, NULL, NULL, NULL, NULL),
(175, 'Paraguay', 'PY', 'Guarani', 'PYG', 'Gs', ',', '.'),
(176, 'Peru', 'PE', 'Nuevos Soles', 'PE', 'S/.', ',', '.'),
(177, 'Philippines', 'PH', 'Pesos', 'PHP', 'Php', ',', '.'),
(178, 'Pitcairn', 'PN', NULL, NULL, NULL, NULL, NULL),
(179, 'Poland', 'PL', 'Zlotych', 'PL', 'zł', ',', '.'),
(180, 'Portugal', 'PT', NULL, NULL, NULL, NULL, NULL),
(181, 'Puerto Rico', 'PR', NULL, NULL, NULL, NULL, NULL),
(182, 'Qatar', 'QA', 'Rials', 'QAR', '﷼', ',', '.'),
(183, 'Reunion', 'RE', NULL, NULL, NULL, NULL, NULL),
(184, 'Romania', 'RO', 'New Lei', 'RO', 'lei', ',', '.'),
(185, 'Russian Federation', 'RU', NULL, NULL, NULL, NULL, NULL),
(186, 'Rwanda', 'RW', NULL, NULL, NULL, NULL, NULL),
(187, 'Saint Barthelemy', 'BL', NULL, NULL, NULL, NULL, NULL),
(188, 'Saint Helena', 'SH', 'Pounds', 'SHP', '£', ',', '.'),
(189, 'Saint Kitts and Nevis', 'KN', NULL, NULL, NULL, NULL, NULL),
(190, 'Saint Lucia', 'LC', NULL, NULL, NULL, NULL, NULL),
(191, 'Saint Martin', 'MF', NULL, NULL, NULL, NULL, NULL),
(192, 'Saint Pierre and Miquelon', 'PM', NULL, NULL, NULL, NULL, NULL),
(193, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL, NULL, NULL, NULL),
(194, 'Samoa', 'WS', NULL, NULL, NULL, NULL, NULL),
(195, 'San Marino', 'SM', NULL, NULL, NULL, NULL, NULL),
(196, 'Sao Tome and Principe', 'ST', NULL, NULL, NULL, NULL, NULL),
(197, 'Saudi Arabia', 'SA', 'Riyals', 'SAR', '﷼', ',', '.'),
(198, 'Senegal', 'SN', NULL, NULL, NULL, NULL, NULL),
(199, 'Serbia', 'RS', 'Dinars', 'RSD', 'Дин.', ',', '.'),
(200, 'Serbia and Montenegro', 'CS', NULL, NULL, NULL, NULL, NULL),
(201, 'Seychelles', 'SC', 'Rupees', 'SCR', '₨', ',', '.'),
(202, 'Sierra Leone', 'SL', NULL, NULL, NULL, NULL, NULL),
(203, 'Singapore', 'SG', 'Dollars', 'SGD', '$', ',', '.'),
(204, 'Sint Maarten', 'SX', NULL, NULL, NULL, NULL, NULL),
(205, 'Slovakia', 'SK', NULL, NULL, NULL, NULL, NULL),
(206, 'Slovenia', 'SI', 'Euro', 'EUR', '€', ',', '.'),
(207, 'Solomon Islands', 'SB', 'Dollars', 'SBD', '$', ',', '.'),
(208, 'Somalia', 'SO', 'Shillings', 'SOS', 'S', ',', '.'),
(209, 'South Africa', 'ZA', 'Rand', 'ZAR', 'R', ',', '.'),
(210, 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL, NULL, NULL, NULL),
(211, 'South Sudan', 'SS', NULL, NULL, NULL, NULL, NULL),
(212, 'Spain', 'ES', 'Euro', 'EUR', '€', ',', '.'),
(213, 'Sri Lanka', 'LK', 'Rupees', 'LKR', '₨', ',', '.'),
(214, 'Sudan', 'SD', NULL, NULL, NULL, NULL, NULL),
(215, 'Suriname', 'SR', 'Dollars', 'SRD', '$', ',', '.'),
(216, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL, NULL, NULL, NULL),
(217, 'Swaziland', 'SZ', NULL, NULL, NULL, NULL, NULL),
(218, 'Sweden', 'SE', 'Kronor', 'SEK', 'kr', ',', '.'),
(219, 'Switzerland', 'CH', 'Francs', 'CHF', 'CHF', ',', '.'),
(220, 'Syrian Arab Republic', 'SY', NULL, NULL, NULL, NULL, NULL),
(221, 'Taiwan, Province of China', 'TW', NULL, NULL, NULL, NULL, NULL),
(222, 'Tajikistan', 'TJ', NULL, NULL, NULL, NULL, NULL),
(223, 'Tanzania, United Republic of', 'TZ', NULL, NULL, NULL, NULL, NULL),
(224, 'Thailand', 'TH', 'Baht', 'THB', '฿', ',', '.'),
(225, 'Timor-Leste', 'TL', NULL, NULL, NULL, NULL, NULL),
(226, 'Togo', 'TG', NULL, NULL, NULL, NULL, NULL),
(227, 'Tokelau', 'TK', NULL, NULL, NULL, NULL, NULL),
(228, 'Tonga', 'TO', NULL, NULL, NULL, NULL, NULL),
(229, 'Trinidad and Tobago', 'TT', 'Dollars', 'TTD', 'TT$', ',', '.'),
(230, 'Tunisia', 'TN', NULL, NULL, NULL, NULL, NULL),
(231, 'Turkey', 'TR', 'Lira', 'TRY', 'TL', ',', '.'),
(232, 'Turkmenistan', 'TM', NULL, NULL, NULL, NULL, NULL),
(233, 'Turks and Caicos Islands', 'TC', NULL, NULL, NULL, NULL, NULL),
(234, 'Tuvalu', 'TV', 'Dollars', 'TVD', '$', ',', '.'),
(235, 'Uganda', 'UG', NULL, NULL, NULL, NULL, NULL),
(236, 'Ukraine', 'UA', 'Hryvnia', 'UAH', '₴', ',', '.'),
(237, 'United Arab Emirates', 'AE', NULL, NULL, NULL, NULL, NULL),
(238, 'United Kingdom', 'GB', 'Pounds', 'GBP', '£', ',', '.'),
(239, 'United States', 'US', 'Dollars', 'USD', '$', ',', '.'),
(240, 'United States Minor Outlying Islands', 'UM', NULL, NULL, NULL, NULL, NULL),
(241, 'Uruguay', 'UY', 'Pesos', 'UYU', '$U', ',', '.'),
(242, 'Uzbekistan', 'UZ', 'Sums', 'UZS', 'лв', ',', '.'),
(243, 'Vanuatu', 'VU', NULL, NULL, NULL, NULL, NULL),
(244, 'Venezuela', 'VE', 'Bolivares Fuertes', 'VEF', 'Bs', ',', '.'),
(245, 'Viet Nam', 'VN', NULL, NULL, NULL, NULL, NULL),
(246, 'Virgin Islands, British', 'VG', NULL, NULL, NULL, NULL, NULL),
(247, 'Virgin Islands, U.s.', 'VI', NULL, NULL, NULL, NULL, NULL),
(248, 'Wallis and Futuna', 'WF', NULL, NULL, NULL, NULL, NULL),
(249, 'Western Sahara', 'EH', NULL, NULL, NULL, NULL, NULL),
(250, 'Yemen', 'YE', 'Rials', 'YER', '﷼', ',', '.'),
(251, 'Zambia', 'ZM', NULL, NULL, NULL, NULL, NULL),
(252, 'Zimbabwe', 'ZW', 'Zimbabwe Dollars', 'ZWD', 'Z$', ',', '.');

-- --------------------------------------------------------

--
-- Table structure for table `tp_discount_coupons`
--

CREATE TABLE `tp_discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `cannot_applied_product_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cannot_applied_product_id`)),
  `coupon_amount` double(8,2) NOT NULL,
  `min_amount` double(8,2) DEFAULT NULL,
  `coupon_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for flat 1 for %',
  `is_lifetime` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for No 1 for Yes',
  `is_once_per_user` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for No 1 for Yes',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 for inactive 1 for active',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_email_lists`
--

CREATE TABLE `tp_email_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for Yes 0 for No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_email_providers`
--

CREATE TABLE `tp_email_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `is_connect` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for Yes 0 for No',
  `credentials` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_email_providers`
--

INSERT INTO `tp_email_providers` (`id`, `name`, `slug`, `is_active`, `is_connect`, `credentials`, `created_at`, `updated_at`) VALUES
(1, 'Constant Contact', 'constant_contact', 1, 0, '', NULL, '2023-10-03 07:21:38'),
(2, 'Get Response', 'get_response', 1, 0, '', NULL, '2023-09-26 05:14:29'),
(4, 'Mailchimp', 'mailchimp', 1, 0, '', NULL, '2023-09-30 09:54:57'),
(5, 'Sendinblue', 'sendinblue', 1, 0, '', NULL, '2023-09-30 09:02:49'),
(6, 'Active Campaign', 'active_campaign', 1, 0, NULL, '2023-10-18 09:00:01', '2023-10-18 09:00:01'),
(7, 'Sendiio', 'sendiio', 1, 0, NULL, '2023-10-18 09:00:01', '2023-10-18 09:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `tp_failed_jobs`
--

CREATE TABLE `tp_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_home_contents`
--

CREATE TABLE `tp_home_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `page_name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 for inactive 1 for active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_home_contents`
--

INSERT INTO `tp_home_contents` (`id`, `image`, `heading`, `sub_heading`, `link`, `type`, `page_name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'home/images/september2023/dxNW8s9g1J7HOSOwXRDu14Dkr9sNntyxyFdHEdb1.png', 'Start Selling Product', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'StartSection', NULL, 1, NULL, '2023-09-14 07:12:41', '2023-09-28 06:21:42'),
(2, 'home/images/september2023/LVh0tQ57uLdGUjDLzPnukEIgPjqfjo9Yc0IO7l6f.png', 'Earn Money', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'StartSection', NULL, 1, NULL, '2023-09-14 07:13:08', '2023-09-28 06:22:09'),
(3, 'home/images/september2023/MUANUx1eYoEfFgeQQb0PGZIIo9V7hbN0mz3mXxE0.png', 'Track Stats', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'StartSection', NULL, 1, NULL, '2023-09-14 07:22:04', '2023-09-28 06:24:06'),
(4, 'home/images/september2023/mrjr8OQ7yFIxlJV63ELrimcIKJiaIohXvMaSnUEG.png', 'Quality Guarantee', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'WhyChooseSection', NULL, 1, NULL, '2023-09-14 07:24:08', '2023-09-14 07:24:08'),
(5, 'home/images/september2023/eUbTkDUPjsXrrJYOSrF71Ju9Qi5458aj6LOn9IMn.png', '24/7 Customer Support', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'WhyChooseSection', NULL, 1, NULL, '2023-09-14 07:24:42', '2023-09-14 07:24:42'),
(6, 'home/images/september2023/TKAPPz0KcDsnqKq4PR9qpt37Y6szUZLxyDUS0wZG.png', 'Secure Payment', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'WhyChooseSection', NULL, 1, NULL, '2023-09-14 07:25:10', '2023-09-14 07:25:32'),
(7, 'home/images/september2023/JELmOQcxBYF3aMxqgIR4gm5uR6hcUdVGN0IFyzwx.png', 'Easy Buy & Sell', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', NULL, 'WhyChooseSection', NULL, 1, NULL, '2023-09-14 07:26:03', '2023-09-14 07:26:03'),
(8, 'home/images/september2023/AFrERNiJxUORNkTWX2X0kiEnSGszNUBLMabDhfNU.png', 'Test', NULL, 'http://192.168.29.148/Theme_Portal_Gitlab/public/en', 'Advertisement', 'SearchPage', 1, NULL, '2023-09-22 11:26:52', '2023-09-22 11:26:52'),
(9, 'home/images/september2023/esjNLLi7p1aVueUSq7y7DqctCU3OT1atkXpFQJPe.png', 'Single Details Page ad', NULL, 'http://192.168.29.148/Theme_Portal_Gitlab/public/en', 'Advertisement', 'SingleProductPage', 1, NULL, '2023-09-22 11:27:14', '2023-09-30 09:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `tp_languages`
--

CREATE TABLE `tp_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `short_name` varchar(25) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_languages`
--

INSERT INTO `tp_languages` (`id`, `name`, `short_name`, `flag`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'english', 'en', NULL, 1, '2023-08-17 01:02:11', '2023-09-19 09:24:18'),
(2, 'spanish', 'es', NULL, 0, '2023-08-17 01:55:10', '2023-09-30 13:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `tp_migrations`
--

CREATE TABLE `tp_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_migrations`
--

INSERT INTO `tp_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_24_130502_create_pages_table', 2),
(8, '2023_08_16_091850_create_settings_table', 4),
(10, '2023_08_17_060928_create_langauges_table', 5),
(12, '2023_08_17_125238_create_product_metas_table', 7),
(15, '2023_08_16_045021_create_products_table', 8),
(18, '2023_08_16_045007_create_product_categories_table', 10),
(19, '2023_08_16_113508_create_product_sub_categories_table', 11),
(26, '2023_08_29_101952_create_orders_table', 14),
(30, '2023_08_29_103402_create_order_products_table', 17),
(31, '2023_09_04_062141_create_contactus_table', 18),
(32, '2023_08_25_114340_create_testimonials_table', 19),
(34, '2023_08_26_054751_create_discount_coupons_table', 20),
(36, '2023_09_06_183133_create_shoppingcart_table', 22),
(37, '2023_09_06_175354_create_wishlists_table', 23),
(41, '2023_09_09_103039_create_payment_gateways_table', 25),
(42, '2023_08_26_072706_add_column_to_product_table', 26),
(45, '2023_09_11_152142_create_comments_table', 28),
(46, '2023_09_11_152202_create_ratings_table', 29),
(47, '2023_08_24_053742_create_countries_table', 30),
(48, '2023_09_12_173145_create_subscriber_emails_table', 31),
(49, '2023_09_14_113739_create_home_contents_table', 31),
(50, '2023_09_20_124251_create_product_analyses_table', 32),
(51, '2023_08_29_092611_create_email_providers_table', 33),
(52, '2023_09_01_090154_create_email_lists_table', 34),
(58, '2023_10_12_153326_add_column_into_order_table', 35),
(59, '2023_10_13_152709_add_column_to_users_table', 35),
(60, '2023_11_20_124819_create_vendor_requests_table', 36),
(61, '2023_11_21_165429_add_column_to_product_cate_table', 36),
(62, '2023_11_21_165446_add_column_to_product_sub_cate_table', 36),
(63, '2023_11_21_170127_add_column_to_discount__table', 36),
(64, '2023_11_22_103418_add_column_to_product_analyses_table', 36),
(65, '2023_11_22_154220_create_wallets_table', 36),
(66, '2023_11_22_161337_add_column_to_orders_table', 36),
(67, '2023_11_22_185000_add_column_to_order_products_table', 36),
(68, '2023_11_24_112120_create_user_additional_infos_table', 36),
(69, '2023_12_01_145530_add_column_to_products_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `tp_orders`
--

CREATE TABLE `tp_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `tnx_id` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_province` varchar(255) DEFAULT NULL,
  `billing_postalcode` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_name_on_card` varchar(255) DEFAULT NULL,
  `billing_discount` double NOT NULL,
  `billing_discount_code` varchar(255) DEFAULT NULL,
  `billing_subtotal` double NOT NULL,
  `billing_tax` double NOT NULL,
  `billing_total` double NOT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1 for success 0 for pending 2 for fail',
  `error` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(25) DEFAULT NULL,
  `json_response` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_order_products`
--

CREATE TABLE `tp_order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `variants` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `admin_commission` double NOT NULL DEFAULT 0,
  `vendor_amount` double NOT NULL DEFAULT 0,
  `tax_rate` varchar(255) NOT NULL DEFAULT '0',
  `commission_rate` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_pages`
--

CREATE TABLE `tp_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_pages`
--

INSERT INTO `tp_pages` (`id`, `slug`, `heading`, `sub_heading`, `description`, `is_active`, `meta_title`, `meta_keywords`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 'about us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<h4>The standard Lorem Ipsum passage, used since the 1500s</h4><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>&nbsp;</p><h4>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h4><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>&nbsp;</p><h4>1914 translation by H. Rackham</h4><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><p>&nbsp;</p><h4>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h4><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><p>&nbsp;</p><h4>1914 translation by H. Rackham</h4><p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 1, 'On the other hand, we denounce with righteous', 'On the other hand, we denounce with righteous indignation and dislike', 'On the other hand, we denounce with righteous indignation and dislike', '2023-08-14 06:31:36', '2023-09-15 07:03:24'),
(2, 'privacy-policy', 'Privacy Policy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<h4>The standard Lorem Ipsum passage, used since the 1500s</h4><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>&nbsp;</p><h4>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h4><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>&nbsp;</p><h4>1914 translation by H. Rackham</h4><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><p>&nbsp;</p><h4>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h4><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><p>&nbsp;</p><h4>1914 translation by H. Rackham</h4><p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 1, 'Privacy Policy Meta Title', 'Privacy Policy', 'Description', '2023-08-14 06:39:28', '2023-09-19 11:41:34'),
(3, 'terms-and-conditions', 'Terms and Conditions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<h4>The standard Lorem Ipsum passage, used since the 1500s</h4><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>&nbsp;</p><h4>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h4><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>&nbsp;</p><h4>1914 translation by H. Rackham</h4><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><p>&nbsp;</p><h4>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h4><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><p>&nbsp;</p><h4>1914 translation by H. Rackham</h4><p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 1, 'Terms and Conditions title', 'Terms and Conditions keywords', 'Descriptions', '2023-08-14 06:39:28', '2023-09-19 11:41:38'),
(4, 'author-terms-and-conditions', 'Author Terms And Conditions', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', 1, 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', 'Get latest news in your inbox consectetur dipiscing elit,sed do eiusmod tempor', '2023-12-05 07:28:04', '2023-12-05 07:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `tp_password_reset_tokens`
--

CREATE TABLE `tp_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_payment_gateways`
--

CREATE TABLE `tp_payment_gateways` (
  `id` char(36) NOT NULL,
  `gateway_name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `credentails` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_payment_gateways`
--

INSERT INTO `tp_payment_gateways` (`id`, `gateway_name`, `image`, `credentails`, `is_active`, `created_at`, `updated_at`) VALUES
('68cfa497-4ed0-11ee-ba50-7085c28e9660', 'paypal', '', '', 1, NULL, NULL),
('68cfad7e-4ed0-11ee-ba50-7085c28e9660', 'stripe', '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tp_personal_access_tokens`
--

CREATE TABLE `tp_personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_products`
--

CREATE TABLE `tp_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type` varchar(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `preview_link` varchar(255) DEFAULT NULL,
  `uploaded_by` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `is_enable_multi_price` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for Yes 0 for No',
  `file_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for single 1 for Bundle',
  `file_name` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_open_pass` varchar(255) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `is_free` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for free 0 for No',
  `is_preview` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for Yes 0 for No',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for Yes 0 for No',
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_offer` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 product offer Yes 2 for sale',
  `start_offer` timestamp NULL DEFAULT NULL,
  `end_offer` timestamp NULL DEFAULT NULL,
  `offer_price` double(8,2) DEFAULT NULL,
  `sale_count` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `product_details` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 pending , 1 for accept ,2 for review, 3 for soft reject, 4 hard reject',
  `note` longtext DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_product_analyses`
--

CREATE TABLE `tp_product_analyses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `ip_adress` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_product_categories`
--

CREATE TABLE `tp_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `is_featured` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for yes 0 for NO',
  `ishave_product` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for have 0 for don''t have',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_product_metas`
--

CREATE TABLE `tp_product_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_product_sub_categories`
--

CREATE TABLE `tp_product_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for Yes 0 for No',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_ratings`
--

CREATE TABLE `tp_ratings` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_settings`
--

CREATE TABLE `tp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `short_value` varchar(255) DEFAULT NULL,
  `long_value` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_settings`
--

INSERT INTO `tp_settings` (`id`, `key`, `short_value`, `long_value`, `type`, `is_active`) VALUES
(2, 'site_name', 'Marktify', NULL, NULL, 1),
(3, 'site_title', 'Marktify', NULL, NULL, 1),
(4, 'site_author', 'Marktify', NULL, NULL, 1),
(6, 'site_meta_desc', 'Marktify', NULL, NULL, 1),
(7, 'site_meta_keywords', 'Marktify', NULL, NULL, 1),
(8, 'show_newletter', '1', NULL, NULL, 1),
(17, 'copyright_text', 'Marktify. All Rights Reserved', NULL, NULL, 1),
(19, 'company_adderss', '28 Benin, South Of Niger US', NULL, NULL, 1),
(20, 'company_phone', '+01 (10875-00001)', NULL, NULL, 1),
(21, 'company_email', 'themes@example.com', NULL, NULL, 1),
(22, 'facebook_url', 'https://www.facebook.com/', NULL, NULL, 1),
(23, 'twitter_url', 'https://twitter.com/', NULL, NULL, 1),
(24, 'is_checked_facebook', '1', NULL, NULL, 1),
(25, 'is_checked_twitter', '1', NULL, NULL, 1),
(26, 'is_checked_address', '1', NULL, NULL, 1),
(27, 'is_checked_phone', '1', NULL, NULL, 1),
(28, 'is_checked_email', '1', NULL, NULL, 1),
(29, 'is_checked_google', '0', NULL, NULL, 1),
(32, 'current_lang', 'en', NULL, NULL, 1),
(34, 'pre_loader_img', 'my_images/Izac1xXBtDICHwtGiATMEfBCiBJ0sum1D4Rs2Pd4.gif', NULL, NULL, 1),
(35, 'favicon_img', 'my_images/NTgdHsNIMf4Vfo1jaSJTyRMvbfmXfnKgB6620TzH.png', NULL, NULL, 1),
(36, 'my_logo', 'my_images/pqdisjzp1Y7jric5ZM5YaG9rioghioG4QcerqjIg.png', NULL, NULL, 1),
(37, 'home_page_bg_img', 'my_images/3ak7p53jxn778zQbjAEGimT6yc4Zxz2I5b2ZSLue.jpg', NULL, NULL, 1),
(38, 'login_sign_bg_img', 'my_images/vjNFZ5jclGiRERTs0IfXmdCWrZZtIk87fnP4YosK.jpg', NULL, NULL, 1),
(39, 'error_icon_img', 'my_images/ZwCYNGSsAeqcKe67JU6I9AhcGySOSKQ7FkYeiv74.png', NULL, NULL, 1),
(40, 'not_found_img', 'my_images/mRfQ1GAjF5FTpMUpbHnHrDIyo0dbTks0GjT9CSlU.png', NULL, NULL, 1),
(41, 'success_icon_img', 'my_images/j5cMZ4k5h5JV0msjZvlEY7RVjtV6g3x5QfzQSri7.png', NULL, NULL, 1),
(42, 'instagram_url', 'https://www.instagram.com/', NULL, NULL, 1),
(43, 'footer_text', 'Get latest news in your inbox. Consectetur adipiscin elit,adipiscing elit,seddoel eiusmod.news in your in box consectetur adipiscing elit.', NULL, NULL, 1),
(44, 'newsletter_text', 'Get latest news in your inbox. Consectetur adipiscin elit,adipiscing elit,seddoel.', NULL, NULL, 1),
(45, 'is_checked_insta', '1', NULL, NULL, 1),
(46, 'youtube_url', 'https://www.youtube.com/', NULL, NULL, 1),
(47, 'is_checked_youtube', '1', NULL, NULL, 1),
(48, 'is_checked_footer_text', '1', NULL, NULL, 1),
(49, 'is_checked_newsletter_text', '1', NULL, NULL, 1),
(50, 'is_checked_newsletter', '1', NULL, NULL, 1),
(51, 'preview_image', 'my_images/XOLl3tUOWMG6lBN1GBJTdAIBFHKPUtWUJrEjvNID.jpg', NULL, NULL, 1),
(52, 'default_user_image', 'my_images/Td6HgCFj7cd2Q0wQ99DNr7JP6IVzFM9FaEmtQxz8.png', NULL, NULL, 1),
(53, 'is_check_home', '1', NULL, NULL, 1),
(54, 'is_check_about', '1', NULL, NULL, 1),
(55, 'is_check_product', '1', NULL, NULL, 1),
(57, 'is_check_contact', '1', NULL, NULL, 1),
(58, 'is_check_support', '1', NULL, NULL, 1),
(59, 'is_check_terms_and_condition', '1', NULL, NULL, 1),
(60, 'is_check_privacy_policy', '1', NULL, NULL, 1),
(68, 'is_active_tndc', '0', '1', NULL, 1),
(69, 'vendor_tnctext', '<p>Terms and Conditoins test</p>', '<p>Terms and Conditions to be a Vendor</p><p>1. You have to sell the product only on ThemePortal.<br>2. You have to sell the product only on ThemePortal.<br>3. You have to sell the product only on ThemePortal.<br>4. You have to sell the product only on ThemePortal</p>', NULL, 1),
(70, 'paypal_client_id', '', NULL, NULL, 1),
(71, 'paypal_client_secret', '', NULL, NULL, 1),
(73, 'is_checked_paypal', '1', NULL, NULL, 1),
(74, 'is_checked_stripe', '1', NULL, NULL, 1),
(75, 'stripe_key', '', NULL, NULL, 1),
(76, 'stripe_secret_key', '', NULL, NULL, 1),
(77, 'default_currency', 'USD', NULL, NULL, 1),
(78, 'default_symbol', '$', NULL, NULL, 1),
(79, 'paypal_app_id', '', NULL, NULL, 1),
(80, 'is_check_show_logo_email', '0', NULL, NULL, 1),
(81, 'email_name_basic', 'test', NULL, NULL, 1),
(82, 'email', 'test@gmail.com', NULL, NULL, 1),
(83, 'is_check_show_email', '1', NULL, NULL, 1),
(84, 'email_reply', 'test@gmail.com', NULL, NULL, 1),
(85, 'queries', 'test', NULL, NULL, 1),
(86, 'is_check_another_lang', '0', NULL, NULL, 1),
(87, 'home_bg_s_img1', 'my_images/1zfXQiL56c9wrEb7dp5IpQSdbD1a30KlHus9yoPE.png', NULL, NULL, 1),
(88, 'home_bg_s_img2', 'my_images/JdV7RQKsresulNoHczSggYV5GRXlXzkXhuI0AuKc.png', NULL, NULL, 1),
(89, 'home_bg_s_img3', 'my_images/6POUvKEhBEqqrX9b1i0mY5dSRnCg2OCNYFs8tegx.png', NULL, NULL, 1),
(90, 'home_bg_s_img4', 'my_images/NJsUs4xvKDAJvgivC51KWVZaTz5MoJfFxRKZqkax.png', NULL, NULL, 1),
(91, 'home_page_bg_animation_img', 'my_images/DXiqtt0v5RlbBcMHlKk90qWReMHTlwFhVW4nRcJ3.png', NULL, NULL, 1),
(92, 'is_checked_animation_bg', '1', NULL, NULL, 1),
(93, 'is_checked_show_all_anim_img', '1', NULL, NULL, 1),
(94, 'home_middle_banner', 'my_images/ZloSDgAN2YdhnxUmATWhsLHyxb8sHcAUXxwBO9wS.jpg', NULL, NULL, 1),
(103, 'is_checked_smtp', '0', NULL, NULL, 1),
(104, 'smtp_host', NULL, NULL, NULL, 1),
(105, 'smtp_port', NULL, NULL, NULL, 1),
(106, 'is_checked_encry', '0', NULL, NULL, 1),
(107, 'smtp_encry', NULL, NULL, NULL, 1),
(108, 'is_checked_smtp_auth', '0', NULL, NULL, 1),
(109, 'smtp_username', NULL, NULL, NULL, 1),
(110, 'smtp_password', NULL, NULL, NULL, 1),
(111, 'is_checked_logo_on_mail', '1', NULL, NULL, 1),
(112, 'from_name', NULL, NULL, NULL, 1),
(113, 'form_address', 'marktify@gmail.com', NULL, NULL, 1),
(114, 'is_checked_reply_email', '0', NULL, NULL, 1),
(115, 'reply_email', 'marktify@gmail.com', NULL, NULL, 1),
(116, 'support_email', 'support@marktify.com', NULL, NULL, 1),
(117, 'is_checked_other_lang_on_mail', '0', NULL, NULL, 1),
(118, 'registration_template', 'Hi [username],[break][break]\r\nPlease, click on the link below to activate your account. [break]\r\n[linktext] \r\n[break]\r\nThanks,[break]\r\nTeam Marktify.', NULL, NULL, 1),
(119, 'reg_link_text', 'click here', NULL, NULL, 1),
(120, 'forget_password_template', 'Hi [username],[break][break]\r\nPlease, click on the link below to reset your password. [break]\r\n[linktext] \r\n[break]\r\n[break]\r\nThanks,[break][break]\r\nTeam Marktify.', NULL, NULL, 1),
(121, 'forget_pass_link_text', 'Reset Password', NULL, NULL, 1),
(122, 'new_user_template', 'Hi [username],[break][break]\r\nCongratulations. You are successfully registered with us. [break]\r\nHere are your login details [break]\r\nEmail : [email] [break]\r\nPassword : [password] [break]\r\nWebsite link : [website_link] [break]\r\n[break]\r\n[break]\r\nThanks', NULL, NULL, 1),
(123, 'is_check_google', '1', NULL, NULL, 1),
(124, 'white_logo', 'my_images/w7u3Dx7CZn99GDQm2f6ukprBwV0il1YT539LnS7Z.png', NULL, NULL, 1),
(125, 'is_live_paypal', '0', NULL, NULL, 1),
(126, 'is_check_language', '1', NULL, NULL, 1),
(127, 'is_check_facebook_login', '0', NULL, NULL, 1),
(128, 'facebook_client_id', 'aaaaaaaaaaaaaaaaaa', NULL, NULL, 1),
(129, 'facebook_client_secret', 'bbbbbbbbbbbbb', NULL, NULL, 1),
(130, 'is_check_google_login', '0', NULL, NULL, 1),
(131, 'google_client_id', 'ggggggggggggg', NULL, NULL, 1),
(132, 'google_client_secret', 'eeeeeeeeeeeeee', NULL, NULL, 1),
(133, 'is_checked_author_tab', NULL, '1', NULL, 1),
(134, 'author_heading_content', NULL, '<h3>Let\'s Get Started!</h3><p>We are currently accepting submissions from authors with expertise in:</p><p>✓ Website themes and templates</p><p>✓ Code scripts and plugins</p><p>✓ Stock Video and Templates</p><p>✓ Graphic design assets and Templates</p><p>✓ 3D Models</p>', NULL, 1),
(135, 'author_quest_ans', NULL, 'a:2:{i:0;a:2:{s:8:\"question\";s:101:\"Share your objectives with us, and we\'ll provide you with the information necessary for your success.\";s:7:\"options\";a:4:{i:0;s:85:\"I currently sustain myself by creating and selling products through online platforms.\";i:1;s:82:\"I aspire to transition into a full-time endeavor of crafting and selling products.\";i:2;s:61:\"I intend to engage in part-time production and sale of items.\";i:3;s:58:\"I pursue this as a hobby rather than a primary occupation.\";}}i:1;a:2:{s:8:\"question\";s:31:\"What area do you specialize in?\";s:7:\"options\";a:5:{i:0;s:28:\"Website themes and templates\";i:1;s:24:\"Code scripts and plugins\";i:2;s:25:\"Stock video and templates\";i:3;s:35:\"Graphic design assets and templates\";i:4;s:9:\"3D models\";}}}', NULL, 1),
(136, '_token', 'CjQjxGsZ3MejCSnRHD5t7SOfafdzEUxz9bxoTJjS', NULL, NULL, 1),
(137, 'max_upload_size', '512', NULL, NULL, 1),
(138, 'thumb_upload_extension', 'image/*,video/*,audio/*', NULL, NULL, 1),
(139, 'thumb_img_size', '1', NULL, NULL, 1),
(140, 'prev_file_upload_extensions', 'image/*,video/*', NULL, NULL, 1),
(141, 'prev_max_file_upload_size', '512', NULL, NULL, 1),
(142, 'prev_max_files', '5', NULL, NULL, 1),
(143, 'primary_color', '#3480e5', NULL, NULL, 1),
(144, 'secondary_color', '#585c66', NULL, NULL, 1),
(145, 'text_color', '#53627a', NULL, NULL, 1),
(146, 'body_color', '#eff5fc', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tp_subscriber_emails`
--

CREATE TABLE `tp_subscriber_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_testimonials`
--

CREATE TABLE `tp_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `is_checked_designation` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for inactive',
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_testimonials`
--

INSERT INTO `tp_testimonials` (`id`, `name`, `designation`, `is_checked_designation`, `image`, `is_active`, `message`, `created_at`, `updated_at`, `rating`) VALUES
(1, 'Jess Smith', 'Designation', 1, 'testimonial/october2023/JqcLI363pjMnRP65QCWQqRxEQHv92cHfVeeI8G2B.png', 1, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', '2023-10-03 14:11:32', '2023-10-03 14:11:32', 4.00),
(2, 'Mark', 'Designation', 1, 'testimonial/october2023/1YIK2iL0yST4T5FuDeUeRnrBSW6VTgXoKs3dG9ux.png', 1, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', '2023-10-03 14:14:10', '2023-10-03 14:14:10', 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `tp_users`
--

CREATE TABLE `tp_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` tinyint(4) NOT NULL COMMENT 'user role',
  `role_type` varchar(255) NOT NULL COMMENT 'user role',
  `avatar` varchar(255) DEFAULT '',
  `username` varchar(100) DEFAULT '',
  `full_name` varchar(150) DEFAULT '',
  `gender` varchar(15) DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT '',
  `birthday` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT '',
  `country_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `zip_code` varchar(255) DEFAULT '',
  `is_active` tinyint(1) DEFAULT 1,
  `is_email_verified` tinyint(1) DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_mobile_verified` tinyint(1) DEFAULT 0,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `github_id` varchar(255) DEFAULT NULL,
  `github_token` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `google_token` varchar(255) DEFAULT NULL,
  `google_refresh_token` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `facebook_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_users`
--

INSERT INTO `tp_users` (`id`, `role`, `role_type`, `avatar`, `username`, `full_name`, `gender`, `email`, `password`, `mobile`, `birthday`, `address`, `country_id`, `city`, `state`, `zip_code`, `is_active`, `is_email_verified`, `email_verified_at`, `is_mobile_verified`, `mobile_verified_at`, `rating`, `created_at`, `updated_at`, `deleted_at`, `last_seen`, `github_id`, `github_token`, `google_id`, `google_token`, `google_refresh_token`, `facebook_id`, `facebook_token`) VALUES
(1, 0, 'ADMIN', 'users/September2023/5nctZaJvkmzAN6FQK2GJuYQ61hf4CIDwOY6ecBOv.jpg', 'Admin', 'Admin', '', 'admin@gmail.com', '$2y$10$Rh70DvvxNbPzEcqhS59BLuE9zYboQ1lyNFlsx.Nv2RTdTmlgySooa', '123456789', NULL, 'theme portal', 103, NULL, NULL, '', 1, 1, NULL, 0, NULL, 4, '2023-08-12 05:07:28', '2023-09-30 11:29:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'USER', 'users/December2023/bodOPxiGWUK5Y5ReZA4rcaw7aJjfFNv466sG9Qkj.jpg', 'User', 'User', '', 'user@gmail.com', '$2y$10$xbGynxbCUCm1lCxYYA8iOuS4qgx7IN4s3SN1VxapD5au/Bvp5RPl6', '10101010101', NULL, 'test', 103, 'test', 'test', '', 1, 1, NULL, 0, NULL, NULL, '2023-09-13 13:21:46', '2023-12-05 10:09:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2, 'VENDOR', 'users/December2023/VV23qqADs0eq7aO37q5cSVQSAYM73ZYagQ2MsK9l.jpg', 'Author', 'Author', '', 'author@gmail.com', '$2y$10$OIJcVfMWIYhQ/Y2H/9kSqeHnk284FFLgt/EV9LzHLdAL2YgNj8E8i', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 0, NULL, 0, NULL, NULL, '2023-12-05 08:51:35', '2023-12-05 08:53:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tp_user_additional_infos`
--

CREATE TABLE `tp_user_additional_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_vendor_requests`
--

CREATE TABLE `tp_vendor_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `answers` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for pending 1 for accept 2 for reject',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_wallets`
--

CREATE TABLE `tp_wallets` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `credit` double NOT NULL DEFAULT 0,
  `debit` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for pending 1 for accept 2 for reject',
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp_wishlists`
--

CREATE TABLE `tp_wishlists` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_comments`
--
ALTER TABLE `tp_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_contactus`
--
ALTER TABLE `tp_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_countries`
--
ALTER TABLE `tp_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_discount_coupons`
--
ALTER TABLE `tp_discount_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_email_lists`
--
ALTER TABLE `tp_email_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_email_providers`
--
ALTER TABLE `tp_email_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_failed_jobs`
--
ALTER TABLE `tp_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `tp_home_contents`
--
ALTER TABLE `tp_home_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_languages`
--
ALTER TABLE `tp_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_migrations`
--
ALTER TABLE `tp_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_orders`
--
ALTER TABLE `tp_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_order_products`
--
ALTER TABLE `tp_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_pages`
--
ALTER TABLE `tp_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_password_reset_tokens`
--
ALTER TABLE `tp_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tp_payment_gateways`
--
ALTER TABLE `tp_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_personal_access_tokens`
--
ALTER TABLE `tp_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_personal_access_tokens_token_unique` (`token`),
  ADD KEY `tp_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tp_products`
--
ALTER TABLE `tp_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_product_analyses`
--
ALTER TABLE `tp_product_analyses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_product_categories`
--
ALTER TABLE `tp_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_product_metas`
--
ALTER TABLE `tp_product_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_product_sub_categories`
--
ALTER TABLE `tp_product_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_ratings`
--
ALTER TABLE `tp_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_settings`
--
ALTER TABLE `tp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_subscriber_emails`
--
ALTER TABLE `tp_subscriber_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_testimonials`
--
ALTER TABLE `tp_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_users`
--
ALTER TABLE `tp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_user_additional_infos`
--
ALTER TABLE `tp_user_additional_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_vendor_requests`
--
ALTER TABLE `tp_vendor_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_wallets`
--
ALTER TABLE `tp_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_wishlists`
--
ALTER TABLE `tp_wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tp_contactus`
--
ALTER TABLE `tp_contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_countries`
--
ALTER TABLE `tp_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tp_discount_coupons`
--
ALTER TABLE `tp_discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_email_lists`
--
ALTER TABLE `tp_email_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_email_providers`
--
ALTER TABLE `tp_email_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tp_failed_jobs`
--
ALTER TABLE `tp_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_home_contents`
--
ALTER TABLE `tp_home_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tp_languages`
--
ALTER TABLE `tp_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tp_migrations`
--
ALTER TABLE `tp_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tp_orders`
--
ALTER TABLE `tp_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_order_products`
--
ALTER TABLE `tp_order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_pages`
--
ALTER TABLE `tp_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tp_personal_access_tokens`
--
ALTER TABLE `tp_personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_products`
--
ALTER TABLE `tp_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_product_analyses`
--
ALTER TABLE `tp_product_analyses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_product_categories`
--
ALTER TABLE `tp_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_product_metas`
--
ALTER TABLE `tp_product_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_product_sub_categories`
--
ALTER TABLE `tp_product_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_settings`
--
ALTER TABLE `tp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `tp_subscriber_emails`
--
ALTER TABLE `tp_subscriber_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_testimonials`
--
ALTER TABLE `tp_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tp_users`
--
ALTER TABLE `tp_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tp_user_additional_infos`
--
ALTER TABLE `tp_user_additional_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tp_vendor_requests`
--
ALTER TABLE `tp_vendor_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
