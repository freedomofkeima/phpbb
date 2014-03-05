-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2014 at 06:09 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 88, 0, 1),
(1, 0, 97, 0, 1),
(1, 0, 115, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 2, 0, 24, 0),
(7, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=122 ;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'f_softdelete', 0, 1, 0),
(32, 'm_', 1, 1, 0),
(33, 'm_approve', 1, 1, 0),
(34, 'm_chgposter', 1, 1, 0),
(35, 'm_delete', 1, 1, 0),
(36, 'm_edit', 1, 1, 0),
(37, 'm_info', 1, 1, 0),
(38, 'm_lock', 1, 1, 0),
(39, 'm_merge', 1, 1, 0),
(40, 'm_move', 1, 1, 0),
(41, 'm_report', 1, 1, 0),
(42, 'm_split', 1, 1, 0),
(43, 'm_softdelete', 1, 1, 0),
(44, 'm_ban', 1, 0, 0),
(45, 'm_warn', 1, 0, 0),
(46, 'a_', 1, 0, 0),
(47, 'a_aauth', 1, 0, 0),
(48, 'a_attach', 1, 0, 0),
(49, 'a_authgroups', 1, 0, 0),
(50, 'a_authusers', 1, 0, 0),
(51, 'a_backup', 1, 0, 0),
(52, 'a_ban', 1, 0, 0),
(53, 'a_bbcode', 1, 0, 0),
(54, 'a_board', 1, 0, 0),
(55, 'a_bots', 1, 0, 0),
(56, 'a_clearlogs', 1, 0, 0),
(57, 'a_email', 1, 0, 0),
(58, 'a_extensions', 1, 0, 0),
(59, 'a_fauth', 1, 0, 0),
(60, 'a_forum', 1, 0, 0),
(61, 'a_forumadd', 1, 0, 0),
(62, 'a_forumdel', 1, 0, 0),
(63, 'a_group', 1, 0, 0),
(64, 'a_groupadd', 1, 0, 0),
(65, 'a_groupdel', 1, 0, 0),
(66, 'a_icons', 1, 0, 0),
(67, 'a_jabber', 1, 0, 0),
(68, 'a_language', 1, 0, 0),
(69, 'a_mauth', 1, 0, 0),
(70, 'a_modules', 1, 0, 0),
(71, 'a_names', 1, 0, 0),
(72, 'a_phpinfo', 1, 0, 0),
(73, 'a_profile', 1, 0, 0),
(74, 'a_prune', 1, 0, 0),
(75, 'a_ranks', 1, 0, 0),
(76, 'a_reasons', 1, 0, 0),
(77, 'a_roles', 1, 0, 0),
(78, 'a_search', 1, 0, 0),
(79, 'a_server', 1, 0, 0),
(80, 'a_styles', 1, 0, 0),
(81, 'a_switchperm', 1, 0, 0),
(82, 'a_uauth', 1, 0, 0),
(83, 'a_user', 1, 0, 0),
(84, 'a_userdel', 1, 0, 0),
(85, 'a_viewauth', 1, 0, 0),
(86, 'a_viewlogs', 1, 0, 0),
(87, 'a_words', 1, 0, 0),
(88, 'u_', 1, 0, 0),
(89, 'u_attach', 1, 0, 0),
(90, 'u_chgavatar', 1, 0, 0),
(91, 'u_chgcensors', 1, 0, 0),
(92, 'u_chgemail', 1, 0, 0),
(93, 'u_chggrp', 1, 0, 0),
(94, 'u_chgname', 1, 0, 0),
(95, 'u_chgpasswd', 1, 0, 0),
(96, 'u_chgprofileinfo', 1, 0, 0),
(97, 'u_download', 1, 0, 0),
(98, 'u_hideonline', 1, 0, 0),
(99, 'u_ignoreflood', 1, 0, 0),
(100, 'u_masspm', 1, 0, 0),
(101, 'u_masspm_group', 1, 0, 0),
(102, 'u_pm_attach', 1, 0, 0),
(103, 'u_pm_bbcode', 1, 0, 0),
(104, 'u_pm_delete', 1, 0, 0),
(105, 'u_pm_download', 1, 0, 0),
(106, 'u_pm_edit', 1, 0, 0),
(107, 'u_pm_emailpm', 1, 0, 0),
(108, 'u_pm_flash', 1, 0, 0),
(109, 'u_pm_forward', 1, 0, 0),
(110, 'u_pm_img', 1, 0, 0),
(111, 'u_pm_printpm', 1, 0, 0),
(112, 'u_pm_smilies', 1, 0, 0),
(113, 'u_readpm', 1, 0, 0),
(114, 'u_savedrafts', 1, 0, 0),
(115, 'u_search', 1, 0, 0),
(116, 'u_sendemail', 1, 0, 0),
(117, 'u_sendim', 1, 0, 0),
(118, 'u_sendpm', 1, 0, 0),
(119, 'u_sig', 1, 0, 0),
(120, 'u_viewonline', 1, 0, 0),
(121, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5354414e44415244, 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 0x524f4c455f4445534352495054494f4e5f41444d494e5f464f52554d, 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5553455247524f5550, 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 0x524f4c455f4445534352495054494f4e5f41444d494e5f46554c4c, 'a_', 2),
(5, 'ROLE_USER_FULL', 0x524f4c455f4445534352495054494f4e5f555345525f46554c4c, 'u_', 3),
(6, 'ROLE_USER_STANDARD', 0x524f4c455f4445534352495054494f4e5f555345525f5354414e44415244, 'u_', 1),
(7, 'ROLE_USER_LIMITED', 0x524f4c455f4445534352495054494f4e5f555345525f4c494d49544544, 'u_', 2),
(8, 'ROLE_USER_NOPM', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f504d, 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f415641544152, 'u_', 5),
(10, 'ROLE_MOD_FULL', 0x524f4c455f4445534352495054494f4e5f4d4f445f46554c4c, 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 0x524f4c455f4445534352495054494f4e5f4d4f445f5354414e44415244, 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 0x524f4c455f4445534352495054494f4e5f4d4f445f53494d504c45, 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 0x524f4c455f4445534352495054494f4e5f4d4f445f5155455545, 'm_', 4),
(14, 'ROLE_FORUM_FULL', 0x524f4c455f4445534352495054494f4e5f464f52554d5f46554c4c, 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 0x524f4c455f4445534352495054494f4e5f464f52554d5f5354414e44415244, 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e4f414343455353, 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 0x524f4c455f4445534352495054494f4e5f464f52554d5f524541444f4e4c59, 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d49544544, 'f_', 3),
(19, 'ROLE_FORUM_BOT', 0x524f4c455f4445534352495054494f4e5f464f52554d5f424f54, 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4f4e5155455545, 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f504f4c4c53, 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d495445445f504f4c4c53, 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 0x524f4c455f4445534352495054494f4e5f555345525f4e45575f4d454d424552, 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e45575f4d454d424552, 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 46, 1),
(1, 48, 1),
(1, 49, 1),
(1, 50, 1),
(1, 52, 1),
(1, 53, 1),
(1, 54, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 69, 1),
(1, 71, 1),
(1, 73, 1),
(1, 74, 1),
(1, 75, 1),
(1, 76, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(2, 46, 1),
(2, 49, 1),
(2, 50, 1),
(2, 59, 1),
(2, 60, 1),
(2, 61, 1),
(2, 62, 1),
(2, 69, 1),
(2, 74, 1),
(2, 82, 1),
(2, 85, 1),
(2, 86, 1),
(3, 46, 1),
(3, 49, 1),
(3, 50, 1),
(3, 52, 1),
(3, 63, 1),
(3, 64, 1),
(3, 65, 1),
(3, 75, 1),
(3, 82, 1),
(3, 83, 1),
(3, 85, 1),
(3, 86, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(6, 88, 1),
(6, 89, 1),
(6, 90, 1),
(6, 91, 1),
(6, 92, 1),
(6, 95, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 121, 1),
(7, 88, 1),
(7, 90, 1),
(7, 91, 1),
(7, 92, 1),
(7, 95, 1),
(7, 96, 1),
(7, 97, 1),
(7, 98, 1),
(7, 103, 1),
(7, 104, 1),
(7, 105, 1),
(7, 106, 1),
(7, 109, 1),
(7, 110, 1),
(7, 111, 1),
(7, 112, 1),
(7, 113, 1),
(7, 118, 1),
(7, 119, 1),
(7, 121, 1),
(8, 88, 1),
(8, 90, 1),
(8, 91, 1),
(8, 92, 1),
(8, 95, 1),
(8, 97, 1),
(8, 98, 1),
(8, 100, 0),
(8, 101, 0),
(8, 113, 0),
(8, 118, 0),
(8, 119, 1),
(8, 121, 1),
(9, 88, 1),
(9, 90, 0),
(9, 91, 1),
(9, 92, 1),
(9, 95, 1),
(9, 96, 1),
(9, 97, 1),
(9, 98, 1),
(9, 103, 1),
(9, 104, 1),
(9, 105, 1),
(9, 106, 1),
(9, 109, 1),
(9, 110, 1),
(9, 111, 1),
(9, 112, 1),
(9, 113, 1),
(9, 118, 1),
(9, 119, 1),
(9, 121, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(11, 32, 1),
(11, 33, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 45, 1),
(12, 32, 1),
(12, 35, 1),
(12, 36, 1),
(12, 37, 1),
(12, 41, 1),
(12, 43, 1),
(13, 32, 1),
(13, 33, 1),
(13, 36, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(18, 31, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 15, 0),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(20, 31, 1),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(21, 31, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1),
(22, 31, 1),
(23, 96, 0),
(23, 100, 0),
(23, 101, 0),
(23, 118, 0),
(24, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=46 ;

--
-- Dumping data for table `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_gravatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_password_reset', '1', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('assets_version', '1', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_oauth_bitly_key', '', 0),
('auth_oauth_bitly_secret', '', 0),
('auth_oauth_facebook_key', '', 0),
('auth_oauth_facebook_secret', '', 0),
('auth_oauth_google_key', '', 0),
('auth_oauth_google_secret', '', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '004306d628839f7d82c97ed91b73e494', 0),
('board_contact', 'iskandarsetiadi@students.itb.ac.id', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', 'iskandarsetiadi@students.itb.ac.id', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_startdate', '1392616419', 0),
('board_timezone', 'UTC', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1393295245', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'phpbb_captcha_gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('confirm_refresh', '1', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_fh4o5', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1393222716', 1),
('dbms_version', '5.5.27', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_lang', 'en', 0),
('default_style', '1', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_confirm', '1', 0),
('enable_mod_rewrite', '0', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '0', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_pm', '0', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_notifications', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '0', 0),
('newest_user_colour', '', 1),
('newest_user_id', '48', 1),
('newest_username', 'ryz', 1),
('num_files', '0', 1),
('num_posts', '3', 1),
('num_topics', '1', 1),
('num_users', '2', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('plupload_last_gc', '0', 1),
('plupload_salt', 'd21407b276036cb5914c5566db78ef10', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', 'b53d3038132e58fa', 0),
('queue_interval', '60', 0),
('rand_seed', 'cd442097b5987b91e72c127ea17e91e1', 1),
('rand_seed_last_update', '1393295319', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1393222680', 1),
('record_online_date', '1392616491', 1),
('record_online_users', '2', 1),
('referer_validation', '1', 0),
('require_activation', '0', 0),
('script_path', '/phpBB/phpBB', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '0', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1393295252', 1),
('session_length', '3600', 0),
('site_desc', 'A short text to describe your forum', 0),
('site_home_text', '', 0),
('site_home_url', '', 0),
('sitename', 'yourdomain.com', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '25', 0),
('smtp_username', '', 0),
('teampage_forums', '1', 0),
('teampage_memberships', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '1', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.1.0-a3-dev', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1393295319', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config_text`
--

CREATE TABLE IF NOT EXISTS `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ext`
--

CREATE TABLE IF NOT EXISTS `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `forum_options`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 1, 4, '', 'Your first category', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, '', 1392616419, 'freedomofkeima', 'AA0000', 96, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 2, 3, 0x613a313a7b693a313b613a323a7b693a303b733a31393a22596f75722066697273742063617465676f7279223b693a313b693a303b7d7d, 'Your first forum', 0x4465736372697074696f6e206f6620796f757220666972737420666f72756d2e, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 4, 0, 0, 1, 0, 0, 4, 2, 'Re: Welcome to phpBB3', 1393229238, 'freedomofkeima', 'AA0000', 112, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_track`
--

INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1393229239),
(48, 2, 1393229264);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 0, 2),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `log_time` (`log_time`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=145 ;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 2, 0, 0, 0, '127.0.0.1', 1392616462, 0x4c4f475f494e5354414c4c5f494e5354414c4c4544, 0x613a313a7b693a303b733a31323a22332e312e302d61332d646576223b7d),
(2, 0, 2, 0, 0, 0, '127.0.0.1', 1392848430, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(3, 0, 2, 0, 0, 0, '127.0.0.1', 1392848692, 0x4c4f475f434f4e4649475f504f5354, ''),
(4, 0, 2, 0, 0, 0, '127.0.0.1', 1392850711, 0x4c4f475f50555247455f4341434845, ''),
(5, 0, 2, 0, 0, 0, '127.0.0.1', 1392859689, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(6, 0, 2, 0, 0, 0, '127.0.0.1', 1392860065, 0x4c4f475f50555247455f4341434845, ''),
(7, 0, 2, 0, 0, 0, '127.0.0.1', 1392860126, 0x4c4f475f50555247455f4341434845, ''),
(8, 0, 2, 0, 0, 0, '127.0.0.1', 1392860187, 0x4c4f475f50555247455f4341434845, ''),
(9, 0, 2, 0, 0, 0, '127.0.0.1', 1392860298, 0x4c4f475f50555247455f4341434845, ''),
(10, 0, 2, 0, 0, 0, '127.0.0.1', 1392860664, 0x4c4f475f50555247455f4341434845, ''),
(11, 0, 2, 0, 0, 0, '127.0.0.1', 1392860735, 0x4c4f475f50555247455f4341434845, ''),
(12, 0, 2, 0, 0, 0, '127.0.0.1', 1392861272, 0x4c4f475f50555247455f4341434845, ''),
(13, 0, 2, 0, 0, 0, '127.0.0.1', 1392862391, 0x4c4f475f50555247455f4341434845, ''),
(14, 0, 2, 0, 0, 0, '127.0.0.1', 1392862452, 0x4c4f475f50555247455f4341434845, ''),
(15, 0, 2, 0, 0, 0, '127.0.0.1', 1392864646, 0x4c4f475f50555247455f4341434845, ''),
(16, 0, 2, 0, 0, 0, '127.0.0.1', 1392864704, 0x4c4f475f50555247455f4341434845, ''),
(17, 0, 2, 0, 0, 0, '127.0.0.1', 1392864707, 0x4c4f475f50555247455f4341434845, ''),
(18, 0, 2, 0, 0, 0, '127.0.0.1', 1392865160, 0x4c4f475f50555247455f4341434845, ''),
(19, 0, 2, 0, 0, 0, '127.0.0.1', 1392865165, 0x4c4f475f50555247455f4341434845, ''),
(20, 0, 2, 0, 0, 0, '127.0.0.1', 1392865182, 0x4c4f475f50555247455f4341434845, ''),
(21, 0, 2, 0, 0, 0, '127.0.0.1', 1392873184, 0x4c4f475f50555247455f4341434845, ''),
(22, 0, 2, 0, 0, 0, '127.0.0.1', 1392873208, 0x4c4f475f50555247455f4341434845, ''),
(23, 0, 2, 0, 0, 0, '127.0.0.1', 1392873440, 0x4c4f475f50555247455f4341434845, ''),
(24, 0, 2, 0, 0, 0, '127.0.0.1', 1392873498, 0x4c4f475f50555247455f4341434845, ''),
(25, 0, 2, 0, 0, 0, '127.0.0.1', 1392873517, 0x4c4f475f50555247455f4341434845, ''),
(26, 0, 2, 0, 0, 0, '127.0.0.1', 1392873830, 0x4c4f475f50555247455f4341434845, ''),
(27, 0, 2, 0, 0, 0, '127.0.0.1', 1392873941, 0x4c4f475f50555247455f4341434845, ''),
(28, 0, 2, 0, 0, 0, '127.0.0.1', 1392873983, 0x4c4f475f50555247455f4341434845, ''),
(29, 0, 2, 0, 0, 0, '127.0.0.1', 1392873999, 0x4c4f475f50555247455f4341434845, ''),
(30, 0, 2, 0, 0, 0, '127.0.0.1', 1392874047, 0x4c4f475f50555247455f4341434845, ''),
(31, 0, 2, 0, 0, 0, '127.0.0.1', 1392874064, 0x4c4f475f50555247455f4341434845, ''),
(32, 0, 2, 0, 0, 0, '127.0.0.1', 1392874272, 0x4c4f475f50555247455f4341434845, ''),
(33, 0, 2, 0, 0, 0, '127.0.0.1', 1392874607, 0x4c4f475f50555247455f4341434845, ''),
(34, 0, 2, 0, 0, 0, '127.0.0.1', 1392874875, 0x4c4f475f50555247455f4341434845, ''),
(35, 0, 2, 0, 0, 0, '127.0.0.1', 1392875103, 0x4c4f475f50555247455f4341434845, ''),
(36, 0, 2, 0, 0, 0, '127.0.0.1', 1392875493, 0x4c4f475f50555247455f4341434845, ''),
(37, 0, 2, 0, 0, 0, '127.0.0.1', 1392875522, 0x4c4f475f50555247455f4341434845, ''),
(38, 0, 2, 0, 0, 0, '127.0.0.1', 1392875542, 0x4c4f475f50555247455f4341434845, ''),
(39, 0, 2, 0, 0, 0, '127.0.0.1', 1392875971, 0x4c4f475f50555247455f4341434845, ''),
(40, 0, 2, 0, 0, 0, '127.0.0.1', 1392875980, 0x4c4f475f50555247455f4341434845, ''),
(41, 0, 2, 0, 0, 0, '127.0.0.1', 1392876132, 0x4c4f475f50555247455f4341434845, ''),
(42, 0, 2, 0, 0, 0, '127.0.0.1', 1392876219, 0x4c4f475f50555247455f4341434845, ''),
(43, 0, 2, 0, 0, 0, '127.0.0.1', 1392876339, 0x4c4f475f50555247455f4341434845, ''),
(44, 0, 2, 0, 0, 0, '127.0.0.1', 1392876836, 0x4c4f475f50555247455f4341434845, ''),
(45, 0, 2, 0, 0, 0, '127.0.0.1', 1392876852, 0x4c4f475f50555247455f4341434845, ''),
(46, 0, 2, 0, 0, 0, '127.0.0.1', 1392876891, 0x4c4f475f50555247455f4341434845, ''),
(47, 0, 2, 0, 0, 0, '127.0.0.1', 1392877965, 0x4c4f475f50555247455f4341434845, ''),
(48, 0, 2, 0, 0, 0, '127.0.0.1', 1392878366, 0x4c4f475f50555247455f4341434845, ''),
(49, 0, 2, 0, 0, 0, '127.0.0.1', 1392878447, 0x4c4f475f50555247455f4341434845, ''),
(50, 0, 2, 0, 0, 0, '127.0.0.1', 1392878543, 0x4c4f475f50555247455f4341434845, ''),
(51, 0, 2, 0, 0, 0, '127.0.0.1', 1392878906, 0x4c4f475f50555247455f4341434845, ''),
(52, 0, 2, 0, 0, 0, '127.0.0.1', 1392879020, 0x4c4f475f50555247455f4341434845, ''),
(53, 0, 2, 0, 0, 0, '127.0.0.1', 1392879062, 0x4c4f475f50555247455f4341434845, ''),
(54, 0, 2, 0, 0, 0, '127.0.0.1', 1392879342, 0x4c4f475f50555247455f4341434845, ''),
(55, 0, 2, 0, 0, 0, '127.0.0.1', 1392879463, 0x4c4f475f50555247455f4341434845, ''),
(56, 0, 2, 0, 0, 0, '127.0.0.1', 1392879490, 0x4c4f475f50555247455f4341434845, ''),
(57, 0, 2, 0, 0, 0, '127.0.0.1', 1392879502, 0x4c4f475f50555247455f4341434845, ''),
(58, 0, 2, 0, 0, 0, '127.0.0.1', 1392879793, 0x4c4f475f50555247455f4341434845, ''),
(59, 0, 2, 0, 0, 0, '127.0.0.1', 1392879824, 0x4c4f475f50555247455f4341434845, ''),
(60, 0, 2, 0, 0, 0, '127.0.0.1', 1392880074, 0x4c4f475f50555247455f4341434845, ''),
(61, 0, 2, 0, 0, 0, '127.0.0.1', 1392880081, 0x4c4f475f50555247455f4341434845, ''),
(62, 0, 2, 0, 0, 0, '127.0.0.1', 1392880232, 0x4c4f475f50555247455f4341434845, ''),
(63, 0, 2, 0, 0, 0, '127.0.0.1', 1392880376, 0x4c4f475f50555247455f4341434845, ''),
(64, 0, 2, 0, 0, 0, '127.0.0.1', 1392880585, 0x4c4f475f50555247455f4341434845, ''),
(65, 0, 2, 0, 0, 0, '127.0.0.1', 1392880703, 0x4c4f475f50555247455f4341434845, ''),
(66, 0, 2, 0, 0, 0, '127.0.0.1', 1392880921, 0x4c4f475f50555247455f4341434845, ''),
(67, 0, 2, 0, 0, 0, '127.0.0.1', 1392881200, 0x4c4f475f50555247455f4341434845, ''),
(68, 0, 2, 0, 0, 0, '127.0.0.1', 1392881239, 0x4c4f475f50555247455f4341434845, ''),
(69, 0, 2, 0, 0, 0, '127.0.0.1', 1392881460, 0x4c4f475f50555247455f4341434845, ''),
(70, 0, 2, 0, 0, 0, '127.0.0.1', 1392881463, 0x4c4f475f50555247455f4341434845, ''),
(71, 0, 2, 0, 0, 0, '127.0.0.1', 1392881475, 0x4c4f475f50555247455f4341434845, ''),
(72, 0, 2, 0, 0, 0, '127.0.0.1', 1392881568, 0x4c4f475f50555247455f4341434845, ''),
(73, 0, 2, 0, 0, 0, '127.0.0.1', 1392881958, 0x4c4f475f50555247455f4341434845, ''),
(74, 0, 2, 0, 0, 0, '127.0.0.1', 1392881960, 0x4c4f475f50555247455f4341434845, ''),
(75, 0, 2, 0, 0, 0, '127.0.0.1', 1392882002, 0x4c4f475f50555247455f4341434845, ''),
(76, 0, 2, 0, 0, 0, '127.0.0.1', 1392882102, 0x4c4f475f50555247455f4341434845, ''),
(77, 0, 2, 0, 0, 0, '127.0.0.1', 1392882161, 0x4c4f475f50555247455f4341434845, ''),
(78, 0, 2, 0, 0, 0, '127.0.0.1', 1392882788, 0x4c4f475f50555247455f4341434845, ''),
(79, 0, 2, 0, 0, 0, '127.0.0.1', 1392882862, 0x4c4f475f50555247455f4341434845, ''),
(80, 0, 2, 0, 0, 0, '127.0.0.1', 1392882890, 0x4c4f475f50555247455f4341434845, ''),
(81, 0, 2, 0, 0, 0, '127.0.0.1', 1392882902, 0x4c4f475f50555247455f4341434845, ''),
(82, 0, 2, 0, 0, 0, '127.0.0.1', 1392882913, 0x4c4f475f50555247455f4341434845, ''),
(83, 0, 2, 0, 0, 0, '127.0.0.1', 1392882979, 0x4c4f475f50555247455f4341434845, ''),
(84, 0, 2, 0, 0, 0, '127.0.0.1', 1392883253, 0x4c4f475f50555247455f4341434845, ''),
(85, 0, 2, 0, 0, 0, '127.0.0.1', 1392883385, 0x4c4f475f50555247455f4341434845, ''),
(86, 0, 2, 0, 0, 0, '127.0.0.1', 1392883810, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(87, 0, 2, 0, 0, 0, '127.0.0.1', 1392883888, 0x4c4f475f50555247455f4341434845, ''),
(88, 0, 2, 0, 0, 0, '127.0.0.1', 1392883914, 0x4c4f475f50555247455f4341434845, ''),
(89, 0, 2, 0, 0, 0, '127.0.0.1', 1392883950, 0x4c4f475f50555247455f4341434845, ''),
(90, 0, 2, 0, 0, 0, '127.0.0.1', 1392884102, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(91, 0, 2, 0, 0, 0, '127.0.0.1', 1392884401, 0x4c4f475f50555247455f4341434845, ''),
(92, 0, 2, 0, 0, 0, '127.0.0.1', 1392884652, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(93, 0, 2, 0, 0, 0, '127.0.0.1', 1392884679, 0x4c4f475f434f4e4649475f524547495354524154494f4e, ''),
(94, 1, 2, 2, 1, 0, '127.0.0.1', 1392884742, 0x4c4f475f504f53545f415050524f564544, 0x613a313a7b693a303b733a32313a2252653a2057656c636f6d6520746f20706870424233223b7d),
(95, 0, 2, 0, 0, 0, '127.0.0.1', 1392884778, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(96, 0, 2, 0, 0, 0, '127.0.0.1', 1392884862, 0x4c4f475f41434c5f5452414e534645525f5045524d495353494f4e53, 0x613a313a7b693a303b733a333a2272797a223b7d),
(97, 0, 2, 0, 0, 0, '127.0.0.1', 1392884883, 0x4c4f475f41434c5f524553544f52455f5045524d495353494f4e53, 0x613a313a7b693a303b733a333a2272797a223b7d),
(98, 0, 2, 0, 0, 0, '127.0.0.1', 1392884938, 0x4c4f475f41434c5f4144445f47524f55505f474c4f42414c5f555f, 0x613a313a7b693a303b733a34373a223c7370616e20636c6173733d22736570223e4e65776c7920726567697374657265642075736572733c2f7370616e3e223b7d),
(99, 0, 2, 0, 0, 0, '127.0.0.1', 1393135798, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(100, 0, 2, 0, 0, 0, '127.0.0.1', 1393135824, 0x4c4f475f50555247455f4341434845, ''),
(101, 0, 2, 0, 0, 0, '127.0.0.1', 1393137709, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(102, 0, 2, 0, 0, 0, '127.0.0.1', 1393137736, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(103, 0, 2, 0, 0, 0, '127.0.0.1', 1393137961, 0x4c4f475f50555247455f4341434845, ''),
(104, 0, 2, 0, 0, 0, '127.0.0.1', 1393138006, 0x4c4f475f50555247455f4341434845, ''),
(105, 0, 2, 0, 0, 0, '127.0.0.1', 1393138187, 0x4c4f475f50555247455f4341434845, ''),
(106, 0, 2, 0, 0, 0, '127.0.0.1', 1393138516, 0x4c4f475f50555247455f4341434845, ''),
(107, 0, 2, 0, 0, 0, '127.0.0.1', 1393138654, 0x4c4f475f50555247455f4341434845, ''),
(108, 0, 2, 0, 0, 0, '127.0.0.1', 1393138684, 0x4c4f475f50555247455f4341434845, ''),
(109, 0, 2, 0, 0, 0, '127.0.0.1', 1393138715, 0x4c4f475f50555247455f4341434845, ''),
(110, 0, 2, 0, 0, 0, '127.0.0.1', 1393138720, 0x4c4f475f50555247455f4341434845, ''),
(111, 0, 2, 0, 0, 0, '127.0.0.1', 1393138723, 0x4c4f475f50555247455f4341434845, ''),
(112, 0, 2, 0, 0, 0, '127.0.0.1', 1393138802, 0x4c4f475f50555247455f4341434845, ''),
(113, 0, 2, 0, 0, 0, '127.0.0.1', 1393138806, 0x4c4f475f50555247455f4341434845, ''),
(114, 0, 2, 0, 0, 0, '127.0.0.1', 1393138837, 0x4c4f475f50555247455f4341434845, ''),
(115, 0, 2, 0, 0, 0, '127.0.0.1', 1393138948, 0x4c4f475f50555247455f4341434845, ''),
(116, 0, 2, 0, 0, 0, '127.0.0.1', 1393138998, 0x4c4f475f50555247455f4341434845, ''),
(117, 0, 2, 0, 0, 0, '127.0.0.1', 1393139082, 0x4c4f475f434f4e4649475f5345435552495459, ''),
(118, 0, 2, 0, 0, 0, '127.0.0.1', 1393139086, 0x4c4f475f50555247455f4341434845, ''),
(119, 0, 2, 0, 0, 0, '127.0.0.1', 1393139184, 0x4c4f475f50555247455f4341434845, ''),
(120, 0, 2, 0, 0, 0, '127.0.0.1', 1393139200, 0x4c4f475f50555247455f4341434845, ''),
(121, 0, 2, 0, 0, 0, '127.0.0.1', 1393139203, 0x4c4f475f50555247455f4341434845, ''),
(122, 0, 2, 0, 0, 0, '127.0.0.1', 1393139254, 0x4c4f475f50555247455f4341434845, ''),
(123, 0, 2, 0, 0, 0, '127.0.0.1', 1393139278, 0x4c4f475f50555247455f4341434845, ''),
(124, 0, 2, 0, 0, 0, '127.0.0.1', 1393139311, 0x4c4f475f50555247455f4341434845, ''),
(125, 0, 2, 0, 0, 0, '127.0.0.1', 1393139655, 0x4c4f475f50555247455f4341434845, ''),
(126, 0, 2, 0, 0, 0, '127.0.0.1', 1393140015, 0x4c4f475f50555247455f4341434845, ''),
(127, 0, 2, 0, 0, 0, '127.0.0.1', 1393140066, 0x4c4f475f50555247455f4341434845, ''),
(128, 0, 2, 0, 0, 0, '127.0.0.1', 1393140184, 0x4c4f475f50555247455f4341434845, ''),
(129, 0, 2, 0, 0, 0, '127.0.0.1', 1393140278, 0x4c4f475f50555247455f4341434845, ''),
(130, 0, 2, 0, 0, 0, '127.0.0.1', 1393226016, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(131, 0, 2, 0, 0, 0, '127.0.0.1', 1393226038, 0x4c4f475f50555247455f4341434845, ''),
(132, 0, 2, 0, 0, 0, '127.0.0.1', 1393227238, 0x4c4f475f50555247455f4341434845, ''),
(133, 0, 2, 0, 0, 0, '127.0.0.1', 1393227284, 0x4c4f475f50555247455f4341434845, ''),
(134, 0, 2, 0, 0, 0, '127.0.0.1', 1393227788, 0x4c4f475f434f4e4649475f5345435552495459, ''),
(135, 0, 2, 0, 0, 0, '127.0.0.1', 1393244787, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(136, 0, 2, 0, 0, 0, '127.0.0.1', 1393244807, 0x4c4f475f50555247455f4341434845, ''),
(137, 0, 2, 0, 0, 0, '127.0.0.1', 1393244995, 0x4c4f475f50555247455f4341434845, ''),
(138, 0, 2, 0, 0, 0, '127.0.0.1', 1393261392, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(139, 0, 2, 0, 0, 0, '127.0.0.1', 1393277223, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(140, 0, 2, 0, 0, 0, '127.0.0.1', 1393277422, 0x4c4f475f434f4e4649475f41555448, ''),
(141, 0, 2, 0, 0, 0, '127.0.0.1', 1393277543, 0x4c4f475f434f4e4649475f41555448, ''),
(142, 0, 2, 0, 0, 0, '127.0.0.1', 1393277924, 0x4c4f475f434f4e4649475f41555448, ''),
(143, 0, 2, 0, 0, 0, '127.0.0.1', 1393277930, 0x4c4f475f50555247455f4341434845, ''),
(144, 0, 2, 0, 0, 0, '127.0.0.1', 1393278235, 0x4c4f475f434f4e4649475f41555448, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_login_attempts`
--

CREATE TABLE IF NOT EXISTS `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_migrations`
--

CREATE TABLE IF NOT EXISTS `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31325f726331223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f315f726331223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31305f726333223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f39223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31305f726331223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31305f726332223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31315f726332223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3130223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31315f726331223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31325f726333223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31325f726331223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31325f726332223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 0x613a303a7b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f325f726332223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f31223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f325f726331223b7d, 1, 1, '', 1392616462, 1392616462),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f335f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f32223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f345f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f33223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 0x613a313a7b693a303b733a35323a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f355f7263317061727432223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f34223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f355f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f365f726334223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f35223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f365f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f365f726332223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f365f726333223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f375f726332223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f37223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f36223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f375f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f385f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f375f706c31223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f395f726334223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f38223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f395f726331223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f395f726332223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 0x613a313a7b693a303b733a34373a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f395f726333223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6a71756572795f757064617465223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 0x613a31383a7b693a303b733a34363a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c6c6f63616c5f75726c5f6262636f6465223b693a313b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3132223b693a323b733a35373a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6163705f7374796c655f636f6d706f6e656e74735f6d6f64756c65223b693a333b733a33393a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c616c6c6f775f63646e223b693a343b733a34393a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c617574685f70726f76696465725f6f61757468223b693a353b733a33373a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c61766174617273223b693a363b733a34303a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c626f617264696e646578223b693a373b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c636f6e6669675f64625f74657874223b693a383b733a34353a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c666f72676f745f70617373776f7264223b693a393b733a34313a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6d6f645f72657772697465223b693a31303b733a34393a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6d7973716c5f66756c6c746578745f64726f70223b693a31313b733a34303a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e616d65737061636573223b693a31323b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e735f63726f6e223b693a31333b733a36303a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e5f6f7074696f6e735f7265636f6e76657274223b693a31343b733a33383a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c706c75706c6f6164223b693a31353b733a35313a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c7369676e61747572655f6d6f64756c655f61757468223b693a31363b733a35323a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c736f667464656c6574655f6d63705f6d6f64756c6573223b693a31373b733a33383a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c7465616d70616765223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 0x613a323a7b693a303b733a33363a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c616c70686131223b693a313b733a35313a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e735f63726f6e5f7032223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 0x613a303a7b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 0x613a323a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b693a313b733a33373a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c61766174617273223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 0x613a303a7b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616463, 1392616463),
('\\phpbb\\db\\migration\\data\\v310\\dev', 0x613a343a7b693a303b733a34303a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c657874656e73696f6e73223b693a313b733a34353a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c7374796c655f7570646174655f7032223b693a323b733a34313a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c74696d657a6f6e655f7032223b693a333b733a35323a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c7265706f727465645f706f7374735f646973706c6179223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 0x613a313a7b693a303b733a35343a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e735f736368656d615f666978223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e73223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 0x613a313a7b693a303b733a34383a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e735f63726f6e223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 0x613a313a7b693a303b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c6e6f74696669636174696f6e73223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 0x613a323a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b693a313b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c736f667464656c6574655f7032223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 0x613a323a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b693a313b733a34333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c736f667464656c6574655f7031223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 0x613a313a7b693a303b733a34353a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c7374796c655f7570646174655f7031223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 0x613a313a7b693a303b733a34343a225c70687062625c64625c6d6967726174696f6e5c646174615c763330785c72656c656173655f335f305f3131223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 0x613a313a7b693a303b733a33383a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c74696d657a6f6e65223b7d, 1, 1, '', 1392616464, 1392616464),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 0x613a313a7b693a303b733a33333a225c70687062625c64625c6d6967726174696f6e5c646174615c763331305c646576223b7d, 1, 1, '', 1392616464, 1392616464);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=207 ;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 64, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 41, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 42, 49, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 50, 63, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 65, 84, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 66, 71, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 72, 83, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 85, 112, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 86, 99, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 100, 111, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 113, 170, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 114, 147, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 148, 157, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 158, 169, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 171, 220, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 174, 183, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 184, 195, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 196, 205, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 206, 219, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 221, 238, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 222, 229, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 230, 233, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 234, 237, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 239, 258, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 240, 249, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 250, 257, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 259, 282, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 260, 263, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 264, 273, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 274, 281, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 283, 284, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 101, 102, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 103, 104, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 159, 160, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 161, 162, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 163, 164, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 87, 88, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 89, 90, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 91, 92, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 43, 44, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 45, 46, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 51, 52, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 53, 54, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 265, 266, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_database', 'acp', 27, 251, 252, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(63, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(64, 1, 1, 'acp_disallow', 'acp', 15, 165, 166, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(65, 1, 1, 'acp_email', 'acp', 30, 267, 268, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(66, 1, 1, 'acp_extensions', 'acp', 23, 231, 232, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(67, 1, 1, 'acp_forums', 'acp', 7, 67, 68, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(68, 1, 1, 'acp_groups', 'acp', 14, 149, 150, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(69, 1, 1, 'acp_groups', 'acp', 14, 151, 152, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(70, 1, 1, 'acp_icons', 'acp', 10, 93, 94, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(71, 1, 1, 'acp_icons', 'acp', 10, 95, 96, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(72, 1, 1, 'acp_inactive', 'acp', 13, 117, 118, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(73, 1, 1, 'acp_jabber', 'acp', 4, 47, 48, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(74, 1, 1, 'acp_language', 'acp', 24, 235, 236, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(75, 1, 1, 'acp_logs', 'acp', 26, 241, 242, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(76, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(77, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(80, 1, 1, 'acp_modules', 'acp', 31, 275, 276, 'ACP', 'acp', 'acl_a_modules'),
(81, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'UCP', 'ucp', 'acl_a_modules'),
(82, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'MCP', 'mcp', 'acl_a_modules'),
(83, 1, 1, 'acp_permission_roles', 'acp', 19, 197, 198, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(84, 1, 1, 'acp_permission_roles', 'acp', 19, 199, 200, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(87, 1, 1, 'acp_permissions', 'acp', 16, 172, 173, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(88, 1, 0, 'acp_permissions', 'acp', 20, 207, 208, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(89, 1, 1, 'acp_permissions', 'acp', 18, 185, 186, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(90, 1, 1, 'acp_permissions', 'acp', 18, 187, 188, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(92, 1, 1, 'acp_permissions', 'acp', 17, 175, 176, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(93, 1, 1, 'acp_permissions', 'acp', 13, 119, 120, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(94, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 13, 121, 122, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 17, 177, 178, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 14, 153, 154, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 14, 155, 156, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(101, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(102, 1, 1, 'acp_permissions', 'acp', 20, 209, 210, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(103, 1, 1, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(107, 1, 1, 'acp_php_info', 'acp', 30, 269, 270, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(108, 1, 1, 'acp_profile', 'acp', 13, 123, 124, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(109, 1, 1, 'acp_prune', 'acp', 7, 69, 70, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(110, 1, 1, 'acp_prune', 'acp', 15, 167, 168, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(111, 1, 1, 'acp_ranks', 'acp', 13, 125, 126, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(112, 1, 1, 'acp_reasons', 'acp', 30, 271, 272, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(113, 1, 1, 'acp_search', 'acp', 5, 59, 60, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(114, 1, 1, 'acp_search', 'acp', 27, 255, 256, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(115, 1, 1, 'acp_send_statistics', 'acp', 5, 61, 62, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
(116, 1, 1, 'acp_styles', 'acp', 22, 223, 224, 'ACP_STYLES', 'style', 'acl_a_styles'),
(117, 1, 1, 'acp_styles', 'acp', 22, 225, 226, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 227, 228, 'ACP_STYLES_CACHE', 'cache', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 261, 262, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 115, 116, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 127, 128, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 129, 130, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 131, 132, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 97, 98, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 73, 74, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 24, 25, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 26, 27, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 28, 29, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 30, 31, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 32, 33, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 34, 35, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 16, 17, 'UCP_AUTH_LINK_MANAGE', 'auth_link', ''),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 30, 31, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', ''),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 36, 37, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 26, 27, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notifications`
--

CREATE TABLE IF NOT EXISTS `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notification_time` int(11) unsigned NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `phpbb_notifications`
--

INSERT INTO `phpbb_notifications` (`notification_id`, `notification_type_id`, `item_id`, `item_parent_id`, `user_id`, `notification_read`, `notification_time`, `notification_data`) VALUES
(1, 7, 6, 0, 48, 1, 1392884536, 0x613a323a7b733a31323a2266726f6d5f757365725f6964223b733a313a2232223b733a31353a226d6573736167655f7375626a656374223b733a31343a2248656c6c6f204e65772055736572223b7d),
(3, 7, 7, 0, 2, 1, 1392884960, 0x613a323a7b733a31323a2266726f6d5f757365725f6964223b733a323a223438223b733a31353a226d6573736167655f7375626a656374223b733a31383a2252653a2048656c6c6f204e65772055736572223b7d),
(4, 7, 8, 0, 48, 1, 1392884978, 0x613a323a7b733a31323a2266726f6d5f757365725f6964223b733a313a2232223b733a31353a226d6573736167655f7375626a656374223b733a32323a2252653a2052653a2048656c6c6f204e65772055736572223b7d),
(5, 7, 9, 0, 48, 0, 1393223118, 0x613a323a7b733a31323a2266726f6d5f757365725f6964223b733a313a2232223b733a31353a226d6573736167655f7375626a656374223b733a32323a2252653a2052653a2048656c6c6f204e65772055736572223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notification_types`
--

CREATE TABLE IF NOT EXISTS `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=19 ;

--
-- Dumping data for table `phpbb_notification_types`
--

INSERT INTO `phpbb_notification_types` (`notification_type_id`, `notification_type_name`, `notification_type_enabled`) VALUES
(1, 'topic', 1),
(2, 'approve_topic', 1),
(3, 'quote', 1),
(4, 'bookmark', 1),
(5, 'post', 1),
(6, 'approve_post', 1),
(7, 'pm', 1),
(8, 'disapprove_post', 1),
(9, 'disapprove_topic', 1),
(10, 'group_request', 1),
(11, 'group_request_approved', 1),
(12, 'post_in_queue', 1),
(13, 'report_pm', 1),
(14, 'report_pm_closed', 1),
(15, 'report_post', 1),
(16, 'report_post_closed', 1),
(17, 'topic_in_queue', 1),
(18, 'admin_activate_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_accounts`
--

CREATE TABLE IF NOT EXISTS `phpbb_oauth_accounts` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_tokens`
--

CREATE TABLE IF NOT EXISTS `phpbb_oauth_tokens` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_visibility` (`post_visibility`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_visibility`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
(1, 1, 2, 2, 0, '127.0.0.1', 1392616419, 1, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 0x5468697320697320616e206578616d706c6520706f737420696e20796f75722070687042423320696e7374616c6c6174696f6e2e2045766572797468696e67207365656d7320746f20626520776f726b696e672e20596f75206d61792064656c657465207468697320706f737420696620796f75206c696b6520616e6420636f6e74696e756520746f2073657420757020796f757220626f6172642e20447572696e672074686520696e7374616c6c6174696f6e2070726f6365737320796f75722066697273742063617465676f727920616e6420796f757220666972737420666f72756d206172652061737369676e656420616e20617070726f70726961746520736574206f66207065726d697373696f6e7320666f722074686520707265646566696e6564207573657267726f7570732061646d696e6973747261746f72732c20626f74732c20676c6f62616c206d6f64657261746f72732c206775657374732c207265676973746572656420757365727320616e64207265676973746572656420434f5050412075736572732e20496620796f7520616c736f2063686f6f736520746f2064656c65746520796f75722066697273742063617465676f727920616e6420796f757220666972737420666f72756d2c20646f206e6f7420666f7267657420746f2061737369676e207065726d697373696f6e7320666f7220616c6c207468657365207573657267726f75707320666f7220616c6c206e65772063617465676f7269657320616e6420666f72756d7320796f75206372656174652e204974206973207265636f6d6d656e64656420746f2072656e616d6520796f75722066697273742063617465676f727920616e6420796f757220666972737420666f72756d20616e6420636f7079207065726d697373696f6e732066726f6d207468657365207768696c65206372656174696e67206e65772063617465676f7269657320616e6420666f72756d732e20486176652066756e21, '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 0, '', 0),
(2, 1, 2, 2, 0, '127.0.0.1', 1392876559, 1, 0, 1, 1, 1, 1, '', 'Re: Welcome to phpBB3', 0x48656865, '25c1e46d60ff28f51bd0d8f80010ea87', 0, '', '1ejnst4q', 1, 0, '', 0, 0, 0, 0, '', 0),
(3, 1, 2, 48, 0, '127.0.0.1', 1392884718, 1, 0, 1, 1, 1, 1, '', 'Re: Welcome to phpBB3', 0x48656c6c6f203c212d2d20733a44202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f655f6269676772696e2e6769662220616c743d223a4422207469746c653d225665727920486170707922202f3e3c212d2d20733a44202d2d3e, '61ad624569f4af3f8e837080a4488ac0', 0, '', 'wjcp4qqa', 1, 0, '', 0, 0, 0, 1392884742, '', 2),
(4, 1, 2, 2, 0, '127.0.0.1', 1393229238, 1, 0, 1, 1, 1, 1, '', 'Re: Welcome to phpBB3', 0x48616c6f204a656c656b, 'abd68696c43e2706a4684161386c12e4', 0, '', '24sbot6e', 1, 0, '', 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `phpbb_privmsgs`
--

INSERT INTO `phpbb_privmsgs` (`msg_id`, `root_level`, `author_id`, `icon_id`, `author_ip`, `message_time`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `message_subject`, `message_text`, `message_edit_reason`, `message_edit_user`, `message_attachment`, `bbcode_bitfield`, `bbcode_uid`, `message_edit_time`, `message_edit_count`, `to_address`, `bcc_address`, `message_reported`) VALUES
(1, 0, 2, 0, '127.0.0.1', 1392848332, 1, 1, 1, 1, 'Test Message', 0x48656c6c6f21, '', 0, 0, '', '2z1upvoi', 0, 0, 0x755f32, '', 0),
(2, 0, 2, 0, '127.0.0.1', 1392865232, 1, 1, 1, 1, 'Test Message 2', 0x4861686121, '', 0, 0, '', '3jdem4kz', 0, 0, 0x755f32, '', 0),
(3, 2, 2, 0, '127.0.0.1', 1392877705, 1, 1, 1, 1, 'Re: Test Message 2', 0x6b7261756b206b7261756b, '', 0, 0, '', '2zk7m17w', 0, 0, 0x755f32, '', 0),
(4, 2, 2, 0, '127.0.0.1', 1392877946, 1, 1, 1, 0, 'Re: Test Message 2', 0x6d757761686168616861, '', 0, 0, '', '16ukjj3z', 0, 0, 0x755f32, '', 0),
(5, 2, 2, 0, '127.0.0.1', 1392879075, 1, 1, 1, 0, 'Re: Test Message 2', 0x74657374, '', 0, 0, '', '20owf5ij', 0, 0, 0x755f32, '', 0),
(6, 0, 2, 0, '127.0.0.1', 1392884535, 1, 1, 1, 1, 'Hello New User', 0x48656c6c6f21, '', 0, 0, '', 'po2e0z8v', 0, 0, 0x755f3438, '', 0),
(7, 6, 48, 0, '127.0.0.1', 1392884960, 1, 1, 1, 0, 'Re: Hello New User', 0x48656c6c6f2066726565646f6d6f666b65696d6121, '', 0, 0, '', '1b9cxiww', 0, 0, 0x755f32, '', 0),
(8, 6, 2, 0, '127.0.0.1', 1392884978, 1, 1, 1, 0, 'Re: Re: Hello New User', 0x48656c6c6f20746f6f2072797a21, '', 0, 0, '', '1esibqp1', 0, 0, 0x755f3438, '', 0),
(9, 6, 2, 0, '127.0.0.1', 1393223118, 1, 1, 1, 0, 'Re: Re: Hello New User', 0x487565687565, '', 0, 0, '', '1kns7g3s', 0, 0, 0x755f3438, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_privmsgs_to`
--

INSERT INTO `phpbb_privmsgs_to` (`msg_id`, `user_id`, `author_id`, `pm_deleted`, `pm_new`, `pm_unread`, `pm_replied`, `pm_marked`, `pm_forwarded`, `folder_id`) VALUES
(1, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 2, 0, 0, 0, 0, 0, 0, -1),
(2, 2, 2, 0, 0, 0, 1, 0, 0, 0),
(2, 2, 2, 0, 0, 0, 1, 0, 0, -1),
(3, 2, 2, 0, 0, 0, 0, 0, 0, -1),
(4, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(4, 2, 2, 0, 0, 0, 0, 0, 0, -1),
(5, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(5, 2, 2, 0, 0, 0, 0, 0, 0, -1),
(6, 48, 2, 0, 0, 0, 1, 0, 0, 0),
(6, 2, 2, 0, 0, 0, 0, 0, 0, -1),
(7, 2, 48, 0, 0, 0, 1, 0, 0, 0),
(7, 48, 48, 0, 0, 0, 0, 0, 0, -1),
(8, 48, 2, 0, 0, 0, 0, 0, 0, 0),
(8, 2, 2, 0, 0, 0, 0, 0, 0, -1),
(9, 48, 2, 0, 1, 1, 0, 0, 0, -3),
(9, 2, 2, 0, 0, 0, 0, 0, 0, -2);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 0x54686520706f737420636f6e7461696e73206c696e6b7320746f20696c6c6567616c206f72207069726174656420736f6674776172652e, 1),
(2, 'spam', 0x546865207265706f7274656420706f73742068617320746865206f6e6c7920707572706f736520746f2061647665727469736520666f7220612077656273697465206f7220616e6f746865722070726f647563742e, 2),
(3, 'off_topic', 0x546865207265706f7274656420706f7374206973206f666620746f7069632e, 3),
(4, 'other', 0x546865207265706f7274656420706f737420646f6573206e6f742066697420696e746f20616e79206f746865722063617465676f72792c20706c656173652075736520746865206675727468657220696e666f726d6174696f6e206669656c642e, 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=63 ;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'example', 0, 1),
(3, 'post', 0, 1),
(4, 'your', 0, 1),
(5, 'phpbb3', 0, 5),
(6, 'installation', 0, 1),
(7, 'everything', 0, 1),
(8, 'seems', 0, 1),
(9, 'working', 0, 1),
(10, 'you', 0, 1),
(11, 'may', 0, 1),
(12, 'delete', 0, 1),
(13, 'like', 0, 1),
(14, 'and', 0, 1),
(15, 'continue', 0, 1),
(16, 'set', 0, 1),
(17, 'board', 0, 1),
(18, 'during', 0, 1),
(19, 'the', 0, 1),
(20, 'process', 0, 1),
(21, 'first', 0, 1),
(22, 'category', 0, 1),
(23, 'forum', 0, 1),
(24, 'are', 0, 1),
(25, 'assigned', 0, 1),
(26, 'appropriate', 0, 1),
(27, 'permissions', 0, 1),
(28, 'for', 0, 1),
(29, 'predefined', 0, 1),
(30, 'usergroups', 0, 1),
(31, 'administrators', 0, 1),
(32, 'bots', 0, 1),
(33, 'global', 0, 1),
(34, 'moderators', 0, 1),
(35, 'guests', 0, 1),
(36, 'registered', 0, 1),
(37, 'users', 0, 1),
(38, 'coppa', 0, 1),
(39, 'also', 0, 1),
(40, 'choose', 0, 1),
(41, 'not', 0, 1),
(42, 'forget', 0, 1),
(43, 'assign', 0, 1),
(44, 'all', 0, 1),
(45, 'these', 0, 1),
(46, 'new', 0, 1),
(47, 'categories', 0, 1),
(48, 'forums', 0, 1),
(49, 'create', 0, 1),
(50, 'recommended', 0, 1),
(51, 'rename', 0, 1),
(52, 'copy', 0, 1),
(53, 'from', 0, 1),
(54, 'while', 0, 1),
(55, 'creating', 0, 1),
(56, 'have', 0, 1),
(57, 'fun', 0, 1),
(58, 'welcome', 0, 4),
(59, 'hehe', 0, 1),
(60, 'hello', 0, 1),
(61, 'halo', 0, 1),
(62, 'jelek', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 5, 1),
(2, 5, 1),
(3, 5, 1),
(4, 5, 1),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 1),
(2, 58, 1),
(3, 58, 1),
(4, 58, 1),
(2, 59, 0),
(3, 60, 0),
(4, 61, 0),
(4, 62, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('6167b42c6046823a977df178abf6a008', 2, 0, 1393262797, 1393295251, 1393295489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36', '', 'memberlist.php?mode=viewprofile&u=2', 1, 0, 0),
('d69857a136cba089774308a5b8eae152', 1, 2, 1393295216, 1393295216, 1393295216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36', '', 'viewforum.php?f=2', 1, 0, 0),
('dcbcd927ebeb6ac084d4b65d94db0aab', 1, 2, 1393295206, 1393295206, 1393295206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36', '', 'viewforum.php?f=2', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) unsigned NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 1, 'prosilver', 'kNg=', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_teampage`
--

CREATE TABLE IF NOT EXISTS `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_thanks`
--

CREATE TABLE IF NOT EXISTS `phpbb_thanks` (
  `user_id` varchar(20) NOT NULL,
  `post_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phpbb_thanks`
--

INSERT INTO `phpbb_thanks` (`user_id`, `post_id`) VALUES
('fathanpranaya', '1'),
('freedomofkeima', '1'),
('freedomofkeima', '3'),
('freedomofkeima', '4'),
('ryz', '4');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_appr_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_visibility`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`) VALUES
(1, 2, 0, 0, 1, 0, 'Welcome to phpBB3', 2, 1392616419, 0, 33, 4, 0, 0, 0, 0, 1, 'freedomofkeima', 'AA0000', 4, 2, 'freedomofkeima', 'AA0000', 'Re: Welcome to phpBB3', 1393229238, 1393295366, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(48, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topic_voter`
--

CREATE TABLE IF NOT EXISTS `phpbb_topic_voter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_voter` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `phpbb_topic_voter`
--

INSERT INTO `phpbb_topic_voter` (`id`, `id_voter`, `id_topic`, `rate`) VALUES
(1, 4, 1, 3),
(2, 3, 1, 5),
(7, 1, 4, 2),
(13, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, 0x3030303030303030303030773237777267670a6931636a796f3030303030300a6931636a796f303030303030, 0, '', 1392616419, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '926f50e4a8a889f9', 1, 0, 0),
(2, 3, 5, 0x7a696b307a6a7a696b307a6a7a696b307a630a6931636a796f3030303030300a7a696b307a6a7a6938736730, 0, '127.0.0.1', 1392616419, 'freedomofkeima', 'freedomofkeima', '$H$9hQQDqYzqNSM4I4qN.vTda2wX8v5JD1', 0, 0, 'iskandarsetiadi@students.itb.ac.id', 325272829334, '', 1393280647, 0, 1393229238, 'memberlist.php?mode=viewprofile&u=2', '', 0, 0, 0, 0, 0, 0, 3, 'en', 'UTC', 'D M d, Y g:i a', 1, 1, 'AA0000', 0, 0, 1392884941, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '88df66e6c31ccfdf', 1, 0, 0),
(3, 2, 6, '', 0, '', 1392616454, 'AdsBot [Google]', 'adsbot [google]', '', 1392616454, 0, '', 0, '', 0, 1392616454, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a0a473fe05fb63b5', 0, 0, 0),
(4, 2, 6, '', 0, '', 1392616455, 'Alexa [Bot]', 'alexa [bot]', '', 1392616455, 0, '', 0, '', 0, 1392616455, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e94e3911760117d4', 0, 0, 0),
(5, 2, 6, '', 0, '', 1392616455, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1392616455, 0, '', 0, '', 0, 1392616455, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2daae9aa0157e3fc', 0, 0, 0),
(6, 2, 6, '', 0, '', 1392616455, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1392616455, 0, '', 0, '', 0, 1392616455, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '90b5de9eb94a64f0', 0, 0, 0),
(7, 2, 6, '', 0, '', 1392616455, 'Baidu [Spider]', 'baidu [spider]', '', 1392616455, 0, '', 0, '', 0, 1392616455, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5d6e3d1605d16376', 0, 0, 0),
(8, 2, 6, '', 0, '', 1392616455, 'Bing [Bot]', 'bing [bot]', '', 1392616455, 0, '', 0, '', 0, 1392616455, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '868af01c12fb6765', 0, 0, 0),
(9, 2, 6, '', 0, '', 1392616455, 'Exabot [Bot]', 'exabot [bot]', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ee94097d5cfea1a4', 0, 0, 0),
(10, 2, 6, '', 0, '', 1392616456, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '989162716ab59fb8', 0, 0, 0),
(11, 2, 6, '', 0, '', 1392616456, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50f9aaf741ffa28f', 0, 0, 0),
(12, 2, 6, '', 0, '', 1392616456, 'Francis [Bot]', 'francis [bot]', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '44f6e037d2f76a4d', 0, 0, 0),
(13, 2, 6, '', 0, '', 1392616456, 'Gigabot [Bot]', 'gigabot [bot]', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '44a86f0e4014b9b2', 0, 0, 0),
(14, 2, 6, '', 0, '', 1392616456, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '329073dc767ac48b', 0, 0, 0),
(15, 2, 6, '', 0, '', 1392616456, 'Google Desktop', 'google desktop', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd70b302ea80e1d2b', 0, 0, 0),
(16, 2, 6, '', 0, '', 1392616456, 'Google Feedfetcher', 'google feedfetcher', '', 1392616456, 0, '', 0, '', 0, 1392616456, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5833da03e1b6b58f', 0, 0, 0),
(17, 2, 6, '', 0, '', 1392616457, 'Google [Bot]', 'google [bot]', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1dd79168d40b4fbf', 0, 0, 0),
(18, 2, 6, '', 0, '', 1392616457, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5d6d8acbf16a52e9', 0, 0, 0),
(19, 2, 6, '', 0, '', 1392616457, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3be7d108e385bd57', 0, 0, 0),
(20, 2, 6, '', 0, '', 1392616457, 'IBM Research [Bot]', 'ibm research [bot]', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '848e2d1f0d6c69a7', 0, 0, 0),
(21, 2, 6, '', 0, '', 1392616457, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '36f81de0865ae889', 0, 0, 0),
(22, 2, 6, '', 0, '', 1392616457, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8cf11e9fb720e589', 0, 0, 0),
(23, 2, 6, '', 0, '', 1392616457, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1392616457, 0, '', 0, '', 0, 1392616457, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c9c0c430a33ed1a8', 0, 0, 0),
(24, 2, 6, '', 0, '', 1392616458, 'Metager [Bot]', 'metager [bot]', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c2527de606696710', 0, 0, 0),
(25, 2, 6, '', 0, '', 1392616458, 'MSN NewsBlogs', 'msn newsblogs', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fdead9669001446e', 0, 0, 0),
(26, 2, 6, '', 0, '', 1392616458, 'MSN [Bot]', 'msn [bot]', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bb1ce4d56bd8b9f2', 0, 0, 0),
(27, 2, 6, '', 0, '', 1392616458, 'MSNbot Media', 'msnbot media', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cb751d6c53bf3df3', 0, 0, 0),
(28, 2, 6, '', 0, '', 1392616458, 'Nutch [Bot]', 'nutch [bot]', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '97e525d27b06c1b6', 0, 0, 0),
(29, 2, 6, '', 0, '', 1392616458, 'Online link [Validator]', 'online link [validator]', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7c9b2f4465782b8b', 0, 0, 0),
(30, 2, 6, '', 0, '', 1392616458, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1392616458, 0, '', 0, '', 0, 1392616458, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2907e879c2e35bd5', 0, 0, 0),
(31, 2, 6, '', 0, '', 1392616459, 'Sensis [Crawler]', 'sensis [crawler]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19c5272800c5e393', 0, 0, 0),
(32, 2, 6, '', 0, '', 1392616459, 'SEO Crawler', 'seo crawler', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5a2dfe135297b450', 0, 0, 0),
(33, 2, 6, '', 0, '', 1392616459, 'Seoma [Crawler]', 'seoma [crawler]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '401d725d435c45e3', 0, 0, 0),
(34, 2, 6, '', 0, '', 1392616459, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c6c9e7b9e68e96cd', 0, 0, 0),
(35, 2, 6, '', 0, '', 1392616459, 'Snappy [Bot]', 'snappy [bot]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6840861840ded45b', 0, 0, 0),
(36, 2, 6, '', 0, '', 1392616459, 'Steeler [Crawler]', 'steeler [crawler]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '242b8b0f1afa62ac', 0, 0, 0),
(37, 2, 6, '', 0, '', 1392616459, 'Telekom [Bot]', 'telekom [bot]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '503e17d6124b4bb4', 0, 0, 0),
(38, 2, 6, '', 0, '', 1392616459, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1392616459, 0, '', 0, '', 0, 1392616459, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '94db793e2550b478', 0, 0, 0),
(39, 2, 6, '', 0, '', 1392616460, 'Voyager [Bot]', 'voyager [bot]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9feb541e2cc8ccc3', 0, 0, 0),
(40, 2, 6, '', 0, '', 1392616460, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd171f345b79c0a0d', 0, 0, 0),
(41, 2, 6, '', 0, '', 1392616460, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6ef6f71ff8fe878d', 0, 0, 0),
(42, 2, 6, '', 0, '', 1392616460, 'W3C [Validator]', 'w3c [validator]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f6696d6ad07e4df4', 0, 0, 0),
(43, 2, 6, '', 0, '', 1392616460, 'YaCy [Bot]', 'yacy [bot]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ea28cf36bdb5e816', 0, 0, 0),
(44, 2, 6, '', 0, '', 1392616460, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '42ea690df7f8e787', 0, 0, 0),
(45, 2, 6, '', 0, '', 1392616460, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1392616460, 0, '', 0, '', 0, 1392616460, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3f80489d1c8812e6', 0, 0, 0),
(46, 2, 6, '', 0, '', 1392616461, 'Yahoo [Bot]', 'yahoo [bot]', '', 1392616461, 0, '', 0, '', 0, 1392616461, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b80c60a8ef92eca0', 0, 0, 0),
(47, 2, 6, '', 0, '', 1392616461, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1392616461, 0, '', 0, '', 0, 1392616461, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd7f3f3d81af110ad', 0, 0, 0),
(48, 0, 2, '', 0, '127.0.0.1', 1392884490, 'ryz', 'ryz', '$H$9hCFYBYisg/zmJ7C6HDm2sxl5TgMs8.', 1392884490, 0, 'freedom_holicx@yahoo.com', 56411520224, '', 1393229419, 1392884490, 1392884960, '', '', 0, 0, 0, 0, 0, 0, 1, 'en', 'Asia/Jakarta', 'D M d, Y g:i a', 1, 0, '', 1, 1, 1392884987, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6be220d82f7a6959', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(2, 48, 0, 0),
(7, 48, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_notifications`
--

CREATE TABLE IF NOT EXISTS `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
('post', 0, 2, '', 1),
('post', 0, 2, 'email', 1),
('topic', 0, 2, '', 1),
('topic', 0, 2, 'email', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
