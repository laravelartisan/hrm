-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2016 at 05:37 PM
-- Server version: 5.6.27-0ubuntu0.14.04.1
-- PHP Version: 5.6.16-2+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara-erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_field_to_tables`
--

CREATE TABLE `add_field_to_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`) VALUES
(1, 103, NULL, 'khjkhk', '45545', '545454545', 'hkjhkh', 'Active', 1),
(2, 103, NULL, '46464', '646464', '646464', '6646464', 'Active', 1),
(5, 103, NULL, '46464g', '646464gfg', '646464gfg', '6646464g', 'Active', 1),
(7, 103, NULL, '46464gf', '646464gfgf', '646464gfgf', '6646464gf', 'Active', 1),
(8, 103, NULL, '46464gft', '646464gfgft', '646464gfgft', '6646464gft', 'Active', 1),
(10, 103, 'dfdsfds', '46464gftf', '646464gfgftf', '646464gfgftf', '6646464gftf', 'Active', 1),
(11, 105, '454545454', '454545454', '554545454', '5454545454', '454545454', 'Active', 1),
(13, 107, '454545454sa', '454545454sas', '554545454asa', '5454545454asa', '454545454sas', 'Active', 1),
(15, 109, '454545454salkjljlkjpoopo', 'klklkklkiu978797675645qa988', '5545f45454asa565', '5454f545454asadre', 'iuy7865675r', 'Active', 1),
(16, 110, '7891lkiiur', '415bkghjfdchj', 'kjgzxcv15874', 'ktrehg9658', 'ghjgtrf4gjgug568', 'Active', 1),
(17, 111, '7891lkiiurg', '415bkghjfdchjg', 'kjgzxcv15874g', 'ktrehg9658g', 'ghjgtrf4gjgug568g', 'Active', 1),
(18, 112, '787hfdrttwtdhij7', 'kjhjvdgfst78', 'oiuytre', '4554qwe', 'jkhkjghjgfj', 'Active', 1),
(19, 113, '4578787soiouioeyr', 'sfhsd78788', 'fjlksdjfl454545', 'sdfjlw898989', 'euwroiu787878', 'Active', 1),
(20, 114, '1235879pl', 'hukk', 'iscifcs', 'kjkj8948787', 'branch7878', 'Active', 1),
(21, 115, '1235879plf', 'fhukk', 'iscifcsf', 'kjkj8948787f', 'branch7878f', 'Active', 1),
(22, 116, '986572', '125489', 'ifcsll', 'panafdf98', 'barancilkl', 'Active', 1),
(24, 118, '986572wws', '125489fs', 'sifcsllf', 'panafdf98fs', 'barancilklfs', 'Active', 1),
(25, 119, '4878756ljkhgufy', 'gfxhghjkl899', 'sryuhihhgfy797', 'xygvrrtuh988', 'hghvcrtryuij8978', 'Active', 1),
(26, 120, '4878756ljkhgufyg', 'gfxhghjkl899g', 'sryuhihhgfy797g', 'xygvrrtuh988g', 'hghvcrtryuij8978g', 'Active', 1),
(27, 120, '4878756ljkhgufygd', 'dgfxhghjkl899g', 'sryuhihhgfy797gd', 'dxygvrrtuh988g', 'hghvcrtryuij8978gd', 'Active', 1),
(28, 121, '4548787asasqwq', 'dkpfpdfipkp89879', 'kjuhikjl97946446', 'frwsdfgh7452', 'cohsiuyfs7746', 'Active', 1),
(31, 120, '4878756ldjkhgufygd', 'dgfxhghdjkl899g', 'sryuhihhdgfy797gd', 'dxygvrrtuh98d8g', 'hghvcrtrdyuij8978gd', 'Active', 1),
(33, 120, '4878756ldjkshgufygd', 'dgfxhghdjkl899gs', 'ssryuhihhdgfy797gd', 'dxygvrrtuh98d8gs', 'hghvcrtrdyuij8978gds', 'Active', 1),
(34, 120, 's4878756ldjkshgufygd', 'dsgfxhghdjkl899gs', 'ssryushihhdgfy797gd', 'dxygvrsrtuh98d8gs', 'hghsvcrtrdyuij8978gds', 'Active', 1),
(35, 120, 's487c8756ldjkshgufygd', 'dsgfxhghdjkl899gsc', 'ssryushihhdgfy797cgd', 'dxygvrsrtuh98d8cgs', 'hghsvcrtrdyuij8978gdsc', 'Active', 1),
(36, 120, 's487c8756ldjkshgufygdf', 'dsgfxhghdjkl899gscf', 'ssryushihhdgfy797cgdf', 'dxygvrsrtuh98d8cgsf', 'hghsvcrtrdyuij8978gdscf', 'Active', 1),
(37, 120, 's487c8756ldjkshgudfygdf', 'dsgfxhghdjkl89d9gscf', 'ssryushihhdgfy797dcgdf', 'dxygvrsrtuh98dd8cgsf', 'hghsvcrtrdyuij89d78gdscf', 'Active', 1),
(38, 120, 's487c8756ldjkdshgudfygdf', 'dsgfxhghdjkld89d9gscf', 'ssryushihhddgfy797dcgdf', 'dxygvrsrtuhd98dd8cgsf', 'hghsvcrtrdyudij89d78gdscf', 'Active', 1),
(39, 124, '1258963', '3695214', '125896', '245879', '1258963', 'Active', 1),
(41, 120, 's487c8756ldjekdshgudfygdf', 'dsgfxhghdjkled89d9gscf', 'ssryushihhddgefy797dcgdf', 'dxygvrsrtuhd98dd8cgsfe', 'hghsvcrtrdyudeij89d78gdscf', 'Active', 1),
(42, 120, 's487c8756ldjekdshgudfygdfr', 'dsgfxhghdjkled89d9gscfr', 'ssryushihhddgefy797dcgdfr', 'dxygvrsrtuhd98dd8cgsfer', 'hghsvcrtrdyudeij89d78gdscfr', 'Active', 1),
(43, 120, 's487c8756ldjekddshgudfygdfr', 'dsgfxhghdjkleqd89d9gscfr', 'ssryushihhdrdgefy797dcgdfr', 'dxygvrsrturhd98dd8cgsfer', 'hghsvcrtrdryudeij89d78gdscfr', 'Active', 1),
(44, 120, 's487c8756ldjekddsdhgudfygdfr', 'dsgfxhghdjkleqdd89d9gscfr', 'ssryushihhdrdgefd797dcgdfr', 'dxygvrsrturhd98ddd8cgsfer', 'hghsvcrtrdryudeid89d78gdscfr', 'Active', 1),
(46, 124, '12589632', '36952142', '1258962', '2458792', '12589632', 'Active', 1),
(47, 124, '12589632f', '36952142f', 'f1258962', '2458792f', '12589632f', 'Active', 1),
(48, 126, '147852147', '258741258', '1254875412', '15963587456', '2145874521', 'Active', 1),
(49, 126, '1478521c47', '2587412c58', '125487541c2', '1596358745c6', '21458745c21', 'Active', 1),
(51, 120, 'akshay123', 'Chandra', '1598647', '5789425', 'Mayaboti', 'Active', 1),
(52, 128, 'salman', 'IFIC', '12348957', 'abc125489', 'Delhi', 'Active', 1),
(53, 129, '45454545454', '45454545454', '4545454545', '4544445454545', '4545454545', 'Active', 1),
(54, 124, '12589632fd', '36952142fd', 'f1258962d', '2458792fd', '12589632fd', 'Active', 1),
(55, 120, 'akshay123d', 'Chandrad', '1598647d', '5789425d', 'Mayabotid', 'Active', 1),
(56, 120, 'akshay123dd', 'Chandradd', '1598647dd', '5789425dd', 'Mayabotidd', 'Active', 1),
(57, 120, 'akshay123ddf', 'Chandraddf', '1598647ddf', '5789425ddf', 'Mayabotiddf', 'Active', 1),
(58, 128, 'salmana', 'IFICb', '12348957f', 'abc125489f', 'Delhibr', 'Active', 1),
(59, 130, '7887878787', '4646454654', '798797987', '4646656', '465465445', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_rules`
--

CREATE TABLE `bonus_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `position`) VALUES
(2, 'Hr', 'Active', 0),
(3, 'Management', 'Active', 0),
(4, 'IT', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department_shift`
--

CREATE TABLE `department_shift` (
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department_shift`
--

INSERT INTO `department_shift` (`department_id`, `shift_id`) VALUES
(2, 11),
(4, 11),
(4, 10),
(3, 11),
(2, 1),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`) VALUES
(1, 4, 'Sr Software Engineer', 'Active', NULL),
(3, 3, 'Officer', 'Active', NULL),
(4, 4, 'Web Developer', 'Active', NULL),
(5, 2, 'Dfdsf', 'Sdfdsf', NULL),
(6, 3, 'Sr Officer', 'Active', NULL),
(7, 3, 'Jr Officer', '454', NULL),
(8, 3, 'Sr Manager', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emailer_id` int(11) NOT NULL,
  `emailer_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`) VALUES
(42, 'raja@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(43, 'kamu@kamu.com', 73, 'Erp\\Models\\User\\User', 0, 0),
(44, 'anis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0),
(45, 'harun@harun.com', 76, 'Erp\\Models\\User\\User', 0, 0),
(46, 'ala@ala.com', 77, 'Erp\\Models\\User\\User', 0, 0),
(47, 'harun@gmail.com', 76, 'Erp\\Models\\User\\User', 0, 0),
(48, 'sami@gmail.com', 80, 'Erp\\Models\\User\\User', 0, 0),
(49, 'masum@gmail.com', 83, 'Erp\\Models\\User\\User', 0, 0),
(50, 'masum@yahoo.com', 84, 'Erp\\Models\\User\\User', 0, 0),
(51, 'masum@email.com', 83, 'Erp\\Models\\User\\User', 0, 0),
(60, 'danis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0),
(61, 'monir@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0),
(62, 'monirul@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0),
(63, 'huzurd@gmail.com', 87, 'Erp\\Models\\User\\User', 0, 0),
(64, 'admin@yahoo.com', 90, 'Erp\\Models\\User\\User', 0, 0),
(65, 'huzurr@gmail.com', 91, 'Erp\\Models\\User\\User', 0, 0),
(66, 'suniya@yahoo.com', 92, 'Erp\\Models\\User\\User', 0, 0),
(67, 'rajas@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(68, 'raj@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(69, 'superadmin@superadmin.com', 93, 'Erp\\Models\\User\\User', 0, 0),
(70, 'firoza@yahoo.com', 94, 'Erp\\Models\\User\\User', 0, 0),
(71, 'firozaa@yahoo.com', 95, 'Erp\\Models\\User\\User', 0, 0),
(72, 'so@gmail.com', 96, 'Erp\\Models\\User\\User', 0, 0),
(73, 'jjkjjk@yahoo.com', 97, 'Erp\\Models\\User\\User', 0, 0),
(74, 'jkjkjk@ouo.com', 98, 'Erp\\Models\\User\\User', 0, 0),
(75, 'kjkjkjkj@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(76, 'kjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(77, 'dkjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(78, 'dkjkjkff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(79, 'dkjkjkffse@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0),
(80, 'dkjkjkffse@uiuytjhjg.kj', 99, 'Erp\\Models\\User\\User', 0, 0),
(81, 'hjk@yu.piouiy', 100, 'Erp\\Models\\User\\User', 0, 0),
(82, 'lftrt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(83, 'lftrdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(84, 'lftrdft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(85, 'lftrdftg@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(86, 'lft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(87, 'lfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(88, 'ulfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(89, 'ulfdht@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(90, 'ulfdhft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(91, 'ulfdhfft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(92, 'ulfdhffwt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0),
(93, 'jlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(94, 'jerlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(95, 'jerlretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(96, 'jer4lretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(97, 'jer4lretyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(98, 'jer4lrfetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(99, 'jer4lrfeetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(100, 'jer4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(101, 'jerw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(102, 'rw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(103, 'w4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0),
(104, 'lkjljl@jl.khkjh', 104, 'Erp\\Models\\User\\User', 0, 0),
(105, 'lkjljwl@jl.khkjh', 105, 'Erp\\Models\\User\\User', 0, 0),
(106, 'lkjljwl@jl.khkjhf', 106, 'Erp\\Models\\User\\User', 0, 0),
(107, 'qlkjljwl@jl.khkjhf', 107, 'Erp\\Models\\User\\User', 0, 0),
(108, 'qlkjwwl@jl.khkjhf', 108, 'Erp\\Models\\User\\User', 0, 0),
(109, 'qluipoil@jl.khkjhf', 109, 'Erp\\Models\\User\\User', 0, 0),
(110, 'kjk@iyt.com', 110, 'Erp\\Models\\User\\User', 0, 0),
(111, 'kjke@iyt.com', 111, 'Erp\\Models\\User\\User', 0, 0),
(112, 'email@uyty.kjhjk', 112, 'Erp\\Models\\User\\User', 0, 0),
(113, 'lhlkhlh@jh.joiuo', 113, 'Erp\\Models\\User\\User', 0, 0),
(114, 'hals@uyo.com', 114, 'Erp\\Models\\User\\User', 0, 0),
(115, 'halsr@uyo.com', 115, 'Erp\\Models\\User\\User', 0, 0),
(116, 'iuyt@jiue.com', 116, 'Erp\\Models\\User\\User', 0, 0),
(117, 'iuyt@jiure.com', 117, 'Erp\\Models\\User\\User', 0, 0),
(118, 'iuytqw@jiudre.com', 118, 'Erp\\Models\\User\\User', 0, 0),
(119, 'hemD@email.com', 119, 'Erp\\Models\\User\\User', 0, 0),
(120, 'hemD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(121, 'hemeD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(122, 'ljlkjlkjlj@hjh.jk', 121, 'Erp\\Models\\User\\User', 0, 0),
(123, 'ljlkjlkwjlj@hjh.jk', 122, 'Erp\\Models\\User\\User', 0, 0),
(124, 'sami@sami.com', 123, 'Erp\\Models\\User\\User', 0, 0),
(125, 'hemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(126, 'hsemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(127, 'hsemesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(128, 'hsesmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(129, 'hsesdmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(130, 'hsesdfmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(131, 'hsesdfmesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(132, 'hsesdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(133, 'hello@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(134, 'hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(135, '1hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(136, '1hsedfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(137, '1hsedfmfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(138, '1hsedfemfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(139, 'hekki@heu.com', 125, 'Erp\\Models\\User\\User', 0, 0),
(140, 'helleo@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(141, 'helleod@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0),
(142, 'r@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0),
(143, 'sumaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0),
(144, 'sumaaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0),
(145, 'sdsd@kjk.jkjk', 127, 'Erp\\Models\\User\\User', 0, 0),
(146, 'akki@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(147, 'sallu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0),
(148, 'rrr@gmail.com', 129, 'Erp\\Models\\User\\User', 0, 0),
(149, 'helleod@hyo.comg', 124, 'Erp\\Models\\User\\User', 0, 0),
(150, 'ak@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(151, 'akk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(152, 'kk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0),
(153, 'salu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0),
(154, 'test@gmail.com', 130, 'Erp\\Models\\User\\User', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_histories`
--

CREATE TABLE `employee_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `dept_join_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_histories`
--

INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `dept_join_date`, `status`, `position`) VALUES
(3, 96, 2, 3, NULL, NULL, NULL),
(4, 97, 3, 6, NULL, NULL, NULL),
(5, 98, 3, 3, '2016-01-17 18:00:00', NULL, NULL),
(6, 99, 3, 3, '2016-12-05 18:00:00', NULL, NULL),
(7, 99, 3, 3, '2016-01-18 18:00:00', NULL, NULL),
(8, 99, 4, 1, '2016-01-18 18:00:00', NULL, NULL),
(9, 99, 4, 1, '2016-01-04 18:00:00', NULL, NULL),
(10, 99, 4, 1, '2016-01-11 18:00:00', NULL, NULL),
(11, 99, 4, 1, '2016-01-02 18:00:00', NULL, NULL),
(12, 100, 3, 3, NULL, NULL, NULL),
(13, 102, 3, 3, NULL, NULL, NULL),
(14, 102, 3, 3, NULL, NULL, NULL),
(15, 102, 3, 3, NULL, NULL, NULL),
(16, 102, 3, 3, NULL, NULL, NULL),
(17, 102, 3, 3, '2016-01-04 18:00:00', NULL, NULL),
(18, 102, 3, 3, '2016-01-03 18:00:00', NULL, NULL),
(19, 102, 3, 3, '2016-01-18 18:00:00', NULL, NULL),
(20, 102, 3, 3, '2016-01-18 18:00:00', NULL, NULL),
(21, 102, 3, 3, '2016-01-18 18:00:00', NULL, NULL),
(22, 102, 3, 3, '2016-01-18 18:00:00', NULL, NULL),
(23, 102, 3, 3, '2016-01-18 18:00:00', NULL, NULL),
(24, 103, 2, 5, '2016-09-18 18:00:00', NULL, NULL),
(25, 103, 2, 5, '2016-01-18 18:00:00', NULL, NULL),
(26, 103, 2, 5, '2016-01-18 18:00:00', NULL, NULL),
(27, 103, 2, 5, '2016-01-18 18:00:00', NULL, NULL),
(28, 103, 2, 5, '2016-01-18 18:00:00', NULL, NULL),
(29, 103, 2, 5, '2016-01-18 18:00:00', NULL, NULL),
(30, 103, 2, 5, '2016-01-18 18:00:00', NULL, NULL),
(31, 103, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(32, 103, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(33, 103, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(34, 103, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(35, 104, 2, 5, '2016-08-19 18:00:00', NULL, NULL),
(36, 105, 3, 3, '2016-08-19 18:00:00', NULL, NULL),
(37, 106, 3, 6, '2016-08-19 18:00:00', NULL, NULL),
(38, 107, 2, 5, '2016-08-19 18:00:00', NULL, NULL),
(39, 108, 3, 6, '2016-08-19 18:00:00', NULL, NULL),
(40, 109, 2, 5, '2016-08-19 18:00:00', NULL, NULL),
(41, 110, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(42, 111, 3, 3, '2016-01-19 18:00:00', NULL, NULL),
(43, 112, 3, 3, '2016-01-19 18:00:00', NULL, NULL),
(44, 113, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(45, 114, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(46, 115, 3, 6, '2016-01-19 18:00:00', NULL, NULL),
(47, 116, 3, 3, '2016-01-19 18:00:00', NULL, NULL),
(48, 117, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(49, 118, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(50, 119, 3, 6, '2016-01-19 18:00:00', NULL, NULL),
(51, 120, 2, 5, '2016-01-19 18:00:00', NULL, NULL),
(52, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(53, 121, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(56, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(57, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(58, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(59, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(60, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(61, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(62, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(63, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(64, 124, 3, 6, '2016-01-20 18:00:00', NULL, NULL),
(65, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(66, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(67, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(68, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(69, 120, 2, 5, '2016-01-20 18:00:00', NULL, NULL),
(71, 124, 3, 6, '2016-01-20 18:00:00', NULL, NULL),
(72, 124, 3, 6, '2016-01-20 18:00:00', NULL, NULL),
(73, 126, 3, 7, '2016-01-20 18:00:00', NULL, NULL),
(74, 126, 3, 7, '2016-01-20 18:00:00', NULL, NULL),
(76, 120, 2, 5, '2016-01-04 18:00:00', NULL, NULL),
(77, 128, 3, 6, '2016-01-04 18:00:00', NULL, NULL),
(78, 129, 2, 5, '2016-02-03 18:00:00', NULL, NULL),
(79, 124, 3, 3, '2016-02-16 18:00:00', NULL, NULL),
(80, 120, 4, 1, '2016-02-02 18:00:00', NULL, NULL),
(81, 120, 2, 5, '2016-02-01 18:00:00', NULL, NULL),
(82, 120, 2, 5, '2016-02-08 18:00:00', NULL, NULL),
(83, 128, 2, 5, '2016-02-04 18:00:00', NULL, NULL),
(84, 130, 2, 5, '2016-09-01 18:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `status`) VALUES
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, 'Ygi');

-- --------------------------------------------------------

--
-- Table structure for table `gender_translations`
--

CREATE TABLE `gender_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `gender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gender_translations`
--

INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`) VALUES
(17, 17, 'Male', 'en'),
(18, 18, 'Female', 'en'),
(19, 19, 'Common', 'en'),
(20, 20, 'Gender', 'en'),
(21, 21, 'Hi', 'en'),
(22, 21, 'Gvu', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `holydays`
--

CREATE TABLE `holydays` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `occasion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holydays`
--

INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`) VALUES
(1, '2016-01-24', 'Optional', 2, 1, NULL),
(2, '2016-01-04', 'Winter', 2, 1, NULL),
(3, '2016-01-06', 'Tour', 2, 2, NULL),
(4, '2016-01-07', 'Hello Trip', 2, 1, NULL),
(5, '0000-00-00', 'Study Tour', 2, 1, NULL),
(6, '2016-01-25', 'Dfdsgdsgsd', 1, 1, NULL),
(7, '2016-01-25', 'New Vacation', 2, 2, NULL),
(8, '2016-01-06', 'Gsdgsdg', 1, 1, NULL),
(9, '2016-01-07', 'Testing', 1, 1, NULL),
(10, '2016-01-06', 'Fdsfsdf', 1, 2, NULL),
(11, '2016-02-02', 'Martyrs Day', 5, 1, NULL),
(12, '2016-02-17', 'Dayoff', 6, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holy_day_types`
--

CREATE TABLE `holy_day_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holy_day_types`
--

INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`) VALUES
(1, 'Rgional', 1, NULL),
(2, 'Office Owned ', 1, NULL),
(5, 'Hype', 1, NULL),
(6, 'Weekend', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leave_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_days` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `type`, `leave_details`, `max_days`, `status`, `position`) VALUES
(2, 'Maternal', 'When a female employee conceives, she will go under this type of leave', 180, 'Active', 1),
(3, 'Casual Leave', 'sfsdfsdfdsfdsfdsf', 25, 'Fdsfsdfsd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `applied_on` date DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT '2',
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_id`, `user_id`, `from`, `to`, `applied_on`, `status_id`, `position`) VALUES
(6, 2, 72, '2016-01-23', '2016-01-23', '2016-01-23', 2, NULL),
(7, 3, 72, '2016-01-23', '2016-01-23', '2016-01-23', 4, NULL),
(8, 3, 72, '2016-01-05', '2016-12-14', '2016-01-24', 2, NULL),
(9, 2, 72, '2016-01-24', '2016-01-24', '2016-01-24', 3, NULL),
(10, 2, 120, '2016-01-08', '2016-01-01', '2016-01-28', 2, NULL),
(11, 3, 128, '2016-01-28', '2016-02-02', '2016-01-27', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_application_translations`
--

CREATE TABLE `leave_application_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_application_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_application_translations`
--

INSERT INTO `leave_application_translations` (`id`, `leave_application_id`, `subject`, `explanation`, `locale`) VALUES
(5, 6, 'fdsfsdf', 'sdfdsfsdf', 'en'),
(6, 7, 'dfdsf', 'gdgsdgsdgsdg', 'en'),
(7, 8, 'fsfsdf', 'sdfsdfsdf', 'en'),
(8, 9, 'sdfsdf', 'sdfdsfdsf', 'en'),
(9, 10, 'testing', 'explaination', 'en'),
(10, 11, 'Travel', 'Travel', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `log_tables`
--

CREATE TABLE `log_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loggable_id` int(11) NOT NULL,
  `loggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `filable_id` int(11) DEFAULT NULL,
  `filable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`) VALUES
(1, NULL, NULL, '14532854550b12016-01-09-195845.jpg', NULL, 109, 'Erp\\Models\\User\\User'),
(2, '1453286207UBY2016-01-09-195845.jpg', 'jpg', NULL, 111, 111, 'Erp\\Models\\User\\User'),
(3, '14532867245mY2016-01-09-195845', 'jpg', NULL, 112, 112, 'Erp\\Models\\User\\User'),
(4, '1453287116Rb92016-01-09-195845', 'jpg', NULL, 113, 113, 'Erp\\Models\\User\\User'),
(5, '1453289014dfHsadi-min', 'sql~', NULL, 115, 115, 'Erp\\Models\\User\\User'),
(6, '1453289014K1vschoolsoft', 'sql', NULL, 115, 115, 'Erp\\Models\\User\\User'),
(7, '1453290599Sejsvecommerce', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(8, '14532905992W7schoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(9, '1453290599oAjsadi-excel', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(10, '1453290599QfAsadi', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(11, '1453290599YqQschoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User'),
(12, '1453290942pqqsvecommerce', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(13, '1453290942cIoschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(14, '14532909422Vdschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(15, '1453290942yAcsadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(16, '1453290942ERssadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User'),
(17, '1453291476NPpsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(18, '1453291476EO5sadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(19, '1453291476aRxschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(20, '14532914762hoschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(21, '1453291476dKTsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User'),
(22, '1453291583RXeschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(23, '1453291583Waesadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(24, '1453291583fZOschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(25, '1453291583YKWsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(26, '1453291583MbJschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(27, '1453352490bCqsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(28, '1453352490Rdvschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(29, '1453352490w6kschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(30, '1453352490rwFschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(31, '1453352490l2Msadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(32, '1453357796Ksfschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(33, '1453357797syrsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(34, '145335779720qsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(35, '14533577977Rrsadi-min', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(36, '1453357797yhbschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User'),
(37, '1453360363ylxsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(38, '1453360440merschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User'),
(39, '1453360986fbSschoolsoft', 'sql', NULL, 124, 124, 'Erp\\Models\\User\\User'),
(40, '1453370772nXnschoolsoft', 'sql', NULL, 126, 126, 'Erp\\Models\\User\\User'),
(41, '1453714476Evuexel1', 'xlsx', NULL, 127, 127, 'Erp\\Models\\User\\User');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_05_053734_languages', 1),
('2015_12_05_055339_create_company_groups_table', 2),
('2015_12_05_061945_create_companies_table', 3),
('2015_12_05_064229_create_genders_table', 4),
('2015_12_05_072222_create_religions_table', 4),
('2015_12_05_072649_create_emails_table', 5),
('2015_12_05_081947_update_users_table', 6),
('2015_12_05_091238_create_passwords_table', 7),
('2015_11_15_103357_create_roles_table', 8),
('2015_12_05_094138_create_log_tables_table', 9),
('2015_12_05_101349_create_options_table', 10),
('2015_12_05_101607_create_add_field_to_tables_table', 11),
('2015_12_05_102313_create_media_table', 12),
('2015_12_05_104930_create_departments_table', 13),
('2015_12_05_111042_add_company_id_dept_id_to_users_table', 14),
('2015_12_06_040317_create_user_translations_table', 15),
('2015_12_06_041229_add_address_to_user_translations', 16),
('2015_12_06_042029_drop_address_firstname_lastname_from_users_table', 17),
('2015_12_06_045020_sixty_password_passwords_table', 18),
('2015_12_06_050155_email_unique_emails_table', 19),
('2015_12_06_050802_create_gender_translations_table', 20),
('2015_12_06_051417_drop_name_from_genders', 21),
('2015_12_06_051659_unique_username_in_users_table', 22),
('2015_12_22_045955_ttts', 23),
('2015_12_26_063509_drop_company_id_from_depts', 24),
('2015_12_26_064252_drop_company_id_from_depts', 25),
('2016_01_17_054556_create_bank_accounts_table', 26),
('2016_01_17_104403_create_designations_table', 27),
('2016_01_17_110047_create_employee_histories_table', 28),
('2016_01_17_110819_add_status_position_to_bankaccounts_table', 29),
('2016_01_18_101033_add_dept_id_to_users', 30),
('2016_01_18_101654_add_dept_id_to_users', 31),
('2016_01_19_064429_add_join_date_to_users', 32),
('2016_01_19_091227_add_father_mother_name_to_users_translation', 33),
('2016_01_19_091438_add_father_mother_name_to_users_translation', 34),
('2016_01_19_091611_add_father_mother_name_to_users_translation', 35),
('2016_01_19_095659_add_joining_salary_user_translations', 36),
('2016_01_19_095851_add_joining_salary_user_translations', 37),
('2016_01_19_100322_add_birthday_users', 38),
('2016_01_19_100447_add_birthday_users', 39),
('2016_01_19_105234_remove_foreign_account_no_bank_accounts', 40),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_10_092223_creat_photos_table', 1),
('2015_09_12_072416_add_profession_to_users_table', 2),
('2015_09_13_101110_create_types_table', 3),
('2015_09_13_110004_create_types_table', 4),
('2015_09_13_110906_add_type_id_to_users', 5),
('2015_09_13_111634_type_id_foregign_key_to_users', 6),
('2015_09_13_112849_add_user_id_to_photos_table_foreign_key', 7),
('2015_09_14_102825_add_user_type_collumn_to_users', 8),
('2015_09_14_112353_change_user_type_to_users_type', 9),
('2015_09_15_045419_add_utype_to_users', 10),
('2015_09_16_101646_create_articles_table', 11),
('2015_09_17_204114_create_countries_table', 12),
('2016_01_20_074201_add_polymorph_to_medias_table', 41),
('2016_01_20_113443_create_photos_table', 42),
('2016_01_21_104136_create_leaves_tables', 43),
('2016_01_21_110133_create_models_leave_leave_applications_table', 44),
('2016_01_23_071904_add_leave_details_and_max_days', 45),
('2016_01_23_072314_add_leave_details_and_max_days', 46),
('2016_01_23_090556_add_foregin_keys_leav_applications', 47),
('2016_01_23_091300_create_statuses_table', 48),
('2016_01_23_095851_create_leave_application_translations_table', 49),
('2016_01_23_111945_add_applied_on_to_leave_applications', 50),
('2016_01_24_045117_set_default_value_to_leave_applications', 51),
('2016_01_24_055451_change_status_to_status_id_leave_applications', 52),
('2016_01_24_055954_change_status_to_status_id_leave_applications', 53),
('2016_01_24_060502_ljjllj', 54),
('2016_01_24_091714_create_holydays_table', 55),
('2016_01_24_093813_create_holy_day_types_table', 56),
('2016_01_24_095732_add_status_positon_holy_day_types', 57),
('2016_01_24_100226_add_status_position_holydays', 58),
('2016_01_25_043900_rename_date_in_holydays', 59),
('2016_01_25_044332_add_to_in_holydays', 60),
('2016_01_25_071926_change_from_to_date_holydays', 61),
('2016_01_27_044212_change_holiday_foreign_key', 62),
('2016_01_27_103106_create_notice_boards_table', 63),
('2016_01_31_055951_create_shifts_table', 64),
('2016_01_31_062226_change_status_type_in_shifts', 65),
('2016_01_31_071159_drop_name_from_shifts', 66),
('2016_01_31_071711_create_shift_translations_table', 67),
('2016_02_01_090809_add_shift_id_to_shift_translations', 68),
('2016_02_01_102232_create_department_shifts_table', 69),
('2016_02_02_041905_add_shift_id_to_users', 70),
('2016_02_02_091556_create_punches_table', 71),
('2016_02_03_075337_add_punch_flag_to_punches', 72),
('2016_02_07_051953_create_shifts', 73),
('2016_02_07_053855_change_status_to_status_id_int', 74),
('2016_02_10_043613_change_and_add_collumn_name_punches', 75),
('2016_02_10_044656_change_punch_out_datetime_position_punches', 76),
('2016_02_10_051636_punch_out_date_time', 77),
('2016_02_10_051826_punch_out_dat_time', 78),
('2016_02_13_043857_add_overtime_to_punches', 79),
('2016_02_13_102300_add_working_hours_to_punches', 80),
('2016_02_14_094813_add_punch_date_time', 81),
('2016_02_20_053644_create_salary_types_table', 82),
('2016_02_20_100927_create_salary_rules_table', 83),
('2016_02_23_045539_create_overtime_rules_table', 84),
('2016_02_23_050838_add_status_overtimerules', 85),
('2016_02_23_052252_create_salary_cuts_table', 86),
('2016_02_23_052303_create_bonuses_table', 86);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_rules`
--

CREATE TABLE `overtime_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime_rules`
--

INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status_id`, `position`) VALUES
(1, 'Overtime 1', '[]', 2000, '1', 1, NULL),
(2, 'overtime 2', '{"basic":"0","total":"1","home_rent":"2"}', 5000, 'Fixed', 1, NULL),
(3, 'overtime 3', '{"basic":"basic","total":"total","home_rent":"Home Rent"}', 4545, 'Fixed', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

CREATE TABLE `passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`) VALUES
(41, '$2y$10$IsTdGwOTZeVluhtDsTXTR.Y4SA6SFgvMwUw1cKvQ9u5RqIo0zRDXa', 0, 72, 0),
(42, '$2y$10$9yFV1bBnR7yY/ouxmb0YkuHKi0XrLNylomFGUI03cpvxkVxHUMFJ.', 0, 73, 0),
(43, '$2y$10$4HBdjhm6LMR9neID4MALmuYQm3iKFjqQ765G8VO039Y2aDwBjabwS', 0, 75, 0),
(44, '$2y$10$lYjFWZi4zsmHdRDqXPAn6.RpYxfNMpCH32c1Y3xwOgrqDnXDOLUyu', 0, 76, 0),
(45, '$2y$10$0BGmvYtiRV3fvzFzFDg.H.73q7StT6XAT6pCx7CcNqANvu8c8TaZC', 0, 77, 0),
(46, '$2y$10$AVCzhtOPEay0v04WAo/CX.RkqZvsoEuY/T19D4ouTR2vDyaqLR3lm', 0, 76, 0),
(47, '$2y$10$3e2lbRBExSD.SJS1/.mtwOCWUsaoiFRs3Y0maLgyJ3I9H56zZ6CxW', 0, 80, 0),
(49, '$2y$10$AkDNvCJTeSo.KykL6Wgjde6WopDaKE4BOOMdHBC.VNIBkOUZulXcq', 0, 84, 0),
(51, '$2y$10$1buaCPZHNwtsWjKElMQBeOGn9z2drlec378AeVPocRrfSJE3HRxme', 0, 75, 0),
(52, '$2y$10$AEyFzLcrVWSWc9q.PsuSmOlWBKyaKry8YZd54JXdt5hCZ4svTBdQu', 0, 85, 0),
(53, '$2y$10$LFdsr1vPR43pLvyW/SL69.gMyglG3SS2qe/HkgmzLo6CAuBzqucEm', 0, 85, 0),
(54, '$2y$10$JPnkGyTRl6VoVQHJAqGTMOKFvl7trgLpii67x5TdjO/1pLTVd0/W.', 0, 87, 0),
(55, '$2y$10$7U72RZcIbXFOr02KGFKvl.ZtpYHcaueQkew.UkkLkcgrKvA4zO0/y', 0, 90, 0),
(56, '$2y$10$dwZdQxQp8cAzqSSBuePkHesgjBTVktcghCG.ITv8Fn0agDpT9AKKO', 0, 91, 0),
(57, '$2y$10$WVrep6qUyvert4/f3yw3nOZttTDukDjNAV5z4YDN7xZp6s1ib.QEu', 0, 92, 0),
(58, '$2y$10$i4ISFqLP/nLL98F1vUxBLO/fi0PyiiQYXG/RfeNByjiZ6uMNq0BR2', 0, 72, 0),
(59, '$2y$10$2blntfHW39JnHXzxmPZDJOJBn6.uo5DO7iTtAyTQhmmKBdf5CZhB6', 0, 72, 0),
(60, '$2y$10$zcMsgfgCZnB9JkAVnCN5SuktN./8G7ASTwgusIq8znwxLWhm13/Vy', 0, 93, 0),
(61, '$2y$10$qbJ5F7JA7g6hxk6nwsL0KeTSeFY1.unFe.eS9zS/OvXQYjdMsDzYi', 0, 94, 0),
(62, '$2y$10$u1Cqw8StO3aMGERMBfuhXOVj9c9/yK1OxSLNSp0ihxjNclPgol7e6', 0, 95, 0),
(63, '$2y$10$X0q9YcLdzpELnEdD1/fqj.mRzRec3Ve/kL8ANarKxuNN4YA5f/LPe', 0, 96, 0),
(64, '$2y$10$mpk0jYxtm8QnUe7JSQdzAOlp7hWx.GcBBKelJyUICNTadYgOPPNFC', 0, 97, 0),
(65, '$2y$10$rAUAaQIYHdDXJ/DeiHBy5.z1.QwMNP87wuDdoNGw2szPLe7UgRWfa', 0, 98, 0),
(66, '$2y$10$3IJbIEDbjVj5uJow29C/POVuoQnN4TCOHHpMwpbh8r8PltdahDfxO', 0, 99, 0),
(67, '$2y$10$jLEi7FUghb8iSCl/UefO4u1yuLw.nAorLSHEgOfBxTuGyUpyQVcGu', 0, 99, 0),
(68, '$2y$10$w7wjt4nDTkDN1FAJboeFKeg58MqDHj1OQ.IsAc5JtET0UPZYu52yS', 0, 99, 0),
(69, '$2y$10$DEk85W0zr7nNino0coGSv.HIjw1Dbmpx5eav5/OAIKzNPuKd15z6.', 0, 99, 0),
(70, '$2y$10$LpSe6B9UaZ55ahCuGcet6uZ0ILCBH7cvhn.jI5gkYnEDCiQd/bKqq', 0, 99, 0),
(71, '$2y$10$rj/rywtZIBmo2bCOcmMtsudNeXVsEGLZTwxpAZezTD/Srp0SNSZ56', 0, 99, 0),
(72, '$2y$10$jyuVZjpkmomq3/hV3gQe7u5ltQWUK8PRZLvV1o6wfMXBFzNM60nwC', 0, 100, 0),
(73, '$2y$10$yafM/qEtaTrNP/MgaOwYE.nDGH8hdO3hq8oLKF/sg4ALBVfZYUgsS', 0, 102, 0),
(74, '$2y$10$hxAdn8oZV8UIQJVtsLqTku2rSqJ1wZFKC7QiR00cW7bszlYXvzWG.', 0, 102, 0),
(75, '$2y$10$.HXrj4SxDU1.P4fZqtfMGuE5Z5hTdx3CDQ7ySNBAwYp2gD3em9tLW', 0, 102, 0),
(76, '$2y$10$LD2waxqpOFA3dC7jA6V/UOU1/4vHXKmiClCZtoROoUEEEP6gGZ2eu', 0, 102, 0),
(77, '$2y$10$GfEHOoUpGDtzXGuXxplE4urTEaa21Gt9pz/n9XiEVmgAzY4LcLZSu', 0, 102, 0),
(78, '$2y$10$Q5EVb7k9RgH4.ClcXhnx1OQrq8aCWmKSRYfUd144Dx0DTLNw4ALca', 0, 102, 0),
(79, '$2y$10$1YBp6eS14kHwMEv8wR/NBearnWhlm2ZnPSyL8kZxJmhYPIZF6cRD6', 0, 102, 0),
(80, '$2y$10$fy4pmFxqQcbhiadwJNV79.hCAaz8l2ud4Y0fPEQJPDUOI66rip0Bi', 0, 102, 0),
(81, '$2y$10$WBeuZZBchjjhgT46/HfusOZaJULH7F2a/zVl8ElsHQg4j1wFwzJcu', 0, 102, 0),
(82, '$2y$10$2MWVFYUtU3YjQWn6brFxX..h6CfJpgKscYCh1o3s4pOPxd9U2sgYW', 0, 102, 0),
(83, '$2y$10$/vkEUNa1Yd1ynCwpsMxj0uAKKVVVvc0j1xOkHGTV37rSvBlz/FxaO', 0, 102, 0),
(84, '$2y$10$NMEAPlW.vQk3C6mZF0GQVOZDkKLNFWdjUk2S88DdLURWaAgn8xqRq', 0, 103, 0),
(85, '$2y$10$dsMnbSES2C5d2Eh5t2xZSuo0P1qZk688zhBhf3Y.6uckxLX04lB52', 0, 103, 0),
(86, '$2y$10$4XD/BiHxPMPGvwJxy4IzBeyjcATXLyGki7/2KgXeqsX.9.Nah1dnq', 0, 103, 0),
(87, '$2y$10$u8tHiEbPd1yG2PVqtLL2j.DxLd/hLEgpgIltQtsHPLs8vJ2KpPMhG', 0, 103, 0),
(88, '$2y$10$ExQpL/tt4.1rGi7.CH5GqOcX/SVpaqOMgIqyv/wbRQJ73I2NEKTHC', 0, 103, 0),
(89, '$2y$10$QEbnwyAHl20VE1VmmdOBWer.p5j1rpT7it4Ek71h89RaKuhpx7/Pm', 0, 103, 0),
(90, '$2y$10$Nk0YldHukNoBGgGak92bJeFKDxBB2omQRCp6o90BTKo8/yo2VI/0m', 0, 103, 0),
(91, '$2y$10$y9VvEd/AdaTlsR.zUd6BTO41GEaGFFrbCTYATIFB97jk0UI0n6SVe', 0, 103, 0),
(92, '$2y$10$lKls9z.5/NeUidw0FmCzQuOLuvADClFO3pGyr0A5At1zWbGywOYT2', 0, 103, 0),
(93, '$2y$10$O48r5UwzZND2nfKWc3Vsbue7uKKYp7IPrgD8pMlwcsm4X9i6CpNs6', 0, 103, 0),
(94, '$2y$10$jawdXT4PpEkUcBCMBPeoT.1CPa6SzCCwbazT3wOCUgGOJLVqM7Dle', 0, 103, 0),
(95, '$2y$10$eipyaal7AK4e413Yqyngquns1BFtjgmXHMFvIG6VYKiXNUmltMLl2', 0, 104, 0),
(96, '$2y$10$5j7uo3TwwCG2IuCVtA9bju.BYqrGMy52psNQxa35gV7o6FiEeuOh2', 0, 105, 0),
(97, '$2y$10$bK/KYMRS.qd9fiorU6eLjuLKaqFii95MTRZLb8yZFzQ39IZ0Pbh2m', 0, 106, 0),
(98, '$2y$10$s8YQPOFdH1Xb1AWvqwYGzuEe.aptBxqMvj7DsCMCk9XtEeycgtC6W', 0, 107, 0),
(99, '$2y$10$cXPfjGbXOUSp7R2NjqURLuojTScPmOK4RhuZ8AiLiDT156svzfly.', 0, 108, 0),
(100, '$2y$10$GbPqYfOINSejgjGcfjz45eU7XIpvLejfHcHW7XRtlEgG3yRGywq.y', 0, 109, 0),
(101, '$2y$10$ir7Se.Vs7jYE7jcr0wHz9.p.eQR4S5DN3i/oawDEUZH6rxv84MF/i', 0, 110, 0),
(102, '$2y$10$SRUS3B0t/ClcVbabC/VtiehSPq0nQzdBXK54fmewCFOVB.pUxH4E6', 0, 111, 0),
(103, '$2y$10$gvKCLg3fJW2Zn37hy9OPguIDj1li0srHXsQI4AxtZHFmiC4S0yCs.', 0, 112, 0),
(104, '$2y$10$YN8zypb1fy6xvnK3C42.p.SQz0/CRsqhzYq/5rnEMb0jFOzVDz5Km', 0, 113, 0),
(105, '$2y$10$S6Qn5nDL3AN7TegeQ9/E4OmHagrQWNohYlELo0DJgJDFI699ElnN6', 0, 114, 0),
(106, '$2y$10$2z3znIb8ZYUeqVzLAYurKuU31QfjqnfZ55wiCtao1HV0SHxvuDqu2', 0, 115, 0),
(107, '$2y$10$QwSOuxrAZO2KIZoGwF3T9ugvwB1jpdZRMEuhOEX5LKUz.sIWcKrOS', 0, 116, 0),
(108, '$2y$10$CrGWuTDbtbUm1PxjZfSDfONlHdyn3beopngIkXYVz5gyWgHcto0x.', 0, 117, 0),
(109, '$2y$10$Q0bJKfuRta/cVNKYzEovrOXTRcoywEhHPDlsu9y4lX3Mrn2WlnkXO', 0, 118, 0),
(110, '$2y$10$9go9GA5h043i8YOTJ5lhy.9uLb.W5GOsZN5TObumD7BUzCun7dexq', 0, 119, 0),
(111, '$2y$10$w.czDutnybbXFgpCXUB7ieEitXgAqN0qMOcp70Sb.Xr2KgC16kEPW', 0, 120, 0),
(112, '$2y$10$7Uk6cSf7xyiQFm5fIujcMuix0C6avAkxccO6zbyu4xwFl9BiLNNoW', 0, 120, 0),
(113, '$2y$10$0mrtqBpsex4sqNVGq05B8u.evhQduXH5r/sCp5eGvA2QkefQoDy82', 0, 121, 0),
(116, '$2y$10$3kz4tdhaT0w7r/ZnZZUu0eGlG55/9fOSaPd5TXI2wS3ct8ylPSjPm', 0, 120, 0),
(117, '$2y$10$1LdXgo1HsFhdoTWgzfMfYettz0TWBTXSXjdNlQA/6Gov8d2iSBsXy', 0, 120, 0),
(118, '$2y$10$fFHNMTPY5cudxs75pztkeOeTQ.IdkUREsOpoqxtoeksc1J2ZlNC/e', 0, 120, 0),
(119, '$2y$10$X6A5.iPnogLEmt24gK5a2OWwHvNQeBeS1wOohxP3bDsSaYrtTKCBu', 0, 120, 0),
(120, '$2y$10$sLhLyzNYzYEIKDS5cMxivuF.kyOzZ469/LKlyRqYjophY3oNHF8EC', 0, 120, 0),
(121, '$2y$10$6H4FfW0jrHyY72MCVE9dg.31Pa5uCOatEQr9CSe2d.WtoY.bClMuK', 0, 120, 0),
(122, '$2y$10$Y6kQwu8ZfxzuBc.T3yaQH.CrtjdStEMaR1JXmBk7SGOrcx4/LZlgS', 0, 120, 0),
(123, '$2y$10$tmlqSun8RLI7MCYbUdwmXuAYXwXX3jA14RbltNL3PZ1Tk9l49DA/y', 0, 120, 0),
(124, '$2y$10$HVib762lX6.icwyhXULkDu0arqw5GkBIBcims1qN8/ueamfZm7rpG', 0, 124, 0),
(125, '$2y$10$nKct.VUYIrTcP0LJfU6SqOU52j0LeKEQo7/3PtVnJBRf4jbfKd0wO', 0, 120, 0),
(126, '$2y$10$fPfZw1BoNpT54ifguxZkmOp63mEgsREc.Gfixn5WbagF.enK.3WTW', 0, 120, 0),
(127, '$2y$10$YhucaRcbO8HRE6yrFHBoLOxK1mHKKWF4tMnFImyXjhvTUNZD.UzGa', 0, 120, 0),
(128, '$2y$10$rL40Wt/8mmb6LyB3CI.EyOSRwyZWvHh5/aVWZbcZ8UNuXdnC2MDVK', 0, 120, 0),
(129, '$2y$10$q.hllN77hArRPBJtmml40uH./kV6XpCSvNf.e36.6.1gReifITnie', 0, 120, 0),
(131, '$2y$10$jUUqq8.yrSMEiYPqJC7Afe3cFOqwovnE66TBcRfm89M2uN.T7UcSy', 0, 124, 0),
(132, '$2y$10$dgC4daA/TMXg60zMtKaruuPil2gG.MbCUlMjw39R1vX0kETD6khZC', 0, 124, 0),
(133, '$2y$10$OI79QnhWpo.eYao2XQSyaucktBF/0MQuWZ3PudLQAOY9uk0TcFe6e', 0, 72, 0),
(134, '$2y$10$EvAuMHPlBlj/6wTs4BWnV.Tz35fRi9xhAl2uvdpJZNkpe/S.A8uz6', 0, 126, 0),
(135, '$2y$10$ZvOdoQymwPa.dSKlOoh8COfTplORg/9gO4kip42Wh3/9.olFyFo8S', 0, 126, 0),
(137, '$2y$10$19QW6/oFuV4UjgjQVY4QV.yU93GTdZJ4/kRmJim41H9tUYoSy8ngO', 0, 120, 0),
(138, '$2y$10$q9h5epByrsjgA8IGvx4kYebL6YjYSDrtXC9LY1Cbc6iA5bAHckz66', 0, 128, 0),
(139, '$2y$10$b3r2biRvD59AXIhguEsZV.iQV101UHngwB2aTD3fC/pegmCCNCOKy', 0, 129, 0),
(140, '$2y$10$eTCQkfTNI2Z/EhGdMVMK9OiS3iVPsBOUOKIuGQUnUmn8AjW3P4Lca', 0, 124, 0),
(141, '$2y$10$Dkne.dSvBokCdbNX8tgl4O44arraASlgXDHN469ub3tNWu80Cxu2y', 0, 120, 0),
(142, '$2y$10$UvLWkdo.9fEWnkvQgAUnleyjjF2GZh40MMa3xbSc4HFrzu5afYR.C', 0, 120, 0),
(143, '$2y$10$iMLHPG6vyw/hlPWps.979u.y6BFKvUQWig/5nLg5wrO0karDmEb.G', 0, 120, 0),
(144, '$2y$10$vZG3Zo.xp0Efhlp/cIAwyOH.J3G9X4zkIvXI6ebLzHCOg.YJWeChi', 0, 128, 0),
(145, '$2y$10$QkMfun6HW3e9Sscbpxh9qu1VmdLgG12868eNGXRXfj5RupTSIRZ5S', 0, 130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`) VALUES
(1, 'Create Things', 'whoever assigned this permission can create anything in the system', 0, 0),
(2, 'Edit', 'whoever assigned this permission can edit anything in the system', 0, 0),
(3, 'Hello', 'Hello World', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(3, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`) VALUES
(1, 120, 120, 'Erp\\Models\\User\\User', '1453291583SFf2016-01-09-195845', NULL, 'jpg'),
(2, 120, 120, 'Erp\\Models\\User\\User', '1453352490Hk12016-01-09-195845.jpg', NULL, ''),
(3, 122, 122, 'Erp\\Models\\User\\User', '1453354270gnI2016-01-09-195845.jpg', NULL, ''),
(4, 123, 123, 'Erp\\Models\\User\\User', '1453357797aWn2016-01-09-195845.jpg', NULL, ''),
(5, 120, 120, 'Erp\\Models\\User\\User', '1453358953q8M2016-01-09-195845.jpg', NULL, ''),
(6, 124, 124, 'Erp\\Models\\User\\User', '1453359264oDW2016-01-09-195845.jpg', NULL, ''),
(7, 125, 125, 'Erp\\Models\\User\\User', '1453360599lqb2016-01-09-195845.jpg', NULL, ''),
(8, 124, 124, 'Erp\\Models\\User\\User', '1453360985VaD2016-01-09-195845.jpg', NULL, ''),
(9, 126, 126, 'Erp\\Models\\User\\User', '1453370411lXy2016-01-09-195845.jpg', NULL, ''),
(10, 126, 126, 'Erp\\Models\\User\\User', '1453370772wJa2016-01-09-195845.jpg', NULL, ''),
(11, 127, 127, 'Erp\\Models\\User\\User', '1453714476BE52016-01-09-195845.jpg', NULL, ''),
(12, 120, 120, 'Erp\\Models\\User\\User', '1453888494hDG2016-01-09-195845.jpg', NULL, ''),
(13, 128, 128, 'Erp\\Models\\User\\User', '1453894001vx62016-01-09-195845.jpg', NULL, ''),
(14, 129, 129, 'Erp\\Models\\User\\User', '14543895801Fp2016-01-09-195845.jpg', NULL, ''),
(15, 124, 124, 'Erp\\Models\\User\\User', '1454395442KPt2016-01-09-195845.jpg', NULL, ''),
(16, 120, 120, 'Erp\\Models\\User\\User', '145440801153H2016-01-09-195845.jpg', NULL, ''),
(17, 120, 120, 'Erp\\Models\\User\\User', '1454836303ttZ2016-01-09-195845.jpg', NULL, ''),
(18, 120, 120, 'Erp\\Models\\User\\User', '1455012726XVp2016-01-09-195845.jpg', NULL, ''),
(19, 128, 128, 'Erp\\Models\\User\\User', '1455348360YWW2016-01-09-195845.jpg', NULL, ''),
(20, 130, 130, 'Erp\\Models\\User\\User', '14553609881ji2016-01-09-195845.jpg', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `punches`
--

CREATE TABLE `punches` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `punch_in` time DEFAULT NULL,
  `punch_out` time DEFAULT NULL,
  `punch_date` date DEFAULT NULL,
  `punch_date_time` datetime DEFAULT NULL,
  `punch_in_date_time` datetime DEFAULT NULL,
  `punch_out_date_time` datetime DEFAULT NULL,
  `working_hours` double(8,2) NOT NULL DEFAULT '0.00',
  `is_overtime` int(11) NOT NULL DEFAULT '0',
  `punch_year` int(11) DEFAULT NULL,
  `punch_month` int(11) DEFAULT NULL,
  `punch_day` int(11) DEFAULT NULL,
  `punch_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `punches`
--

INSERT INTO `punches` (`id`, `user_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`) VALUES
(1, 120, NULL, '08:01:25', NULL, '2016-02-14 09:50:19', NULL, NULL, 0.00, 0, NULL, NULL, NULL, 0),
(2, 120, '04:49:11', '08:01:11', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 04:49:11', NULL, 0.00, 0, 2016, 2, 3, 0),
(3, 120, '04:52:34', '07:58:52', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 04:52:34', NULL, 0.00, 0, 2016, 2, 3, 0),
(4, 120, '04:54:07', '06:51:13', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 04:54:07', NULL, 0.00, 0, 2016, 2, 3, 0),
(5, 120, '04:54:22', '06:50:44', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 04:54:22', NULL, 0.00, 0, 2016, 2, 3, 0),
(6, 120, '04:55:59', '06:41:59', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 04:55:59', NULL, 0.00, 0, 2016, 2, 3, 0),
(7, 120, '06:44:02', '06:44:04', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 06:44:02', NULL, 0.00, 0, 2016, 2, 3, 0),
(8, 120, '06:44:19', '06:44:26', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 06:44:19', NULL, 0.00, 0, 2016, 2, 3, 0),
(9, 120, '06:45:31', '06:45:41', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 06:45:31', NULL, 0.00, 0, 2016, 2, 3, 0),
(10, 120, '06:47:38', '06:47:47', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 06:47:38', NULL, 0.00, 0, 2016, 2, 3, 0),
(11, 120, '06:48:53', '06:48:55', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 06:48:53', NULL, 0.00, 0, 2016, 2, 3, 0),
(12, 120, '07:57:32', '09:23:01', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 07:57:32', NULL, 0.00, 0, 2016, 2, 3, 0),
(13, 120, '08:06:06', '08:39:53', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 08:06:06', NULL, 0.00, 0, 2016, 2, 3, 0),
(14, 120, '08:40:17', '08:40:38', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 08:40:17', NULL, 0.00, 0, 2016, 2, 3, 0),
(15, 120, '09:28:09', '09:28:20', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:28:09', NULL, 0.00, 0, 2016, 2, 3, 0),
(16, 120, '09:31:11', '09:32:21', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:31:11', NULL, 0.00, 0, 2016, 2, 3, 0),
(17, 120, '09:35:08', '09:37:29', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:35:08', NULL, 0.00, 0, 2016, 2, 3, 0),
(18, 120, '09:37:30', '09:39:07', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:37:30', NULL, 0.00, 0, 2016, 2, 3, 0),
(19, 120, '09:39:08', '09:40:12', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:39:08', NULL, 0.00, 0, 2016, 2, 3, 0),
(20, 120, '09:40:14', '09:40:59', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:40:14', NULL, 0.00, 0, 2016, 2, 3, 0),
(21, 120, '09:41:52', '09:41:53', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:41:52', NULL, 0.00, 0, 2016, 2, 3, 0),
(22, 120, '09:42:13', '09:42:15', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:42:13', NULL, 0.00, 0, 2016, 2, 3, 0),
(23, 128, '09:58:58', NULL, '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:58:58', NULL, 0.00, 0, 2016, 2, 3, 1),
(24, 128, '09:59:01', '10:00:48', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 09:59:01', NULL, 0.00, 0, 2016, 2, 3, 0),
(25, 128, '10:00:50', '10:01:03', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:00:50', NULL, 0.00, 0, 2016, 2, 3, 0),
(26, 128, '10:01:16', '10:01:43', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:01:16', NULL, 0.00, 0, 2016, 2, 3, 0),
(27, 128, '10:02:08', '10:02:19', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:02:08', NULL, 0.00, 0, 2016, 2, 3, 0),
(28, 128, '10:06:06', '10:16:08', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:06:06', NULL, 0.00, 0, 2016, 2, 3, 0),
(29, 128, '10:16:13', '07:22:53', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:16:13', '2016-02-13 07:22:53', 0.00, 0, 2016, 2, 3, 0),
(30, 129, '10:20:39', '10:20:42', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:20:39', NULL, 0.00, 0, 2016, 2, 3, 0),
(31, 129, '10:29:53', '10:29:58', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:29:53', NULL, 0.00, 0, 2016, 2, 3, 0),
(32, 129, '10:31:00', '10:31:03', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:31:00', NULL, 0.00, 0, 2016, 2, 3, 0),
(33, 129, '10:31:07', '10:43:09', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:31:07', NULL, 0.00, 0, 2016, 2, 3, 0),
(34, 129, '10:43:15', '10:43:17', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 10:43:15', NULL, 0.00, 0, 2016, 2, 3, 0),
(35, 129, '12:02:03', '12:02:06', '2016-02-03', '2016-02-14 09:50:19', '2016-02-03 12:02:03', NULL, 0.00, 0, 2016, 2, 3, 0),
(36, 120, '08:35:44', '08:35:49', '2016-02-07', '2016-02-14 09:50:19', '2016-02-07 08:35:44', NULL, 0.00, 0, 2016, 2, 7, 0),
(37, 120, '08:58:51', '08:58:58', '2016-02-07', '2016-02-14 09:50:19', '2016-02-07 08:58:51', NULL, 0.00, 0, 2016, 2, 7, 0),
(38, 120, '08:59:00', '08:59:05', '2016-02-07', '2016-02-14 09:50:19', '2016-02-07 08:59:00', NULL, 0.00, 0, 2016, 2, 7, 0),
(39, 120, '08:59:17', '09:00:19', '2016-02-07', '2016-02-14 09:50:19', '2016-02-07 08:59:17', NULL, 0.00, 0, 2016, 2, 7, 0),
(40, 120, '09:00:29', '09:25:56', '2016-02-07', '2016-02-14 09:50:19', '2016-02-07 09:00:29', NULL, 0.00, 0, 2016, 2, 7, 0),
(41, 120, '05:19:06', '05:20:35', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 05:19:06', NULL, 0.00, 0, 2016, 2, 9, 0),
(42, 120, '05:20:38', '05:29:15', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 05:20:38', NULL, 0.00, 0, 2016, 2, 9, 0),
(43, 120, '05:29:17', '05:30:43', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 05:29:17', NULL, 0.00, 0, 2016, 2, 9, 0),
(44, 120, '05:30:51', '05:31:27', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 05:30:51', NULL, 0.00, 0, 2016, 2, 9, 0),
(45, 120, '06:50:22', '06:51:26', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 06:50:22', NULL, 0.00, 0, 2016, 2, 9, 0),
(46, 120, '06:51:33', '06:52:04', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 06:51:33', NULL, 0.00, 0, 2016, 2, 9, 0),
(47, 120, '09:07:52', '09:44:27', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 09:07:52', NULL, 0.00, 0, 2016, 2, 9, 0),
(48, 120, '09:47:48', '09:50:46', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 09:47:48', NULL, 0.00, 0, 2016, 2, 9, 0),
(49, 120, '10:08:34', '10:09:06', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 10:08:34', NULL, 0.00, 0, 2016, 2, 9, 0),
(50, 120, '10:44:30', '10:44:34', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 10:44:30', NULL, 0.00, 0, 2016, 2, 9, 0),
(51, 120, '10:44:37', '10:44:39', '2016-02-09', '2016-02-14 09:50:19', '2016-02-09 10:44:37', NULL, 0.00, 0, 2016, 2, 9, 0),
(52, 120, '04:29:05', '04:30:45', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 04:29:05', NULL, 0.00, 0, 2016, 2, 10, 0),
(53, 120, '05:20:38', '05:20:41', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 05:20:38', NULL, 0.00, 0, 2016, 2, 10, 0),
(54, 120, '05:24:13', '05:24:16', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 05:24:13', NULL, 0.00, 0, 2016, 2, 10, 0),
(55, 120, '05:25:12', '06:55:06', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 05:25:12', '2016-02-10 06:55:06', 0.00, 0, 2016, 2, 10, 0),
(56, 120, '06:58:15', '06:58:00', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 06:58:15', '2016-02-10 06:58:00', 0.00, 0, 2016, 2, 10, 0),
(57, 120, '07:00:47', '07:02:00', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 07:00:47', '2016-02-10 07:02:00', 0.00, 0, 2016, 2, 10, 0),
(58, 120, '07:36:53', '07:36:56', '2016-02-10', '2016-02-14 09:50:19', '2016-02-10 07:36:53', '2016-02-10 07:36:56', 0.00, 0, 2016, 2, 10, 0),
(59, 120, '04:44:58', '04:46:40', '2016-02-13', '2016-02-14 09:50:19', '2016-02-13 04:44:58', '2016-02-13 04:46:40', 0.00, 1, 2016, 2, 13, 0),
(60, 120, '04:46:58', '05:23:12', '2016-02-13', '2016-02-14 09:50:19', '2016-02-13 04:46:58', '2016-02-13 05:23:12', 0.00, 1, 2016, 2, 13, 0),
(61, 128, '07:26:25', '07:26:40', '2016-02-13', '2016-02-14 09:50:19', '2016-02-13 07:26:25', '2016-02-13 07:26:40', 0.00, 1, 2016, 2, 13, 0),
(62, 128, '07:31:31', '07:33:46', '2016-02-13', '2016-02-14 09:50:19', '2016-02-13 07:31:31', '2016-02-13 07:33:46', 0.00, 1, 2016, 2, 13, 0),
(63, 128, '10:41:51', '10:41:55', '2016-02-13', '2016-02-14 09:50:19', '2016-02-13 10:41:51', '2016-02-13 10:41:55', 0.00, 1, 2016, 2, 13, 0),
(64, 128, '11:21:02', '11:22:33', '2016-02-13', '2016-02-14 09:50:19', '2016-02-13 11:21:02', '2016-02-13 11:22:33', 0.00, 1, 2016, 2, 13, 0),
(65, 120, '06:46:35', '06:55:45', '2016-02-14', '2016-02-14 09:50:19', '2016-02-14 06:46:35', '2016-02-14 06:55:45', 0.00, 0, 2016, 2, 14, 0),
(66, 120, '06:56:33', '07:07:05', '2016-02-14', '2016-02-14 09:50:19', '2016-02-14 06:56:33', '2016-02-14 07:07:05', 0.18, 0, 2016, 2, 14, 0),
(67, 120, '07:07:44', '07:08:50', '2016-02-14', '2016-02-14 09:50:19', '2016-02-14 07:07:44', '2016-02-14 07:08:50', 0.02, 0, 2016, 2, 14, 0),
(68, 120, '07:10:30', '07:32:07', '2016-02-14', '2016-02-14 09:50:19', '2016-02-14 07:10:30', '2016-02-14 07:32:07', 0.36, 0, 2016, 2, 14, 0),
(69, 120, '08:54:07', '10:15:56', '2016-02-14', '2016-02-14 09:50:19', '2016-02-14 08:54:07', '2016-02-14 10:15:56', 1.36, 0, 2016, 2, 14, 0),
(70, 120, '10:17:23', '10:18:40', '2016-02-14', '2016-02-14 09:50:19', '2016-02-14 10:17:23', '2016-02-14 10:18:40', 0.02, 1, 2016, 2, 14, 0),
(71, 120, '10:18:41', '10:39:11', '2016-02-14', NULL, '2016-02-14 10:18:41', '2016-02-14 10:39:11', 0.34, 1, 2016, 2, 14, 0),
(72, 120, '10:43:54', '10:44:36', '2016-02-14', NULL, '2016-02-14 10:43:54', '2016-02-14 10:44:36', 0.01, 1, 2016, 2, 14, 0),
(73, 120, '10:46:18', '10:46:22', '2016-02-14', NULL, '2016-02-14 10:46:18', '2016-02-14 10:46:22', 0.00, 0, 2016, 2, 14, 0),
(74, 120, '04:39:19', '04:39:36', '2016-02-15', NULL, '2016-02-15 04:39:19', '2016-02-15 04:39:36', 0.00, 1, 2016, 2, 15, 0),
(75, 120, '06:47:16', '06:47:50', '2016-02-15', NULL, '2016-02-15 06:47:16', '2016-02-15 06:47:50', 0.01, 0, 2016, 2, 15, 0),
(76, 120, '06:50:05', '06:50:12', '2016-02-15', NULL, '2016-02-15 06:50:05', '2016-02-15 06:50:12', 0.00, 0, 2016, 2, 15, 0),
(77, 120, '04:05:21', '04:05:35', '2016-02-16', NULL, '2016-02-16 04:05:21', '2016-02-16 04:05:35', 0.00, 1, 2016, 2, 16, 0),
(78, 120, '04:40:45', '04:40:52', '2016-02-16', NULL, '2016-02-16 04:40:45', '2016-02-16 04:40:52', 0.00, 1, 2016, 2, 16, 0),
(79, 120, '06:25:53', '06:26:01', '2016-02-16', NULL, '2016-02-16 06:25:53', '2016-02-16 06:26:01', 0.00, 1, 2016, 2, 16, 0),
(80, 120, '04:25:08', '04:25:22', '2016-02-17', NULL, '2016-02-17 04:25:08', '2016-02-17 04:25:22', 0.00, 0, 2016, 2, 17, 0),
(81, 120, '09:48:19', '09:48:31', '2016-02-17', NULL, '2016-02-17 09:48:19', '2016-02-17 09:48:31', 0.00, 0, 2016, 2, 17, 0),
(82, 120, '11:37:07', '11:37:18', '2016-02-17', NULL, '2016-02-17 11:37:07', '2016-02-17 11:37:18', 0.00, 0, 2016, 2, 17, 0),
(83, 120, '04:20:44', '04:20:57', '2016-02-18', NULL, '2016-02-18 04:20:44', '2016-02-18 04:20:57', 0.00, 1, 2016, 2, 18, 0),
(84, 120, '07:01:39', '07:01:46', '2016-02-18', NULL, '2016-02-18 07:01:39', '2016-02-18 07:01:46', 0.00, 0, 2016, 2, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`) VALUES
(1, 'Est', 'Active'),
(2, 'Islam', 'Active'),
(3, 'Budhism', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `status`, `position`) VALUES
(2, 'Employee', 'An employee can access his personal page only.', NULL, 0),
(3, 'Manager', 'A Manager can view management related details of an employee ', NULL, 0),
(4, 'superadmin', 'Can create Admins including anything else', NULL, 0),
(5, 'HR Department', 'Human Resource', NULL, 0),
(6, 'Assistant manager', 'assist manager', NULL, 0),
(7, 'Inventory Manager', 'jkjkj kjkjkjjkk', NULL, 0),
(8, 'Player', 'Players', NULL, 0),
(9, 'Ecom', 'An admin has the access to any part of the system.', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(72, 2),
(73, 2),
(75, 2),
(76, 2),
(77, 2),
(80, 2),
(84, 2),
(85, 2),
(87, 2),
(91, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(124, 2),
(126, 2),
(128, 2),
(129, 2),
(130, 2),
(72, 3),
(72, 4),
(73, 4),
(93, 4),
(120, 4),
(126, 4),
(128, 4),
(129, 4),
(77, 5);

-- --------------------------------------------------------

--
-- Table structure for table `salary_cut_rules`
--

CREATE TABLE `salary_cut_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_cut_rules`
--

INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status_id`, `position`) VALUES
(1, 'cut 1', '{"basic":"basic","total":"total","home_rent":"2"}', 5698, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_rules`
--

CREATE TABLE `salary_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_content` longtext COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_rules`
--

INSERT INTO `salary_rules` (`id`, `name`, `rules_content`, `status_id`, `position`) VALUES
(1, 'Allowance Rule 1', '{"home_rent_amount":"2000 ","home_rent_amount_type":"1","medical_allowance_amount":"2000","medical_allowance_amount_type":"1","travel_allowance_amount":"2000","travel_allowance_amount_type":"1","status_id":"1"}', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_types`
--

CREATE TABLE `salary_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_types`
--

INSERT INTO `salary_types` (`id`, `name`, `status_id`, `position`) VALUES
(2, 'Home Rent', 1, NULL),
(3, 'Medical Allowance', 1, NULL),
(4, 'Travel Allowance', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contents` longtext COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`) VALUES
(1, '{"sat_in":"12:00:00","sat_out":"13:30:00","sat_max":"12:00:00","sat_min":"13:30:00","sat_extend_day":"on","sat_day_off":"","sun_in":"12:00:00","sun_out":"13:30:00","sun_max":"12:00:00","sun_min":"13:30:00","sun_extend_day":"on","sun_day_off":"","mon_in":"12:00:00","mon_out":"13:30:00","mon_max":"05:00:00","mon_min":"13:30:00","mon_extend_day":"on","mon_day_off":"","tue_in":"12:00:00","tue_out":"13:30:00","tue_max":"06:00","tue_min":"07:50","tue_extend_day":"on","tue_day_off":"","wed_in":"12:00:00","wed_out":"13:30:00","wed_max":"12:00:00","wed_min":"13:30:00","wed_extend_day":"on","wed_day_off":"","thu_in":"12:00:00","thu_out":"13:30:00","thu_max":"12:00:00","thu_min":"13:30:00","thu_extend_day":"on","thu_day_off":"","fri_in":"12:00:00","fri_out":"13:15:00","fri_max":"12:00:00","fri_min":"13:30:00","fri_extend_day":"on","tue_day_off":"on"}', NULL, 1),
(2, '{"sat_in":"","sat_out":"","sat_max":"","sat_min":"","sun_in":"","sun_out":"","sun_max":"","sun_min":"","mon_in":"","mon_out":"","mon_max":"","mon_min":"","tue_in":"","tue_out":"","tue_max":"","tue_min":"","wed_in":"","wed_out":"","wed_max":"","wed_min":"","thu_in":"","thu_out":"","thu_max":"","thu_min":"","fri_in":"","fri_out":"","fri_max":"","fri_min":""}', NULL, 0),
(3, '{"sat_in":"17:00","sat_out":"01:00","sat_max":"16:00","sat_min":"02:00","sat_extend_day":"on","sun_in":"17:00","sun_out":"01:00","sun_max":"16:00","sun_min":"02:00","sun_extend_day":"on","mon_in":"10:00","mon_out":"17:00","mon_max":"09:00","mon_min":"18:00","tue_in":"01:10","tue_out":"04:00","tue_max":"01:00","tue_min":"07:30","wed_in":"00:00","wed_out":"01:30","wed_max":"09:00","wed_min":"16:00","thu_in":"17:00","thu_out":"23:00","thu_max":"16:00","thu_min":"23:10","fri_in":"00:00","fri_out":"00:00","fri_max":"00:00","fri_min":"00:00"}', NULL, 1),
(4, '{"sat_in":"12:00","sat_out":"06:00","sat_max":"12:00","sat_min":"06:10","sun_in":"12:00","sun_out":"06:00","sun_max":"12:00","sun_min":"06:00","mon_in":"12:00","mon_out":"06:00","mon_max":"12:00","mon_min":"06:00","tue_in":"12:00","tue_out":"06:10","tue_max":"00:00","tue_min":"07:00","tue_day_off":"on","tue_extend_day":"on","wed_in":"12:00","wed_out":"06:00","wed_day_off":"on","wed_max":"11:50","wed_min":"04:00","thu_in":"12:00","thu_out":"06:00","thu_max":"07:00","thu_min":"06:30","thu_day_off":"on","fri_in":"12:00","fri_out":"02:00","fri_max":"12:00","fri_min":"03:00"}', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifts-copy`
--

CREATE TABLE `shifts-copy` (
  `id` int(10) UNSIGNED NOT NULL,
  `sat_in` time DEFAULT NULL,
  `sat_out` time DEFAULT NULL,
  `sun_in` time DEFAULT NULL,
  `sun_out` time DEFAULT NULL,
  `mon_in` time DEFAULT NULL,
  `mon_out` time DEFAULT NULL,
  `tues_in` time DEFAULT NULL,
  `tues_out` time DEFAULT NULL,
  `wed_in` time DEFAULT NULL,
  `wed_out` time DEFAULT NULL,
  `thurs_in` time DEFAULT NULL,
  `thurs_out` time DEFAULT NULL,
  `fri_in` time DEFAULT NULL,
  `fri_out` time DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shifts-copy`
--

INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`) VALUES
(11, '12:00:00', '12:05:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', NULL, 2),
(12, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2),
(13, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2),
(14, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2),
(21, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shift_translations`
--

CREATE TABLE `shift_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shift_translations`
--

INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`) VALUES
(1, 'dfdfd', 'en', 9),
(2, 'gfdgdf en', 'en', 10),
(3, 'fgdfgdfg bn', 'bn', 10),
(4, 'Day', 'en', 11),
(5, 'gfdgdf', 'en', 12),
(6, 'fgdfgdfg', 'bn', 12),
(7, 'gfdgdf', 'en', 13),
(8, 'Morning Bangla', 'bn', 13),
(9, 'gfdgdf', 'en', 14),
(10, 'mornign bn', 'bn', 14),
(11, 'shift en', 'en', 15),
(12, 'fgdfgdfg', 'bn', 15),
(13, 'gfdgdf en', 'en', 21),
(14, 'fgdfgdfg', 'bn', 21),
(15, 'Day', 'en', 1),
(16, 'Morning', 'en', 3),
(17, 'Night', 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Active'),
(2, 'Pending'),
(3, 'Approved'),
(4, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `company_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `status`, `remember_token`, `birthday`) VALUES
(72, 'rajakhan', 'r@gmail.com', '$2y$10$OI79QnhWpo.eYao2XQSyaucktBF/0MQuWZ3PudLQAOY9uk0TcFe6e', 17, 1, NULL, 2, NULL, NULL, NULL, '0171526398', NULL, 'INV2Y8pyHCtMwdkpeCDUC0MSkgX4x5xyEHxRv91V0VVyjXbvOo9Pc2zLlIJa', NULL),
(73, 'kamrul', 'kamu@kamu.com', '$2y$10$9yFV1bBnR7yY/ouxmb0YkuHKi0XrLNylomFGUI03cpvxkVxHUMFJ.', 17, 1, NULL, 2, NULL, NULL, NULL, '0171526359', NULL, 'cVtQPX98Gjb0bnQ7Tsxjub3zZ5U7L4C19LaCaNYIBfWaqMXMCoUOZeUD3wH7', NULL),
(75, 'anisur', 'danis@gmail.com', '$2y$10$4Gmp/LYdJ5BxrEwjg9uIpOAZXehcix5BESBWE46b6NMy2MWhqhh6m', 17, 1, NULL, 2, NULL, NULL, NULL, '0175236985', NULL, 'Cai7Ajza0ert4tSChUQaOp5vMqNXwHihSIkbd7Lhj6boPnU18nX2QawMTTWa', NULL),
(76, 'harunna', 'harun@gmail.com', '$2y$10$AVCzhtOPEay0v04WAo/CX.RkqZvsoEuY/T19D4ouTR2vDyaqLR3lm', 17, 2, NULL, 2, NULL, NULL, NULL, '102508956', NULL, 'WGLjFJghxIEbuc43v5bxkdPIbwQPj6qxolJ0cWsw6KcHAfChj3EEft3oOaw2', NULL),
(77, 'alamin', 'ala@ala.com', '$2y$10$0BGmvYtiRV3fvzFzFDg.H.73q7StT6XAT6pCx7CcNqANvu8c8TaZC', 17, 1, NULL, 2, NULL, NULL, NULL, '0145236958', NULL, NULL, NULL),
(79, 'samiaa', 'sami@gmail.com', '$2y$10$fWBCoVgW.iC9yxWb8RBHsea9y5lK7s15dqMHgN2Ta3tMtN.Zinh3a', 17, 2, NULL, 2, NULL, NULL, NULL, '4545454544', NULL, NULL, NULL),
(80, 'samiaaa', 'sami@gmail.com', '$2y$10$nwI7zp2/FnXqdrNh50O.zuGLR6.q673RvHmtA9DLL7wE/dfpGVhCa', 17, 2, NULL, 2, NULL, NULL, NULL, '4545454544', NULL, NULL, NULL),
(81, 'masumm', 'masum@gmail.com', '$2y$10$zjRGHwcScC1672HEfayQRuUlnEboheBhxBPLPrrJiZGkoL8RAPpIa', 17, 1, NULL, 2, NULL, NULL, NULL, '123456', NULL, NULL, NULL),
(84, 'hellojjk', 'masum@yahoo.com', '$2y$10$O0MEQEAvXDHJ/Jb3nhGB1e9WEk/s7L8upMqtiItASfpnVYYOB1EvO', 17, 2, NULL, 2, NULL, NULL, NULL, '1234656', NULL, NULL, NULL),
(85, 'monirul', 'monirul@gmail.com', '$2y$10$LFdsr1vPR43pLvyW/SL69.gMyglG3SS2qe/HkgmzLo6CAuBzqucEm', 17, 1, NULL, 2, NULL, NULL, NULL, '123456', NULL, NULL, NULL),
(87, 'huzurain', 'huzurd@gmail.com', '$2y$10$JPnkGyTRl6VoVQHJAqGTMOKFvl7trgLpii67x5TdjO/1pLTVd0/W.', 17, 1, NULL, 2, NULL, NULL, NULL, '123456', NULL, NULL, NULL),
(90, 'adminis', 'admin@yahoo.com', '$2y$10$7U72RZcIbXFOr02KGFKvl.ZtpYHcaueQkew.UkkLkcgrKvA4zO0/y', 17, 2, NULL, 2, NULL, NULL, NULL, '0171918659', NULL, NULL, NULL),
(91, 'ohuzur', 'huzurr@gmail.com', '$2y$10$dwZdQxQp8cAzqSSBuePkHesgjBTVktcghCG.ITv8Fn0agDpT9AKKO', 17, 1, NULL, 2, NULL, NULL, NULL, '123456', NULL, NULL, NULL),
(92, 'sunegao', 'suniya@yahoo.com', '$2y$10$WVrep6qUyvert4/f3yw3nOZttTDukDjNAV5z4YDN7xZp6s1ib.QEu', 17, 1, NULL, 2, NULL, NULL, NULL, '123456', NULL, NULL, NULL),
(93, 'superadmin', 'superadmin@superadmin.com', '$2y$10$zcMsgfgCZnB9JkAVnCN5SuktN./8G7ASTwgusIq8znwxLWhm13/Vy', 17, 2, NULL, 2, NULL, NULL, NULL, '0171856932', NULL, NULL, NULL),
(94, 'firoza', 'firoza@yahoo.com', '$2y$10$qbJ5F7JA7g6hxk6nwsL0KeTSeFY1.unFe.eS9zS/OvXQYjdMsDzYi', 18, 2, NULL, 2, 3, NULL, NULL, '123456', NULL, NULL, NULL),
(95, 'firozaa', 'firozaa@yahoo.com', '$2y$10$u1Cqw8StO3aMGERMBfuhXOVj9c9/yK1OxSLNSp0ihxjNclPgol7e6', 18, 2, NULL, 2, 3, NULL, NULL, '123456', NULL, NULL, NULL),
(96, 'sohagia', 'so@gmail.com', '$2y$10$X0q9YcLdzpELnEdD1/fqj.mRzRec3Ve/kL8ANarKxuNN4YA5f/LPe', 17, 2, NULL, 2, 3, NULL, NULL, '4545545454', NULL, NULL, NULL),
(97, 'hhhhhhhh', 'jjkjjk@yahoo.com', '$2y$10$mpk0jYxtm8QnUe7JSQdzAOlp7hWx.GcBBKelJyUICNTadYgOPPNFC', 17, 2, NULL, 3, 6, NULL, NULL, '5454545454', NULL, NULL, NULL),
(98, 'khalil', 'jkjkjk@ouo.com', '$2y$10$rAUAaQIYHdDXJ/DeiHBy5.z1.QwMNP87wuDdoNGw2szPLe7UgRWfa', 18, 1, NULL, 3, 3, NULL, NULL, '464646446', NULL, NULL, NULL),
(99, 'bhatiza', 'dkjkjkffse@uiuytjhjg.kj', '$2y$10$rj/rywtZIBmo2bCOcmMtsudNeXVsEGLZTwxpAZezTD/Srp0SNSZ56', 17, 2, NULL, 4, 1, NULL, '2016-01-03', 'jkjkjkjkjk', NULL, NULL, NULL),
(100, 'bhagina', 'hjk@yu.piouiy', '$2y$10$jyuVZjpkmomq3/hV3gQe7u5ltQWUK8PRZLvV1o6wfMXBFzNM60nwC', 17, 3, NULL, 3, 3, NULL, '2016-09-01', '646464655', NULL, NULL, NULL),
(101, 'arrayer', 'ftrt@iyuyt.jhjh', '$2y$10$.Mg4fe5PG4gwzNQ0GBk6zOK0QEDWL1u0Gne1bbetUeNFfpJwWxyrq', 17, 1, NULL, 2, 5, NULL, '2016-12-07', ';77997', NULL, NULL, NULL),
(102, 'arrayerd', 'ulfdhffwt@iyuyt.jhjh', '$2y$10$/vkEUNa1Yd1ynCwpsMxj0uAKKVVVvc0j1xOkHGTV37rSvBlz/FxaO', 17, 1, NULL, 3, 3, NULL, '2016-01-19', ';77997', NULL, NULL, '2016-01-12'),
(103, 'mamunia', 'w4lrfteetyj@ert.poiui', '$2y$10$jawdXT4PpEkUcBCMBPeoT.1CPa6SzCCwbazT3wOCUgGOJLVqM7Dle', 17, 1, NULL, 2, 5, NULL, '2016-01-20', '4654464646', NULL, NULL, '2016-01-20'),
(104, 'jljljlj', 'lkjljl@jl.khkjh', '$2y$10$eipyaal7AK4e413Yqyngquns1BFtjgmXHMFvIG6VYKiXNUmltMLl2', 17, 1, NULL, 2, 5, NULL, '2016-08-20', '4545454', NULL, NULL, '2016-10-20'),
(105, 'jljljljd', 'lkjljwl@jl.khkjh', '$2y$10$5j7uo3TwwCG2IuCVtA9bju.BYqrGMy52psNQxa35gV7o6FiEeuOh2', 17, 1, NULL, 3, 3, NULL, '2016-08-20', '4545454', NULL, NULL, '2016-10-20'),
(106, 'jljljljdw', 'lkjljwl@jl.khkjhf', '$2y$10$bK/KYMRS.qd9fiorU6eLjuLKaqFii95MTRZLb8yZFzQ39IZ0Pbh2m', 17, 1, NULL, 3, 6, NULL, '2016-08-20', '4545454', NULL, NULL, '2016-10-20'),
(107, 'jljljljdsw', 'qlkjljwl@jl.khkjhf', '$2y$10$s8YQPOFdH1Xb1AWvqwYGzuEe.aptBxqMvj7DsCMCk9XtEeycgtC6W', 17, 1, NULL, 2, 5, NULL, '2016-08-20', '4545454', NULL, NULL, '2016-10-20'),
(108, 'jljlj1dsw', 'qlkjwwl@jl.khkjhf', '$2y$10$cXPfjGbXOUSp7R2NjqURLuojTScPmOK4RhuZ8AiLiDT156svzfly.', 17, 1, NULL, 3, 6, NULL, '2016-08-20', '4545454', NULL, NULL, '2016-10-20'),
(109, 'jljlj1ki', 'qluipoil@jl.khkjhf', '$2y$10$GbPqYfOINSejgjGcfjz45eU7XIpvLejfHcHW7XRtlEgG3yRGywq.y', 17, 1, NULL, 2, 5, NULL, '2016-08-20', '4545454', NULL, NULL, '2016-10-20'),
(110, 'hellobin', 'kjk@iyt.com', '$2y$10$ir7Se.Vs7jYE7jcr0wHz9.p.eQR4S5DN3i/oawDEUZH6rxv84MF/i', 17, 3, NULL, 2, 5, NULL, '2016-01-20', '45454545', NULL, NULL, '2016-01-20'),
(111, 'hellobi', 'kjke@iyt.com', '$2y$10$SRUS3B0t/ClcVbabC/VtiehSPq0nQzdBXK54fmewCFOVB.pUxH4E6', 17, 3, NULL, 3, 3, NULL, '2016-01-20', '45454545', NULL, NULL, '2016-01-20'),
(112, 'hkhuyt76', 'email@uyty.kjhjk', '$2y$10$gvKCLg3fJW2Zn37hy9OPguIDj1li0srHXsQI4AxtZHFmiC4S0yCs.', 17, 3, NULL, 3, 3, NULL, '2016-01-20', 'hkjhkjhhkh', NULL, NULL, '2016-01-20'),
(113, 'userujjj', 'lhlkhlh@jh.joiuo', '$2y$10$YN8zypb1fy6xvnK3C42.p.SQz0/CRsqhzYq/5rnEMb0jFOzVDz5Km', 17, 2, NULL, 2, 5, NULL, '2016-01-20', '7878787878', NULL, NULL, '2016-01-20'),
(114, 'hajkjij', 'hals@uyo.com', '$2y$10$S6Qn5nDL3AN7TegeQ9/E4OmHagrQWNohYlELo0DJgJDFI699ElnN6', 17, 3, NULL, 2, 5, NULL, '2016-01-20', '454545454', NULL, NULL, '2016-01-20'),
(115, 'hajkjije', 'halsr@uyo.com', '$2y$10$2z3znIb8ZYUeqVzLAYurKuU31QfjqnfZ55wiCtao1HV0SHxvuDqu2', 17, 3, NULL, 3, 6, NULL, '2016-01-20', '454545454', NULL, NULL, '2016-01-20'),
(116, 'yeriolku', 'iuyt@jiue.com', '$2y$10$QwSOuxrAZO2KIZoGwF3T9ugvwB1jpdZRMEuhOEX5LKUz.sIWcKrOS', 17, 2, NULL, 3, 3, NULL, '2016-01-20', '454878', NULL, NULL, '2016-01-20'),
(117, 'yeriou', 'iuyt@jiure.com', '$2y$10$CrGWuTDbtbUm1PxjZfSDfONlHdyn3beopngIkXYVz5gyWgHcto0x.', 17, 2, NULL, 2, 5, NULL, '2016-01-20', '454878', NULL, NULL, '2016-01-20'),
(118, 'yeriodu', 'iuytqw@jiudre.com', '$2y$10$Q0bJKfuRta/cVNKYzEovrOXTRcoywEhHPDlsu9y4lX3Mrn2WlnkXO', 17, 2, NULL, 2, 5, NULL, '2016-01-20', '454878', NULL, NULL, '2016-01-20'),
(119, 'kkjkjjkk9', 'hemD@email.com', '$2y$10$9go9GA5h043i8YOTJ5lhy.9uLb.W5GOsZN5TObumD7BUzCun7dexq', 17, 2, NULL, 3, 6, NULL, '2016-01-20', '78787877', NULL, NULL, '2016-01-20'),
(120, 'khanna', 'kk@gmail.com', '$2y$10$iMLHPG6vyw/hlPWps.979u.y6BFKvUQWig/5nLg5wrO0karDmEb.G', 17, 2, NULL, 2, 5, 4, '2016-02-09', '78787877', NULL, 'RmFIkU9Mhjmr5tMfW8T6GeRejH0FPFv45WnFM7kk9rAZ8L1Hc7mxYsscLtqs', '2016-02-09'),
(121, 'uuiunh', 'ljlkjlkjlj@hjh.jk', '$2y$10$0mrtqBpsex4sqNVGq05B8u.evhQduXH5r/sCp5eGvA2QkefQoDy82', 17, 1, NULL, 2, 5, NULL, '2016-01-21', 'uiuiuiuiuu', NULL, NULL, '2016-01-21'),
(124, 'azizulen', 'helleod@hyo.comg', '$2y$10$eTCQkfTNI2Z/EhGdMVMK9OiS3iVPsBOUOKIuGQUnUmn8AjW3P4Lca', 17, 2, NULL, 3, 3, 11, '2016-02-17', '0171859632', NULL, NULL, '2016-02-02'),
(126, 'sumaiya', 'sumaaiya@gmail.com', '$2y$10$ZvOdoQymwPa.dSKlOoh8COfTplORg/9gO4kip42Wh3/9.olFyFo8S', 18, 2, NULL, 3, 7, NULL, '2016-01-21', '123456789', NULL, 'Za9kHigU5tf5FCqYb9jM694bb5uEM1dAEjkItmHlQkS9TbidfnQXwtNmKbVN', '2016-01-21'),
(128, 'salman', 'salu@gmail.com', '$2y$10$vZG3Zo.xp0Efhlp/cIAwyOH.J3G9X4zkIvXI6ebLzHCOg.YJWeChi', 17, 2, NULL, 2, 5, 4, '2016-02-05', '0171856935', NULL, '9LTqVJ1L2xLhoCJbnVgZ11RS599dLEZAWrnUGwkDA0YEElOfsmMmhdQ6K2Il', '2016-02-03'),
(129, 'mohamm', 'rrr@gmail.com', '$2y$10$b3r2biRvD59AXIhguEsZV.iQV101UHngwB2aTD3fC/pegmCCNCOKy', 17, 1, NULL, 2, 5, 11, '2016-02-04', '4545454545', NULL, '6QyibtMCmn27lCnU6bMV1Ms8CY9vnrPn3XHaucviS2774uXbI2kPcN3SXJhy', '2016-02-04'),
(130, 'hfhfhf', 'test@gmail.com', '$2y$10$QkMfun6HW3e9Sscbpxh9qu1VmdLgG12868eNGXRXfj5RupTSIRZ5S', 17, 2, NULL, 2, 5, 4, '2016-09-02', '46464646', NULL, NULL, '2016-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `user_translations`
--

CREATE TABLE `user_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_translations`
--

INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`) VALUES
(75, 72, 'Nazim en', 'Khan en', '', '', 'Nganj en', NULL, 'en'),
(76, 72, 'Nazim bn', 'Khan Bn', '', '', 'Nganj bn', NULL, 'bn'),
(77, 73, 'Kamrul', 'Hasan', '', '', 'Dhaka', NULL, 'en'),
(78, 75, 'Anisur', 'Rahaman', '', '', 'dhaka', NULL, 'en'),
(79, 75, 'anis bangl', 'rahaman ba', '', '', 'dhaka bn', NULL, 'bn'),
(80, 76, 'Harunia', 'Rashid', '', '', 'dhaka', NULL, 'en'),
(81, 77, 'Alamin ', 'Shahin', '', '', 'Shariatpur', NULL, 'en'),
(82, 76, 'harun bang', 'chowdhuryb', '', '', 'dhaka bn', NULL, 'bn'),
(83, 79, 'Sami en', 'Hasan en', '', '', 'Dhaka', NULL, 'en'),
(84, 79, 'Sami bn', 'Sami bn', '', '', 'dhaka bn', NULL, 'bn'),
(85, 80, 'Sami en', 'Hasan en', '', '', 'Dhaka', NULL, 'en'),
(86, 80, 'Sami bn', 'Sami bn', '', '', 'dhaka bn', NULL, 'bn'),
(87, 81, 'Masum', 'Hasan', '', '', 'Dhaka', NULL, 'en'),
(88, 81, 'Masum bn', 'hasan bn', '', '', 'dhaka bn', NULL, 'bn'),
(93, 84, 'hello ', 'hasan', '', '', 'khakf', NULL, 'en'),
(94, 85, 'Monir', 'Hossain', '', '', 'Dhaka', NULL, 'en'),
(95, 85, 'Monir Bang', 'Hossain bn', '', '', 'dhaka bn', NULL, 'bn'),
(96, 87, 'Sohag', 'Molla', '', '', 'Bogra', NULL, 'en'),
(97, 90, 'Nazim', 'Khan', '', '', 'Dhaka', NULL, 'en'),
(98, 91, 'Sohag', 'Khann', '', '', 'dhaka', NULL, 'en'),
(99, 92, 'Suniya', 'Gaogg', '', '', 'SmartGadha', NULL, 'en'),
(100, 93, 'Super en', 'Admin en', '', '', 'dhaka', NULL, 'en'),
(101, 94, 'Firoza', 'Hamidd', '', '', 'Dhaka', NULL, 'en'),
(102, 95, 'Firoza', 'Hamidd', '', '', 'Dhaka', NULL, 'en'),
(103, 96, 'Sohag', 'Hossain', '', '', 'dhaka', NULL, 'en'),
(104, 97, 'hhhhhhh', 'hhhhhhhhhh', '', '', 'hhhhhhhhhh', NULL, 'en'),
(105, 98, 'Khalil kha', 'khannnnen', '', '', 'dhaka', NULL, 'en'),
(106, 98, 'jkjkjk ban', 'kjkj ban', '', '', 'dkjk abn', NULL, 'bn'),
(107, 99, 'suninin', 'jkjkjkjkjk', '', '', 'kjkjkjkjkj', NULL, 'en'),
(108, 100, 'Bhagin', 'Hanif', '', '', 'kjhkhlljkj', NULL, 'en'),
(109, 101, 'Array', 'String', '', '', 'dhaka', NULL, 'en'),
(110, 102, 'Array', 'String', 'hkhkjhkh', 'hkhkhh', 'dhaka', 'sdsdsadas', 'en'),
(111, 102, 'jljlkjkjlj', 'jjlkjkljlk', 'lhlhhlkl', 'lhljlljljl', 'lhkhkjhjkh', 'dfdsfdsf', 'bn'),
(112, 103, 'Mamun', 'kHanf', 'jljljjljj', 'ljljljljlj', 'ljljljljl', 'ljljljljlj', 'en'),
(113, 103, 'fdfsd', 'sdfsdf', 'fdsfs', 'dsfsdf', 'sdfsdf', 'fdssdf', 'bn'),
(114, 104, 'ljlkjkjljl', 'jljljljljl', 'jlkjljljlj', 'ljlkjljljl', 'jlkjlkjljl', 'jlkjlkjlkj', 'en'),
(115, 105, 'ljlkjkjljl', 'jljljljljl', 'jlkjljljlj', 'ljlkjljljl', 'jlkjlkjljl', 'jlkjlkjlkj', 'en'),
(116, 106, 'ljlkjkjljl', 'jljljljljl', 'jlkjljljlj', 'ljlkjljljl', 'jlkjlkjljl', 'jlkjlkjlkj', 'en'),
(117, 107, 'ljlkjkjljl', 'jljljljljl', 'jlkjljljlj', 'ljlkjljljl', 'jlkjlkjljl', 'jlkjlkjlkj', 'en'),
(118, 108, 'ljlkjkjljl', 'jljljljljl', 'jlkjljljlj', 'ljlkjljljl', 'jlkjlkjljl', 'jlkjlkjlkj', 'en'),
(119, 109, 'ljlkjkjljl', 'jljljljljl', 'jlkjljljlj', 'ljlkjljljl', 'jlkjlkjljl', 'jlkjlkjlkj', 'en'),
(120, 110, 'jkljjljjjl', 'ljlkjlkjlj', 'ljljlkjlkj', 'jljljljlj', 'ljljlkjljl', 'ljlkjlkjlj', 'en'),
(121, 111, 'jkljjljjjl', 'ljlkjlkjlj', 'ljljlkjlkj', 'jljljljlj', 'ljljlkjljl', 'ljlkjlkjlj', 'en'),
(122, 112, 'kjhgkhkhj', 'hkjhkghkjj', 'hkjhkjhjkh', 'hkhkjhkjhk', 'hkjhjkhkjh', 'hkjhkjhkhk', 'en'),
(123, 113, 'jlkjlkjljl', 'yiuyuitt', 'titiutuiti', 'uutiutiuti', 'itittiutit', 'tiutiutiti', 'en'),
(124, 114, 'kjljjjljlj', 'iyuiyuiyui', 'iuyiuyiuyu', 'yuiyiuyiuy', 'yiuyuiyiuy', 'yiuyiuyiuy', 'en'),
(125, 115, 'kjljjjljlj', 'iyuiyuiyui', 'iuyiuyiuyu', 'yuiyiuyiuy', 'yiuyuiyiuy', 'yiuyiuyiuy', 'en'),
(126, 116, 'hkjgfdjkl', 'ytresdfj', 'uyttdfghjk', 'iyuytdj', 'uiyyfghjk', 'yfyghjk', 'en'),
(127, 117, 'hkjgfdjkl', 'ytresdfj', 'uyttdfghjk', 'iyuytdj', 'uiyyfghjk', 'yfyghjk', 'en'),
(128, 118, 'hkjgfdjkl', 'ytresdfj', 'uyttdfghjk', 'iyuytdj', 'uiyyfghjk', 'yfyghjk', 'en'),
(129, 119, 'jljljljj', 'jjljlj', 'jljljlj', 'jjljlkjlkj', 'jljlkjlkjl', 'ljlkjlkjlj', 'en'),
(130, 120, 'Akshay ', 'Khanna', 'Akshay Sr', 'Mrs Sr Aks', 'jljlkjlkjl', 'ljlkjlkjlj', 'en'),
(131, 121, 'uuiuiuiu', 'iuiuiuiu', 'iuiuiuiu', 'iuiuiu', 'iuiuiui', 'uiuiuiuiui', 'en'),
(134, 124, 'Azizul', 'Khann', 'Heloo', 'jjljd', 'jljljlj', 'jjkljljkjl', 'en'),
(136, 126, 'Sumaiya', 'Hasan', 'Rashed Has', 'Mrs Rashed', 'Dhaka', 'Khulna', 'en'),
(137, 126, 'sumaiya ba', 'hasan bn', 'rashed ban', 'mrs rashed', 'dhaka ban', 'khulna ban', 'bn'),
(139, 120, 'Aksay bn', 'Khann bna', 'kjkjk bn', 'jkjk bn', 'jkljkljj', 'jkjkj kbn', 'bn'),
(140, 128, 'Salman', 'Khann', 'Selim khan', 'Mrs Selim ', 'India', 'India', 'en'),
(141, 129, 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', 'en'),
(142, 124, 'axdr bn', '', NULL, NULL, '', NULL, 'bn'),
(143, 130, 'hfffhfhhf', 'hffhfhf', 'hfhfhfhf', 'gfgfgfgf', 'gfgdfgdgdg', 'gfgfgfgfd', 'en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_no_unique` (`account_no`),
  ADD UNIQUE KEY `bank_accounts_ifsc_code_unique` (`ifsc_code`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_department_id_foreign` (`department_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

--
-- Indexes for table `employee_histories`
--
ALTER TABLE `employee_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_histories_user_id_foreign` (`user_id`),
  ADD KEY `employee_histories_department_id_foreign` (`department_id`),
  ADD KEY `employee_histories_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender_translations_gender_id_locale_unique` (`gender_id`,`locale`),
  ADD KEY `gender_translations_locale_index` (`locale`);

--
-- Indexes for table `holydays`
--
ALTER TABLE `holydays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holydays_type_id_foreign` (`type_id`);

--
-- Indexes for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_applications_leave_id_foreign` (`leave_id`),
  ADD KEY `leave_applications_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_application_translations_leave_application_id_foreign` (`leave_application_id`);

--
-- Indexes for table `log_tables`
--
ALTER TABLE `log_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medias_user_id_foreign` (`user_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passwords`
--
ALTER TABLE `passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passwords_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indexes for table `punches`
--
ALTER TABLE `punches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_rules`
--
ALTER TABLE `salary_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_types`
--
ALTER TABLE `salary_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_translations`
--
ALTER TABLE `shift_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_gender_id_foreign` (`gender_id`),
  ADD KEY `users_religion_id_foreign` (`religion_id`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `user_translations`
--
ALTER TABLE `user_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_translations_user_id_locale_unique` (`user_id`,`locale`),
  ADD KEY `user_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `employee_histories`
--
ALTER TABLE `employee_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `gender_translations`
--
ALTER TABLE `gender_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `holydays`
--
ALTER TABLE `holydays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `log_tables`
--
ALTER TABLE `log_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passwords`
--
ALTER TABLE `passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `punches`
--
ALTER TABLE `punches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salary_rules`
--
ALTER TABLE `salary_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salary_types`
--
ALTER TABLE `salary_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `shift_translations`
--
ALTER TABLE `shift_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `user_translations`
--
ALTER TABLE `user_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_histories`
--
ALTER TABLE `employee_histories`
  ADD CONSTRAINT `employee_histories_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_histories_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD CONSTRAINT `gender_translations_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `holydays`
--
ALTER TABLE `holydays`
  ADD CONSTRAINT `holydays_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `holy_day_types` (`id`);

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `leaves` (`id`),
  ADD CONSTRAINT `leave_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  ADD CONSTRAINT `leave_application_translations_leave_application_id_foreign` FOREIGN KEY (`leave_application_id`) REFERENCES `leave_applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `passwords`
--
ALTER TABLE `passwords`
  ADD CONSTRAINT `passwords_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`),
  ADD CONSTRAINT `users_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_translations`
--
ALTER TABLE `user_translations`
  ADD CONSTRAINT `user_translations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
