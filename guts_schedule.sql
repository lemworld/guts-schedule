-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Generation Time: Sep 16, 2016 at 03:44 PM
-- Server version: 5.6.25-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guts_schedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `title`) VALUES
(1, 'Wisconsin'),
(2, 'Rosslyn'),
(3, 'Law Center'),
(4, 'Arlington'),
(5, 'Dupont');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `route_id` int(11) NOT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `long` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`id`, `title`, `route_id`, `lat`, `long`) VALUES
(1, 'Darnall Hall', 1, NULL, NULL),
(2, '3300 Whitehaven Street (Harris Building)', 1, NULL, NULL),
(3, '2115 Wisconsin Ave', 1, NULL, NULL),
(4, '2233 Wisconsin Ave', 1, NULL, NULL),
(5, 'West Road (Departs)', 2, NULL, NULL),
(6, 'Rosslyn Metro (Departs)', 2, NULL, NULL),
(7, 'Tandorf Road and Prospect Street', 3, NULL, NULL),
(8, 'Law Center', 3, NULL, NULL),
(9, 'Key Blvd & Ode', 4, '', ''),
(10, 'Key Blvd & Quinn', 4, '', ''),
(11, 'Lee Hwy & Adams', 4, '', ''),
(12, 'Lee Hwy & Cleveland', 4, '', ''),
(13, 'Lee Hwy & Spout Run', 4, '', ''),
(14, 'Kirkwood & 13th', 4, '', ''),
(15, 'Clarendon Blvd & N. Highland', 4, '', ''),
(16, 'Danville & 10th', 4, '', ''),
(17, 'Barton & 9th', 4, '', ''),
(18, 'Pershing & Wayne', 4, '', ''),
(19, 'Arlington Blvd & Queen', 4, '', ''),
(20, 'Rhodes & 14th', 4, '', ''),
(21, 'River Place', 4, '', ''),
(22, 'North Road (Arrives)', 4, '', ''),
(23, 'North Road (Departs)', 4, NULL, NULL),
(24, 'Kober Cogan (Departs)', 5, NULL, NULL),
(25, 'Dupont Circle (Departs)', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `day_pattern` varchar(10) NOT NULL,
  `time` time NOT NULL,
  `special` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`id`, `stop_id`, `day_pattern`, `time`, `special`) VALUES
(1, 1, '12345', '07:00:00', 0),
(2, 1, '12345', '07:10:00', 0),
(3, 1, '12345', '07:20:00', 0),
(4, 1, '12345', '07:30:00', 0),
(5, 1, '12345', '07:40:00', 0),
(6, 1, '12345', '07:50:00', 0),
(7, 1, '12345', '08:00:00', 0),
(8, 1, '12345', '08:10:00', 0),
(9, 1, '12345', '08:20:00', 0),
(10, 1, '12345', '08:30:00', 0),
(11, 1, '12345', '08:40:00', 0),
(12, 1, '12345', '08:50:00', 0),
(13, 1, '12345', '09:00:00', 0),
(14, 1, '12345', '09:10:00', 0),
(15, 1, '12345', '09:20:00', 0),
(16, 1, '12345', '09:30:00', 0),
(17, 1, '12345', '09:40:00', 0),
(18, 1, '12345', '10:00:00', 0),
(19, 1, '12345', '10:20:00', 0),
(20, 1, '12345', '10:40:00', 0),
(21, 1, '12345', '11:00:00', 0),
(22, 1, '12345', '11:20:00', 0),
(23, 1, '12345', '11:40:00', 0),
(24, 1, '12345', '12:00:00', 0),
(25, 1, '12345', '12:20:00', 0),
(26, 1, '12345', '12:40:00', 0),
(27, 1, '12345', '13:00:00', 0),
(28, 1, '12345', '13:20:00', 0),
(29, 1, '12345', '13:40:00', 0),
(30, 1, '12345', '14:00:00', 0),
(31, 1, '12345', '14:20:00', 0),
(32, 1, '12345', '14:40:00', 0),
(33, 1, '12345', '15:00:00', 0),
(34, 1, '12345', '15:10:00', 0),
(35, 1, '12345', '15:20:00', 0),
(36, 1, '12345', '15:30:00', 0),
(37, 1, '12345', '15:40:00', 0),
(38, 1, '12345', '15:50:00', 0),
(39, 1, '12345', '16:00:00', 0),
(40, 1, '12345', '16:10:00', 0),
(41, 1, '12345', '16:20:00', 0),
(42, 1, '12345', '16:30:00', 0),
(43, 1, '12345', '16:40:00', 0),
(44, 1, '12345', '16:50:00', 0),
(45, 1, '12345', '17:00:00', 0),
(46, 1, '12345', '17:10:00', 0),
(47, 1, '12345', '17:20:00', 0),
(48, 1, '12345', '17:30:00', 0),
(49, 1, '12345', '17:40:00', 0),
(50, 1, '12345', '17:50:00', 0),
(51, 1, '12345', '18:00:00', 0),
(52, 1, '12345', '18:10:00', 0),
(53, 1, '12345', '18:20:00', 0),
(54, 1, '12345', '18:30:00', 0),
(55, 1, '12345', '18:40:00', 0),
(56, 1, '12345', '18:50:00', 0),
(57, 1, '12345', '19:00:00', 0),
(58, 2, '12345', '07:05:00', 0),
(59, 2, '12345', '07:15:00', 0),
(60, 2, '12345', '07:25:00', 0),
(61, 2, '12345', '07:35:00', 0),
(62, 2, '12345', '07:45:00', 0),
(63, 2, '12345', '07:55:00', 0),
(64, 2, '12345', '08:05:00', 0),
(65, 2, '12345', '08:15:00', 0),
(66, 2, '12345', '08:25:00', 0),
(67, 2, '12345', '08:35:00', 0),
(68, 2, '12345', '08:45:00', 0),
(69, 2, '12345', '08:55:00', 0),
(70, 2, '12345', '09:05:00', 0),
(71, 2, '12345', '09:15:00', 0),
(72, 2, '12345', '09:25:00', 0),
(73, 2, '12345', '09:35:00', 0),
(74, 2, '12345', '09:45:00', 0),
(75, 2, '12345', '10:05:00', 0),
(76, 2, '12345', '10:25:00', 0),
(77, 2, '12345', '10:45:00', 0),
(78, 2, '12345', '11:05:00', 0),
(79, 2, '12345', '11:25:00', 0),
(80, 2, '12345', '11:45:00', 0),
(81, 2, '12345', '12:05:00', 0),
(82, 2, '12345', '12:25:00', 0),
(83, 2, '12345', '12:45:00', 0),
(84, 2, '12345', '13:05:00', 0),
(85, 2, '12345', '13:25:00', 0),
(86, 2, '12345', '13:45:00', 0),
(87, 2, '12345', '14:05:00', 0),
(88, 2, '12345', '14:25:00', 0),
(89, 2, '12345', '14:45:00', 0),
(90, 2, '12345', '15:05:00', 0),
(91, 2, '12345', '15:15:00', 0),
(92, 2, '12345', '15:25:00', 0),
(93, 2, '12345', '15:35:00', 0),
(94, 2, '12345', '15:45:00', 0),
(95, 2, '12345', '15:55:00', 0),
(96, 2, '12345', '16:05:00', 0),
(97, 2, '12345', '16:15:00', 0),
(98, 2, '12345', '16:25:00', 0),
(99, 2, '12345', '16:35:00', 0),
(100, 2, '12345', '16:45:00', 0),
(101, 2, '12345', '16:55:00', 0),
(102, 2, '12345', '17:05:00', 0),
(103, 2, '12345', '17:15:00', 0),
(104, 2, '12345', '17:25:00', 0),
(105, 2, '12345', '17:35:00', 0),
(106, 2, '12345', '17:45:00', 0),
(107, 2, '12345', '17:55:00', 0),
(108, 2, '12345', '18:05:00', 0),
(109, 2, '12345', '18:15:00', 0),
(110, 2, '12345', '18:25:00', 0),
(111, 2, '12345', '18:35:00', 0),
(112, 2, '12345', '18:45:00', 0),
(113, 2, '12345', '18:55:00', 0),
(114, 2, '12345', '19:05:00', 0),
(115, 3, '12345', '07:07:00', 0),
(116, 3, '12345', '07:17:00', 0),
(117, 3, '12345', '07:27:00', 0),
(118, 3, '12345', '07:37:00', 0),
(119, 3, '12345', '07:47:00', 0),
(120, 3, '12345', '07:57:00', 0),
(121, 3, '12345', '08:07:00', 0),
(122, 3, '12345', '08:17:00', 0),
(123, 3, '12345', '08:27:00', 0),
(124, 3, '12345', '08:37:00', 0),
(125, 3, '12345', '08:47:00', 0),
(126, 3, '12345', '08:57:00', 0),
(127, 3, '12345', '09:07:00', 0),
(128, 3, '12345', '09:17:00', 0),
(129, 3, '12345', '09:27:00', 0),
(130, 3, '12345', '09:37:00', 0),
(131, 3, '12345', '09:47:00', 0),
(132, 3, '12345', '10:07:00', 0),
(133, 3, '12345', '10:27:00', 0),
(134, 3, '12345', '10:47:00', 0),
(135, 3, '12345', '11:07:00', 0),
(136, 3, '12345', '11:27:00', 0),
(137, 3, '12345', '11:47:00', 0),
(138, 3, '12345', '12:07:00', 0),
(139, 3, '12345', '12:27:00', 0),
(140, 3, '12345', '12:47:00', 0),
(141, 3, '12345', '13:07:00', 0),
(142, 3, '12345', '13:27:00', 0),
(143, 3, '12345', '13:47:00', 0),
(144, 3, '12345', '14:07:00', 0),
(145, 3, '12345', '14:27:00', 0),
(146, 3, '12345', '14:47:00', 0),
(147, 3, '12345', '15:07:00', 0),
(148, 3, '12345', '15:17:00', 0),
(149, 3, '12345', '15:27:00', 0),
(150, 3, '12345', '15:37:00', 0),
(151, 3, '12345', '15:47:00', 0),
(152, 3, '12345', '15:57:00', 0),
(153, 3, '12345', '16:07:00', 0),
(154, 3, '12345', '16:17:00', 0),
(155, 3, '12345', '16:27:00', 0),
(156, 3, '12345', '16:37:00', 0),
(157, 3, '12345', '16:47:00', 0),
(158, 3, '12345', '16:57:00', 0),
(159, 3, '12345', '17:07:00', 0),
(160, 3, '12345', '17:17:00', 0),
(161, 3, '12345', '17:27:00', 0),
(162, 3, '12345', '17:37:00', 0),
(163, 3, '12345', '17:47:00', 0),
(164, 3, '12345', '17:57:00', 0),
(165, 3, '12345', '18:07:00', 0),
(166, 3, '12345', '18:17:00', 0),
(167, 3, '12345', '18:27:00', 0),
(168, 3, '12345', '18:37:00', 0),
(169, 3, '12345', '18:47:00', 0),
(170, 3, '12345', '18:57:00', 0),
(171, 3, '12345', '19:07:00', 0),
(172, 4, '12345', '07:09:00', 0),
(173, 4, '12345', '07:19:00', 0),
(174, 4, '12345', '07:29:00', 0),
(175, 4, '12345', '07:39:00', 0),
(176, 4, '12345', '07:49:00', 0),
(177, 4, '12345', '07:59:00', 0),
(178, 4, '12345', '08:09:00', 0),
(179, 4, '12345', '08:19:00', 0),
(180, 4, '12345', '08:29:00', 0),
(181, 4, '12345', '08:39:00', 0),
(182, 4, '12345', '08:49:00', 0),
(183, 4, '12345', '08:59:00', 0),
(184, 4, '12345', '09:09:00', 0),
(185, 4, '12345', '09:19:00', 0),
(186, 4, '12345', '09:29:00', 0),
(187, 4, '12345', '09:39:00', 0),
(188, 4, '12345', '09:49:00', 0),
(189, 4, '12345', '10:09:00', 0),
(190, 4, '12345', '10:29:00', 0),
(191, 4, '12345', '10:49:00', 0),
(192, 4, '12345', '11:09:00', 0),
(193, 4, '12345', '11:29:00', 0),
(194, 4, '12345', '11:49:00', 0),
(195, 4, '12345', '12:09:00', 0),
(196, 4, '12345', '12:29:00', 0),
(197, 4, '12345', '12:49:00', 0),
(198, 4, '12345', '13:09:00', 0),
(199, 4, '12345', '13:29:00', 0),
(200, 4, '12345', '13:49:00', 0),
(201, 4, '12345', '14:09:00', 0),
(202, 4, '12345', '14:29:00', 0),
(203, 4, '12345', '14:49:00', 0),
(204, 4, '12345', '15:09:00', 0),
(205, 4, '12345', '15:19:00', 0),
(206, 4, '12345', '15:29:00', 0),
(207, 4, '12345', '15:39:00', 0),
(208, 4, '12345', '15:49:00', 0),
(209, 4, '12345', '15:59:00', 0),
(210, 4, '12345', '16:09:00', 0),
(211, 4, '12345', '16:19:00', 0),
(212, 4, '12345', '16:29:00', 0),
(213, 4, '12345', '16:39:00', 0),
(214, 4, '12345', '16:49:00', 0),
(215, 4, '12345', '16:59:00', 0),
(216, 4, '12345', '17:09:00', 0),
(217, 4, '12345', '17:19:00', 0),
(218, 4, '12345', '17:29:00', 0),
(219, 4, '12345', '17:39:00', 0),
(220, 4, '12345', '17:49:00', 0),
(221, 4, '12345', '17:59:00', 0),
(222, 4, '12345', '18:09:00', 0),
(223, 4, '12345', '18:19:00', 0),
(224, 4, '12345', '18:29:00', 0),
(225, 4, '12345', '18:39:00', 0),
(226, 4, '12345', '18:49:00', 0),
(227, 4, '12345', '18:59:00', 0),
(228, 4, '12345', '19:09:00', 0),
(229, 7, '12345', '07:55:00', 0),
(230, 7, '12345', '09:05:00', 0),
(231, 7, '12345', '10:15:00', 0),
(232, 7, '12345', '11:40:00', 0),
(233, 7, '12345', '12:50:00', 0),
(234, 7, '12345', '14:00:00', 0),
(235, 7, '12345', '15:00:00', 0),
(236, 7, '12345', '17:00:00', 0),
(237, 7, '12345', '18:03:00', 0),
(238, 7, '12345', '19:10:00', 0),
(239, 7, '12345', '20:20:00', 0),
(240, 7, '12345', '21:35:00', 0),
(241, 8, '12345', '08:30:00', 0),
(242, 8, '12345', '09:40:00', 0),
(243, 8, '12345', '10:50:00', 0),
(244, 8, '12345', '12:15:00', 0),
(245, 8, '12345', '13:25:00', 0),
(246, 8, '12345', '14:35:00', 0),
(247, 8, '12345', '15:35:00', 0),
(248, 8, '12345', '17:35:00', 0),
(249, 8, '12345', '18:35:00', 0),
(250, 8, '12345', '19:50:00', 0),
(251, 8, '12345', '21:00:00', 0),
(252, 8, '12345', '22:10:00', 0),
(253, 23, '12345', '07:10:00', 0),
(254, 9, '12345', '07:16:00', 0),
(255, 10, '12345', '07:17:00', 0),
(256, 11, '12345', '07:18:00', 0),
(257, 12, '12345', '07:19:00', 0),
(258, 13, '12345', '07:20:00', 0),
(259, 14, '12345', '07:21:00', 0),
(260, 15, '12345', '07:23:00', 0),
(261, 16, '12345', '07:25:00', 0),
(262, 17, '12345', '07:26:00', 0),
(263, 18, '12345', '07:28:00', 0),
(264, 19, '12345', '07:32:00', 0),
(265, 20, '12345', '07:33:00', 0),
(266, 21, '12345', '07:35:00', 0),
(267, 22, '12345', '07:44:00', 0),
(268, 23, '12345', '08:00:00', 0),
(269, 9, '12345', '08:06:00', 0),
(270, 10, '12345', '08:07:00', 0),
(271, 11, '12345', '08:08:00', 0),
(272, 12, '12345', '08:09:00', 0),
(273, 13, '12345', '08:10:00', 0),
(274, 14, '12345', '08:11:00', 0),
(275, 15, '12345', '08:13:00', 0),
(276, 16, '12345', '08:15:00', 0),
(277, 17, '12345', '08:16:00', 0),
(278, 18, '12345', '08:18:00', 0),
(279, 19, '12345', '08:22:00', 0),
(280, 20, '12345', '08:23:00', 0),
(281, 21, '12345', '08:25:00', 0),
(282, 22, '12345', '08:34:00', 0),
(283, 23, '12345', '09:00:00', 0),
(284, 9, '12345', '09:06:00', 0),
(285, 10, '12345', '09:07:00', 0),
(286, 11, '12345', '09:08:00', 0),
(287, 12, '12345', '09:09:00', 0),
(288, 13, '12345', '09:10:00', 0),
(289, 14, '12345', '09:11:00', 0),
(290, 15, '12345', '09:13:00', 0),
(291, 16, '12345', '09:15:00', 0),
(292, 17, '12345', '09:16:00', 0),
(293, 18, '12345', '09:18:00', 0),
(294, 19, '12345', '09:22:00', 0),
(295, 20, '12345', '09:23:00', 0),
(296, 21, '12345', '09:25:00', 0),
(297, 22, '12345', '09:34:00', 0),
(298, 23, '12345', '10:15:00', 0),
(299, 9, '12345', '10:21:00', 0),
(300, 10, '12345', '10:22:00', 0),
(301, 11, '12345', '10:23:00', 0),
(302, 12, '12345', '10:24:00', 0),
(303, 13, '12345', '10:25:00', 0),
(304, 14, '12345', '10:26:00', 0),
(305, 15, '12345', '10:28:00', 0),
(306, 16, '12345', '10:30:00', 0),
(307, 17, '12345', '10:31:00', 0),
(308, 18, '12345', '10:33:00', 0),
(309, 19, '12345', '10:37:00', 0),
(310, 20, '12345', '10:38:00', 0),
(311, 21, '12345', '10:40:00', 0),
(312, 22, '12345', '10:49:00', 0),
(313, 23, '12345', '11:15:00', 0),
(314, 9, '12345', '11:21:00', 0),
(315, 10, '12345', '11:22:00', 0),
(316, 11, '12345', '11:23:00', 0),
(317, 12, '12345', '11:24:00', 0),
(318, 13, '12345', '11:25:00', 0),
(319, 14, '12345', '11:26:00', 0),
(320, 15, '12345', '11:28:00', 0),
(321, 16, '12345', '11:30:00', 0),
(322, 17, '12345', '11:31:00', 0),
(323, 18, '12345', '11:33:00', 0),
(324, 19, '12345', '11:37:00', 0),
(325, 20, '12345', '11:38:00', 0),
(326, 21, '12345', '11:40:00', 0),
(327, 22, '12345', '11:49:00', 0),
(328, 23, '12345', '16:20:00', 0),
(329, 9, '12345', '16:34:00', 0),
(330, 10, '12345', '16:35:00', 0),
(331, 11, '12345', '16:37:00', 0),
(332, 12, '12345', '16:38:00', 0),
(333, 13, '12345', '16:39:00', 0),
(334, 14, '12345', '16:40:00', 0),
(335, 15, '12345', '16:42:00', 0),
(336, 16, '12345', '16:44:00', 0),
(337, 17, '12345', '16:45:00', 0),
(338, 18, '12345', '16:47:00', 0),
(339, 19, '12345', '16:51:00', 0),
(340, 20, '12345', '16:52:00', 0),
(341, 21, '12345', '16:54:00', 0),
(342, 22, '12345', '17:03:00', 0),
(343, 23, '12345', '17:20:00', 0),
(344, 9, '12345', '17:34:00', 0),
(345, 10, '12345', '17:35:00', 0),
(346, 11, '12345', '17:37:00', 0),
(347, 12, '12345', '17:38:00', 0),
(348, 13, '12345', '17:39:00', 0),
(349, 14, '12345', '17:40:00', 0),
(350, 15, '12345', '17:42:00', 0),
(351, 16, '12345', '17:44:00', 0),
(352, 17, '12345', '17:45:00', 0),
(353, 18, '12345', '17:47:00', 0),
(354, 19, '12345', '17:51:00', 0),
(355, 20, '12345', '17:52:00', 0),
(356, 21, '12345', '17:54:00', 0),
(357, 22, '12345', '18:03:00', 0),
(358, 23, '12345', '18:20:00', 0),
(359, 9, '12345', '18:34:00', 0),
(360, 10, '12345', '18:35:00', 0),
(361, 11, '12345', '18:37:00', 0),
(362, 12, '12345', '18:38:00', 0),
(363, 13, '12345', '18:39:00', 0),
(364, 14, '12345', '18:40:00', 0),
(365, 15, '12345', '18:42:00', 0),
(366, 16, '12345', '18:44:00', 0),
(367, 17, '12345', '18:45:00', 0),
(368, 18, '12345', '18:47:00', 0),
(369, 19, '12345', '18:51:00', 0),
(370, 20, '12345', '18:52:00', 0),
(371, 21, '12345', '18:54:00', 0),
(372, 22, '12345', '19:03:00', 0),
(373, 23, '12345', '19:20:00', 0),
(374, 9, '12345', '19:34:00', 0),
(375, 10, '12345', '19:35:00', 0),
(376, 11, '12345', '19:37:00', 0),
(377, 12, '12345', '19:38:00', 0),
(378, 13, '12345', '19:39:00', 0),
(379, 14, '12345', '19:40:00', 0),
(380, 15, '12345', '19:42:00', 0),
(381, 16, '12345', '19:44:00', 0),
(382, 17, '12345', '19:45:00', 0),
(383, 18, '12345', '19:47:00', 0),
(384, 19, '12345', '19:51:00', 0),
(385, 20, '12345', '19:52:00', 0),
(386, 21, '12345', '19:54:00', 0),
(387, 22, '12345', '20:03:00', 0),
(388, 23, '12345', '21:30:00', 0),
(389, 9, '12345', '21:44:00', 0),
(390, 10, '12345', '21:45:00', 0),
(391, 11, '12345', '21:47:00', 0),
(392, 12, '12345', '21:48:00', 0),
(393, 13, '12345', '21:49:00', 0),
(394, 14, '12345', '21:50:00', 0),
(395, 15, '12345', '21:52:00', 0),
(396, 16, '12345', '21:54:00', 0),
(397, 17, '12345', '21:55:00', 0),
(398, 18, '12345', '21:57:00', 0),
(399, 19, '12345', '22:01:00', 0),
(400, 20, '12345', '22:02:00', 0),
(401, 21, '12345', '22:04:00', 0),
(402, 22, '12345', '22:13:00', 0),
(403, 23, '12345', '22:20:00', 0),
(404, 9, '12345', '22:34:00', 0),
(405, 10, '12345', '22:35:00', 0),
(406, 11, '12345', '22:37:00', 0),
(407, 12, '12345', '22:38:00', 0),
(408, 13, '12345', '22:39:00', 0),
(409, 14, '12345', '22:40:00', 0),
(410, 15, '12345', '22:42:00', 0),
(411, 16, '12345', '22:44:00', 0),
(412, 17, '12345', '22:45:00', 0),
(413, 18, '12345', '22:47:00', 0),
(414, 19, '12345', '22:51:00', 0),
(415, 20, '12345', '22:52:00', 0),
(416, 21, '12345', '22:54:00', 0),
(417, 22, '12345', '23:03:00', 0),
(418, 24, '12345', '06:00:00', 0),
(419, 24, '12345', '06:10:00', 0),
(420, 24, '12345', '06:20:00', 0),
(421, 24, '12345', '06:30:00', 0),
(422, 24, '12345', '06:35:00', 0),
(423, 24, '12345', '06:40:00', 0),
(424, 24, '12345', '06:45:00', 0),
(425, 24, '12345', '06:50:00', 0),
(426, 24, '12345', '06:55:00', 0),
(427, 24, '12345', '07:05:00', 0),
(428, 24, '12345', '07:10:00', 0),
(429, 24, '12345', '07:15:00', 0),
(430, 24, '12345', '07:20:00', 0),
(431, 24, '12345', '07:25:00', 0),
(432, 24, '12345', '07:30:00', 0),
(433, 24, '12345', '07:40:00', 0),
(434, 24, '12345', '07:45:00', 0),
(435, 24, '12345', '07:50:00', 0),
(436, 24, '12345', '07:55:00', 0),
(437, 24, '12345', '08:00:00', 0),
(438, 24, '12345', '08:05:00', 0),
(439, 24, '12345', '08:15:00', 0),
(440, 24, '12345', '08:20:00', 0),
(441, 24, '12345', '08:25:00', 0),
(442, 24, '12345', '08:30:00', 0),
(443, 24, '12345', '08:35:00', 0),
(444, 24, '12345', '08:40:00', 0),
(445, 24, '12345', '08:50:00', 0),
(446, 24, '12345', '08:55:00', 0),
(447, 24, '12345', '09:00:00', 0),
(448, 24, '12345', '09:05:00', 0),
(449, 24, '12345', '09:10:00', 0),
(450, 24, '12345', '09:15:00', 0),
(451, 24, '12345', '09:25:00', 0),
(452, 24, '12345', '09:35:00', 0),
(453, 24, '12345', '09:45:00', 0),
(454, 24, '12345', '10:00:00', 0),
(455, 24, '12345', '10:20:00', 0),
(456, 24, '12345', '10:40:00', 0),
(457, 24, '12345', '11:00:00', 0),
(458, 24, '12345', '11:20:00', 0),
(459, 24, '12345', '11:40:00', 0),
(460, 24, '12345', '12:00:00', 0),
(461, 24, '12345', '12:20:00', 0),
(462, 24, '12345', '12:40:00', 0),
(463, 24, '12345', '13:00:00', 0),
(464, 24, '12345', '13:20:00', 0),
(465, 24, '12345', '13:40:00', 0),
(466, 24, '12345', '14:00:00', 0),
(467, 24, '12345', '14:20:00', 0),
(468, 24, '12345', '14:40:00', 0),
(469, 24, '12345', '15:00:00', 0),
(470, 24, '12345', '15:10:00', 0),
(471, 24, '12345', '15:20:00', 0),
(472, 24, '12345', '15:30:00', 0),
(473, 24, '12345', '15:35:00', 0),
(474, 24, '12345', '15:40:00', 0),
(475, 24, '12345', '15:45:00', 0),
(476, 24, '12345', '15:50:00', 0),
(477, 24, '12345', '15:55:00', 0),
(478, 24, '12345', '16:05:00', 0),
(479, 24, '12345', '16:10:00', 0),
(480, 24, '12345', '16:15:00', 0),
(481, 24, '12345', '16:20:00', 0),
(482, 24, '12345', '16:25:00', 0),
(483, 24, '12345', '16:30:00', 0),
(484, 24, '12345', '16:40:00', 0),
(485, 24, '12345', '16:45:00', 0),
(486, 24, '12345', '16:50:00', 0),
(487, 24, '12345', '16:55:00', 0),
(488, 24, '12345', '17:00:00', 0),
(489, 24, '12345', '17:05:00', 0),
(490, 24, '12345', '17:15:00', 0),
(491, 24, '12345', '17:20:00', 0),
(492, 24, '12345', '17:25:00', 0),
(493, 24, '12345', '17:30:00', 0),
(494, 24, '12345', '17:35:00', 0),
(495, 24, '12345', '17:40:00', 0),
(496, 24, '12345', '17:50:00', 0),
(497, 24, '12345', '17:55:00', 0),
(498, 24, '12345', '18:00:00', 0),
(499, 24, '12345', '18:05:00', 0),
(500, 24, '12345', '18:10:00', 0),
(501, 24, '12345', '18:15:00', 0),
(502, 24, '12345', '18:25:00', 0),
(503, 24, '12345', '18:35:00', 0),
(504, 24, '12345', '18:45:00', 0),
(505, 24, '12345', '19:00:00', 0),
(506, 24, '12345', '19:20:00', 0),
(507, 24, '12345', '19:40:00', 0),
(508, 24, '12345', '20:00:00', 0),
(509, 24, '12345', '20:20:00', 0),
(510, 24, '12345', '20:40:00', 0),
(511, 24, '12345', '21:00:00', 0),
(512, 24, '12345', '21:20:00', 0),
(513, 24, '12345', '21:40:00', 0),
(514, 24, '12345', '22:00:00', 0),
(515, 24, '12345', '22:20:00', 0),
(516, 24, '12345', '22:40:00', 0),
(517, 24, '12345', '23:15:00', 0),
(518, 24, '12345', '23:45:00', 0),
(519, 25, '12345', '06:15:00', 0),
(520, 25, '12345', '06:25:00', 0),
(521, 25, '12345', '06:35:00', 0),
(522, 25, '12345', '06:45:00', 0),
(523, 25, '12345', '06:50:00', 0),
(524, 25, '12345', '06:55:00', 0),
(525, 25, '12345', '07:00:00', 0),
(526, 25, '12345', '07:05:00', 0),
(527, 25, '12345', '07:10:00', 0),
(528, 25, '12345', '07:20:00', 0),
(529, 25, '12345', '07:25:00', 0),
(530, 25, '12345', '07:30:00', 0),
(531, 25, '12345', '07:35:00', 0),
(532, 25, '12345', '07:40:00', 0),
(533, 25, '12345', '07:45:00', 0),
(534, 25, '12345', '07:55:00', 0),
(535, 25, '12345', '08:00:00', 0),
(536, 25, '12345', '08:05:00', 0),
(537, 25, '12345', '08:10:00', 0),
(538, 25, '12345', '08:15:00', 0),
(539, 25, '12345', '08:20:00', 0),
(540, 25, '12345', '08:30:00', 0),
(541, 25, '12345', '08:35:00', 0),
(542, 25, '12345', '08:40:00', 0),
(543, 25, '12345', '08:45:00', 0),
(544, 25, '12345', '08:50:00', 0),
(545, 25, '12345', '09:00:00', 0),
(546, 25, '12345', '09:05:00', 0),
(547, 25, '12345', '09:10:00', 0),
(548, 25, '12345', '09:15:00', 0),
(549, 25, '12345', '09:20:00', 0),
(550, 25, '12345', '09:25:00', 0),
(551, 25, '12345', '09:30:00', 0),
(552, 25, '12345', '09:40:00', 0),
(553, 25, '12345', '09:50:00', 0),
(554, 25, '12345', '10:00:00', 0),
(555, 25, '12345', '10:20:00', 0),
(556, 25, '12345', '10:40:00', 0),
(557, 25, '12345', '11:00:00', 0),
(558, 25, '12345', '11:20:00', 0),
(559, 25, '12345', '11:40:00', 0),
(560, 25, '12345', '12:00:00', 0),
(561, 25, '12345', '12:20:00', 0),
(562, 25, '12345', '12:40:00', 0),
(563, 25, '12345', '13:00:00', 0),
(564, 25, '12345', '13:20:00', 0),
(565, 25, '12345', '13:40:00', 0),
(566, 25, '12345', '14:00:00', 0),
(567, 25, '12345', '14:20:00', 0),
(568, 25, '12345', '14:40:00', 0),
(569, 25, '12345', '15:00:00', 0),
(570, 25, '12345', '15:15:00', 0),
(571, 25, '12345', '15:25:00', 0),
(572, 25, '12345', '15:35:00', 0),
(573, 25, '12345', '15:45:00', 0),
(574, 25, '12345', '15:50:00', 0),
(575, 25, '12345', '15:55:00', 0),
(576, 25, '12345', '16:00:00', 0),
(577, 25, '12345', '16:05:00', 0),
(578, 25, '12345', '16:10:00', 0),
(579, 25, '12345', '16:20:00', 0),
(580, 25, '12345', '16:25:00', 0),
(581, 25, '12345', '16:30:00', 0),
(582, 25, '12345', '16:35:00', 0),
(583, 25, '12345', '16:40:00', 0),
(584, 25, '12345', '16:45:00', 0),
(585, 25, '12345', '16:55:00', 0),
(586, 25, '12345', '17:00:00', 0),
(587, 25, '12345', '17:05:00', 0),
(588, 25, '12345', '17:10:00', 0),
(589, 25, '12345', '17:15:00', 0),
(590, 25, '12345', '17:20:00', 0),
(591, 25, '12345', '17:30:00', 0),
(592, 25, '12345', '17:35:00', 0),
(593, 25, '12345', '17:40:00', 0),
(594, 25, '12345', '17:45:00', 0),
(595, 25, '12345', '17:50:00', 0),
(596, 25, '12345', '17:55:00', 0),
(597, 25, '12345', '18:05:00', 0),
(598, 25, '12345', '18:10:00', 0),
(599, 25, '12345', '18:15:00', 0),
(600, 25, '12345', '18:20:00', 0),
(601, 25, '12345', '18:25:00', 0),
(602, 25, '12345', '18:30:00', 0),
(603, 25, '12345', '18:40:00', 0),
(604, 25, '12345', '18:50:00', 0),
(605, 25, '12345', '19:00:00', 0),
(606, 25, '12345', '19:20:00', 0),
(607, 25, '12345', '19:40:00', 0),
(608, 25, '12345', '20:00:00', 0),
(609, 25, '12345', '20:20:00', 0),
(610, 25, '12345', '20:40:00', 0),
(611, 25, '12345', '21:00:00', 0),
(612, 25, '12345', '21:20:00', 0),
(613, 25, '12345', '21:40:00', 0),
(614, 25, '12345', '22:00:00', 0),
(615, 25, '12345', '22:20:00', 0),
(616, 25, '12345', '22:40:00', 0),
(617, 25, '12345', '23:00:00', 0),
(618, 25, '12345', '23:30:00', 0),
(619, 25, '12345', '00:00:00', 0),
(620, 5, '12345', '04:45:00', 0),
(621, 5, '12345', '05:05:00', 0),
(622, 5, '12345', '05:20:00', 0),
(623, 5, '12345', '05:35:00', 0),
(624, 5, '12345', '05:50:00', 0),
(625, 5, '12345', '06:00:00', 0),
(626, 5, '12345', '06:10:00', 0),
(627, 5, '12345', '06:20:00', 0),
(628, 5, '12345', '06:30:00', 0),
(629, 5, '12345', '06:35:00', 0),
(630, 5, '12345', '06:40:00', 0),
(631, 5, '12345', '06:45:00', 0),
(632, 5, '12345', '06:50:00', 0),
(633, 5, '12345', '06:55:00', 0),
(634, 5, '12345', '07:05:00', 0),
(635, 5, '12345', '07:10:00', 0),
(636, 5, '12345', '07:15:00', 0),
(637, 5, '12345', '07:20:00', 0),
(638, 5, '12345', '07:25:00', 0),
(639, 5, '12345', '07:30:00', 0),
(640, 5, '12345', '07:40:00', 0),
(641, 5, '12345', '07:45:00', 0),
(642, 5, '12345', '07:50:00', 0),
(643, 5, '12345', '07:55:00', 0),
(644, 5, '12345', '08:00:00', 0),
(645, 5, '12345', '08:05:00', 0),
(646, 5, '12345', '08:15:00', 0),
(647, 5, '12345', '08:20:00', 0),
(648, 5, '12345', '08:25:00', 0),
(649, 5, '12345', '08:30:00', 0),
(650, 5, '12345', '08:35:00', 0),
(651, 5, '12345', '08:40:00', 0),
(652, 5, '12345', '08:50:00', 0),
(653, 5, '12345', '08:55:00', 0),
(654, 5, '12345', '09:00:00', 0),
(655, 5, '12345', '09:05:00', 0),
(656, 5, '12345', '09:10:00', 0),
(657, 5, '12345', '09:15:00', 0),
(658, 5, '12345', '09:25:00', 0),
(659, 5, '12345', '09:35:00', 0),
(660, 5, '12345', '09:45:00', 0),
(661, 5, '12345', '10:00:00', 0),
(662, 5, '12345', '10:20:00', 0),
(663, 5, '12345', '10:40:00', 0),
(664, 5, '12345', '11:00:00', 0),
(665, 5, '12345', '11:20:00', 0),
(666, 5, '12345', '11:40:00', 0),
(667, 5, '12345', '12:00:00', 0),
(668, 5, '12345', '12:20:00', 0),
(669, 5, '12345', '12:40:00', 0),
(670, 5, '12345', '13:00:00', 0),
(671, 5, '12345', '13:20:00', 0),
(672, 5, '12345', '13:40:00', 0),
(673, 5, '12345', '14:00:00', 0),
(674, 5, '12345', '14:20:00', 0),
(675, 5, '12345', '14:40:00', 0),
(676, 5, '12345', '15:00:00', 0),
(677, 5, '12345', '15:10:00', 0),
(678, 5, '12345', '15:20:00', 0),
(679, 5, '12345', '15:30:00', 0),
(680, 5, '12345', '15:35:00', 0),
(681, 5, '12345', '15:40:00', 0),
(682, 5, '12345', '15:45:00', 0),
(683, 5, '12345', '15:50:00', 0),
(684, 5, '12345', '15:55:00', 0),
(685, 5, '12345', '16:05:00', 0),
(686, 5, '12345', '16:10:00', 0),
(687, 5, '12345', '16:15:00', 0),
(688, 5, '12345', '16:20:00', 0),
(689, 5, '12345', '16:25:00', 0),
(690, 5, '12345', '16:30:00', 0),
(691, 5, '12345', '16:40:00', 0),
(692, 5, '12345', '16:45:00', 0),
(693, 5, '12345', '16:50:00', 0),
(694, 5, '12345', '16:55:00', 0),
(695, 5, '12345', '17:00:00', 0),
(696, 5, '12345', '17:05:00', 0),
(697, 5, '12345', '17:15:00', 0),
(698, 5, '12345', '17:20:00', 0),
(699, 5, '12345', '17:25:00', 0),
(700, 5, '12345', '17:30:00', 0),
(701, 5, '12345', '17:35:00', 0),
(702, 5, '12345', '17:40:00', 0),
(703, 5, '12345', '17:50:00', 0),
(704, 5, '12345', '17:55:00', 0),
(705, 5, '12345', '18:00:00', 0),
(706, 5, '12345', '18:05:00', 0),
(707, 5, '12345', '18:10:00', 0),
(708, 5, '12345', '18:15:00', 0),
(709, 5, '12345', '18:25:00', 0),
(710, 5, '12345', '18:35:00', 0),
(711, 5, '12345', '18:45:00', 0),
(712, 5, '12345', '19:00:00', 0),
(713, 5, '12345', '19:20:00', 0),
(714, 5, '12345', '19:40:00', 0),
(715, 5, '12345', '20:00:00', 0),
(716, 5, '12345', '20:20:00', 0),
(717, 5, '12345', '20:40:00', 0),
(718, 5, '12345', '21:00:00', 0),
(719, 5, '12345', '21:20:00', 0),
(720, 5, '12345', '21:40:00', 0),
(721, 5, '12345', '22:00:00', 0),
(722, 5, '12345', '22:20:00', 0),
(723, 5, '12345', '22:40:00', 0),
(724, 5, '12345', '23:15:00', 0),
(725, 5, '12345', '23:45:00', 0),
(726, 6, '12345', '05:00:00', 0),
(727, 6, '12345', '05:15:00', 0),
(728, 6, '12345', '05:30:00', 0),
(729, 6, '12345', '05:45:00', 0),
(730, 6, '12345', '06:05:00', 0),
(731, 6, '12345', '06:15:00', 0),
(732, 6, '12345', '06:25:00', 0),
(733, 6, '12345', '06:35:00', 0),
(734, 6, '12345', '06:45:00', 0),
(735, 6, '12345', '06:50:00', 0),
(736, 6, '12345', '06:55:00', 0),
(737, 6, '12345', '07:00:00', 0),
(738, 6, '12345', '07:05:00', 0),
(739, 6, '12345', '07:10:00', 0),
(740, 6, '12345', '07:20:00', 0),
(741, 6, '12345', '07:25:00', 0),
(742, 6, '12345', '07:30:00', 0),
(743, 6, '12345', '07:35:00', 0),
(744, 6, '12345', '07:40:00', 0),
(745, 6, '12345', '07:45:00', 0),
(746, 6, '12345', '07:55:00', 0),
(747, 6, '12345', '08:00:00', 0),
(748, 6, '12345', '08:05:00', 0),
(749, 6, '12345', '08:10:00', 0),
(750, 6, '12345', '08:15:00', 0),
(751, 6, '12345', '08:20:00', 0),
(752, 6, '12345', '08:30:00', 0),
(753, 6, '12345', '08:35:00', 0),
(754, 6, '12345', '08:40:00', 0),
(755, 6, '12345', '08:45:00', 0),
(756, 6, '12345', '08:50:00', 0),
(757, 6, '12345', '09:00:00', 0),
(758, 6, '12345', '09:05:00', 0),
(759, 6, '12345', '09:10:00', 0),
(760, 6, '12345', '09:15:00', 0),
(761, 6, '12345', '09:20:00', 0),
(762, 6, '12345', '09:25:00', 0),
(763, 6, '12345', '09:30:00', 0),
(764, 6, '12345', '09:40:00', 0),
(765, 6, '12345', '09:50:00', 0),
(766, 6, '12345', '10:00:00', 0),
(767, 6, '12345', '10:20:00', 0),
(768, 6, '12345', '10:40:00', 0),
(769, 6, '12345', '11:00:00', 0),
(770, 6, '12345', '11:20:00', 0),
(771, 6, '12345', '11:40:00', 0),
(772, 6, '12345', '12:00:00', 0),
(773, 6, '12345', '12:20:00', 0),
(774, 6, '12345', '12:40:00', 0),
(775, 6, '12345', '13:00:00', 0),
(776, 6, '12345', '13:20:00', 0),
(777, 6, '12345', '13:40:00', 0),
(778, 6, '12345', '14:00:00', 0),
(779, 6, '12345', '14:20:00', 0),
(780, 6, '12345', '14:40:00', 0),
(781, 6, '12345', '15:00:00', 0),
(782, 6, '12345', '15:15:00', 0),
(783, 6, '12345', '15:25:00', 0),
(784, 6, '12345', '15:35:00', 0),
(785, 6, '12345', '15:45:00', 0),
(786, 6, '12345', '15:50:00', 0),
(787, 6, '12345', '15:55:00', 0),
(788, 6, '12345', '16:00:00', 0),
(789, 6, '12345', '16:05:00', 0),
(790, 6, '12345', '16:10:00', 0),
(791, 6, '12345', '16:20:00', 0),
(792, 6, '12345', '16:25:00', 0),
(793, 6, '12345', '16:30:00', 0),
(794, 6, '12345', '16:35:00', 0),
(795, 6, '12345', '16:40:00', 0),
(796, 6, '12345', '16:45:00', 0),
(797, 6, '12345', '16:55:00', 0),
(798, 6, '12345', '17:00:00', 0),
(799, 6, '12345', '17:05:00', 0),
(800, 6, '12345', '17:10:00', 0),
(801, 6, '12345', '17:15:00', 0),
(802, 6, '12345', '17:20:00', 0),
(803, 6, '12345', '17:30:00', 0),
(804, 6, '12345', '17:35:00', 0),
(805, 6, '12345', '17:40:00', 0),
(806, 6, '12345', '17:45:00', 0),
(807, 6, '12345', '17:50:00', 0),
(808, 6, '12345', '17:55:00', 0),
(809, 6, '12345', '18:05:00', 0),
(810, 6, '12345', '18:10:00', 0),
(811, 6, '12345', '18:15:00', 0),
(812, 6, '12345', '18:20:00', 0),
(813, 6, '12345', '18:25:00', 0),
(814, 6, '12345', '18:30:00', 0),
(815, 6, '12345', '18:40:00', 0),
(816, 6, '12345', '18:50:00', 0),
(817, 6, '12345', '19:00:00', 0),
(818, 6, '12345', '19:20:00', 0),
(819, 6, '12345', '19:40:00', 0),
(820, 6, '12345', '20:00:00', 0),
(821, 6, '12345', '20:20:00', 0),
(822, 6, '12345', '20:40:00', 0),
(823, 6, '12345', '21:00:00', 0),
(824, 6, '12345', '21:20:00', 0),
(825, 6, '12345', '21:40:00', 0),
(826, 6, '12345', '22:00:00', 0),
(827, 6, '12345', '22:20:00', 0),
(828, 6, '12345', '22:40:00', 0),
(829, 6, '12345', '23:00:00', 0),
(830, 6, '12345', '23:30:00', 0),
(831, 6, '12345', '00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=832;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;