-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 09 2013 г., 22:00
-- Версия сервера: 5.5.34
-- Версия PHP: 5.3.10-1ubuntu3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `soundcheckua`
--
CREATE DATABASE `soundcheckua` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `soundcheckua`;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_assets`
--

CREATE TABLE IF NOT EXISTS `bzyon_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Дамп данных таблицы `bzyon_assets`
--

INSERT INTO `bzyon_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 95, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 48, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 49, 50, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 51, 52, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 53, 54, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 55, 56, 1, 'com_login', 'com_login', '{}'),
(13, 1, 57, 58, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 59, 60, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 61, 62, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 63, 64, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 65, 66, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 67, 68, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 69, 72, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 73, 74, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 75, 76, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 77, 78, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 79, 80, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 81, 84, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 85, 88, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 89, 90, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 70, 71, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 86, 87, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 82, 83, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 91, 92, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 93, 94, 1, 'com_jce', 'jce', '{}'),
(35, 41, 31, 32, 3, 'com_content.article.1', 'рок-фестиваль «СаундЧе»', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(36, 8, 20, 25, 2, 'com_content.category.8', 'Главная', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(37, 36, 21, 22, 3, 'com_content.article.2', 'Группа "THE ПУДІНГ" в гостях у "SOUNDЧе"', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 36, 23, 24, 3, 'com_content.article.3', 'Группа "City Band" в гостях у "SOUNDЧе" SOUNDЧе ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 8, 44, 47, 2, 'com_content.category.9', 'Партнеры', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(40, 8, 26, 29, 2, 'com_content.category.10', 'Команда', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(41, 8, 30, 33, 2, 'com_content.category.11', 'SoundЧе фестиваль', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(42, 8, 34, 35, 2, 'com_content.category.12', 'Доска обьявлений', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(43, 8, 36, 39, 2, 'com_content.category.13', 'Mass media about us', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(44, 39, 45, 46, 3, 'com_content.article.4', 'Партнеры', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 8, 40, 41, 2, 'com_content.category.14', 'Окружение', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(46, 8, 42, 43, 2, 'com_content.category.15', 'ТВ/Радио проекты', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(47, 40, 27, 28, 3, 'com_content.article.5', 'Команда', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 43, 37, 38, 3, 'com_content.article.6', 'Mass media ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_associations`
--

CREATE TABLE IF NOT EXISTS `bzyon_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bzyon_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bzyon_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_banners`
--

CREATE TABLE IF NOT EXISTS `bzyon_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_categories`
--

CREATE TABLE IF NOT EXISTS `bzyon_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `bzyon_categories`
--

INSERT INTO `bzyon_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 29, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 36, 1, 13, 14, 1, 'glavnaya', 'com_content', 'Главная', 'glavnaya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 14:33:27', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 39, 1, 27, 28, 1, 'partnery', 'com_content', 'Партнеры', 'partnery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:25:07', 42, '2013-12-09 18:36:06', 0, '*'),
(10, 40, 1, 15, 16, 1, 'komanda', 'com_content', 'Команда', 'komanda', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"_:blog","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:25:35', 42, '2013-12-09 18:31:05', 0, '*'),
(11, 41, 1, 17, 18, 1, 'soundche-festival', 'com_content', 'SoundЧе фестиваль', 'soundche-festival', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:26:18', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 42, 1, 19, 20, 1, 'doska-obyavlenij', 'com_content', 'Доска обьявлений', 'doska-obyavlenij', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:26:32', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 43, 1, 21, 22, 1, 'mass-media-about-us', 'com_content', 'Mass media about us', 'mass-media-about-us', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:26:52', 0, '0000-00-00 00:00:00', 0, '*'),
(14, 45, 1, 23, 24, 1, 'okruzhenie', 'com_content', 'Окружение', 'okruzhenie', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:35:33', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 46, 1, 25, 26, 1, 'tv-radio-proekty', 'com_content', 'ТВ/Радио проекты', 'tv-radio-proekty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-12-09 16:35:57', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_contact_details`
--

CREATE TABLE IF NOT EXISTS `bzyon_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_content`
--

CREATE TABLE IF NOT EXISTS `bzyon_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `bzyon_content`
--

INSERT INTO `bzyon_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'рок-фестиваль «СаундЧе»', 'rok-festival-saundche', '', '<h1 class="topic-title word-wrap" style="font-size: 27px; line-height: 1.1em; font-weight: normal; margin: 0px 0px 10px; font-family: ''PT Sans'', Arial, sans-serif; word-wrap: break-word; color: #f51201;"><a style="color: #275ec2;" href="http://soundche.ck.ua/blog/soundche/71.html">рок-фестиваль «СаундЧе»</a></h1>\r\n<div class="topic-info" style="margin-bottom: 25px; color: #777777;"><a class="topic-blog" style="color: #000000; font-family: ''PT Sans'', sans-serif; font-size: 18px;" href="http://soundche.ck.ua/blog/soundche/">SOUNDЧе</a>&nbsp;<a class="blog-list-info" style="color: #3f8ad7; width: 19px; height: 19px; display: inline-block; background-image: url(''http://soundche.ck.ua/templates/skin/soundche/images/icons-synio.png''); cursor: pointer; position: relative; top: 5px; background-position: 0px -107px; background-repeat: no-repeat no-repeat;" href="http://soundche.ck.ua/"></a></div>\r\n<div class="topic-content text" style="font-size: 13px; line-height: 1.6em; overflow: hidden; zoom: 1; margin-bottom: 15px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; text-align: start; background-color: #cedfaf;"><img style="max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px;" src="http://soundche.ck.ua/uploads/topics/preview/00/00/00/71/27fe6df969_200crop.png" alt="" align="left" />Любимые наши Че-ловеки. С момента проведения первого рок-фестиваля «СаундЧе» прошёл год. И весь этот год нам скучалось за этим волнующим состоянием радости. Хотелось снова собрать черкасских музыкантов на одной сцене, хотелось снова прыгать голым иггипопом под Roller Genoa, петь старое-доброе-вечное с СITY-BAND, ловить руками снег с Эффектом Бабочки, махать волосёнками под Fail System и пищать с 14-летними девочками под 4F!LMS. Мы наколдовали: всё будет. Новички этого года – черкасские ребята KYOTO LIME, Fly Delorean и Spring Rush. А красивенную коду фестивалю подарит рождённая в Че Дашка Минеева и её группа D.A.S.H. (г.Киев)<br /><br />Дорогие музыканты, с нас вам:&nbsp;<br />— место под солнцем (спасибо ТРЦ «Любава»)<br />— сцена, звук, свет, умничка Саша Васенко за пультом (слава Олегу Пугачу и дружественному фестивалю «Рок-Візок», с которым мы объединились в этом году)<br />— теле-версия (слава Вове Савчуку, Серёге Днистряну, Витьке Надточию, Вове Трифонову, Костику Доброцкому, Женьке Артёменко),&nbsp;<br />— прямая трансляция в тырнете на sounche.ck.ua, lubava.ua (слава wi-fi),&nbsp;<br />— трансляция видео-концерта на ТРК «Вікка» в течение будущего года (слава Любе Правдиной)…<br />А что с вас? С вас — обещание жить. Не обрастать ленивым пузом. Играть, не смотря ни на что.&nbsp;<br /><br />Обнимаем.<br />Всегда ваша Касьянова и все СаундЧи)))</div>', '', 1, 0, 0, 11, '2013-12-09 14:32:39', 42, '', '2013-12-09 19:49:25', 42, 0, '0000-00-00 00:00:00', '2013-12-09 14:32:39', '2016-12-09 17:11:05', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 2, '', '', 1, 53, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Группа "THE ПУДІНГ" в гостях у "SOUNDЧе"', 'gruppa-the-puding-v-gostyakh-u-soundche', '', '<h1 class="topic-title word-wrap" style="font-size: 27px; line-height: 1.1em; font-weight: normal; margin: 0px 0px 10px; font-family: ''PT Sans'', Arial, sans-serif; word-wrap: break-word; color: #f51201;"><img style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 1.6em; max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px;" src="http://soundche.ck.ua/uploads/topics/preview/00/00/00/68/072ecd753a_200crop.jpg" alt="" align="left" /></h1>\r\n<div class="topic-content text" style="font-size: 13px; line-height: 1.6em; overflow: hidden; zoom: 1; margin-bottom: 15px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; text-align: start; background-color: #cedfaf;">Мно-о-о-го лет назад в Че была группа «The Вельвет». Я не слышала, что играли парни, но о существовании группы знала. Источника было два: городские заборы и прочие вертикальные поверхности, обписанные названием группы. А ещё сплетни о фронтмене группы Станиславе Юрченко. Их было такое количество и все они были такие скандальные, что волей-неволей хотелось узнать, что это за такой «павлин-мавлин»? Наверное, именно такими должны быть рок-музыканты, мечтающие привлечь к себе внимание: неоднозначными, несговорчивыми, резкими, взрывными, самоуверенными… У Стаса это всегда получалось: быть обсуждаемым персонажем. С той поры много влажности утекло. «Вельвет» сменился «БигБеном», позже «Пудингом». Сам Стас тоже «утёк»… в Киев. И тоже сменился: стал попроще что ли. 14 апреля в воскресенье он приезжает со своей группой в Че, чтобы отыграть в «СаундЧе» свой живой концерт.<br />Приходите в «Контрабас» в 13-00, чтобы пощупать Стаса и найти 10 отличий музыки группы «Пудинг» от песен Веры Брежневой. И лучше насчитайте все 10.&nbsp;<br />До встречи.<br />О.К.</div>', '', 1, 0, 0, 8, '2013-12-09 16:21:00', 42, '', '2013-12-09 19:19:26', 42, 42, '2013-12-09 19:19:26', '2013-12-09 16:21:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Группа "City Band" в гостях у "SOUNDЧе" SOUNDЧе ', 'gruppa-city-band-v-gostyakh-u-soundche-soundche', '', '<h1 class="topic-title word-wrap" style="font-size: 27px; line-height: 1.1em; font-weight: normal; margin: 0px 0px 10px; font-family: ''PT Sans'', Arial, sans-serif; word-wrap: break-word; color: #f51201;"><img style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 1.6em; max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px;" src="http://soundche.ck.ua/uploads/topics/preview/00/00/00/66/1d2260dc0c_200crop.jpg" alt="" align="left" /></h1>\r\n<div class="topic-content text" style="font-size: 13px; line-height: 1.6em; overflow: hidden; zoom: 1; margin-bottom: 15px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; text-align: start; background-color: #cedfaf;">Девчонки! Кто в этом сезоне замуж идёт? А расскажите-ка, какая на Вашей свадьбе музыка звучать будет? Будет ли в танцевальных перерывах сонная певица Наташа-Таня-Люба петь с мятого листа «опу гангам стайл»? Или Вы закажете модного столичного диджея, который весь вечер с лицом сноба будет сёрбать абсент и ленно ублажать «эту деревню»? Я Вам скажу, есть альтернатива: черкасская кавер-группа «City Band». Уже 8 лет ребята играют кавера на мировые хиты всемирно известных коллективов. Работают на корпоративах, свадьбах, фестивалях, различных мероприятиях и концертах. Стабильные. Проверенные. И не пьют. Абсент так точно)))<br />В это воскресенье 7 апреля Вы можете проникнуть в паб «Контрабас» в 13-00 под видом " омаров поесть" и послушать бенд совершенно бесплатно.&nbsp;<br />Возможно, именно это прослушивание спасёт Ваш будущий праздник от разочарований.<br />На сим, аривидерчи.&nbsp;<br />Услішимся.<br />Ваша О.К.</div>', '', 1, 0, 0, 8, '2013-12-09 16:23:15', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-12-09 16:23:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 44, 'Партнеры', 'partnery', '', '<h5 style="font-size: 20px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">Радіо «DALMATIN» (101 FМ, Черкаси)</h5>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Вперше музичний проект зазвучав саме на цій частоті. Відбулося це у неділю 2 жовтня 2011 року. Першими в студії радіостанції «DALMATIN» наживо відіграли хлопці з черкаського рок-гурту «Эффект Бабочки». З тієї пори щонеділі о 16-00 с жовтня по травень ви можете слухати живі концерти черкаських команд.&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://101fm.com.ua/">101fm.com.ua</a><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;"></span></p>\r\n<div class="clearfix" style="zoom: 1; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</div>\r\n<p style="margin: 0px 0px 1em; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</p>\r\n<p><img style="max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" src="http://soundche.ck.ua/uploads/images/00/00/01/2013/06/02/7a4419.gif" alt="" align="left" /></p>\r\n<h5 style="font-size: 20px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">ТРК «VIKKA»</h5>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Усі ефіри музичного проекту «SOUNDЧе» мають відео-втілення. Трансляція відбувається на каналі «VIKKA в суботу о 9-00 (з повтором у четвер о 20-00)&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://www.vikka.ck.ua/">vikka.ck.ua</a><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;"></span></p>\r\n<div class="clearfix" style="zoom: 1; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</div>\r\n<p style="margin: 0px 0px 1em; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</p>\r\n<p><img style="max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" src="http://soundche.ck.ua/uploads/images/00/00/01/2013/06/02/284878.jpg" alt="" align="left" /></p>\r\n<h5 style="font-size: 20px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">ПРОКАТНА КОМПАНІЯ «MEGAPHONE»</h5>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Завдяки цій команді ми можемо озвучити будь-який рок-гурт в нашому проекті. Саме «MEGAPHONE», до речі, забезпечує технічну підтримку фестивалю «SOUNDЧе», який відбувається влітку просто неба.&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://www.megaphone.com.ua/">megaphone.com.ua</a><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;"></span></p>\r\n<div class="clearfix" style="zoom: 1; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</div>\r\n<p style="margin: 0px 0px 1em; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</p>\r\n<p><img style="max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" src="http://soundche.ck.ua/uploads/images/00/00/01/2013/06/02/5fcd1c.png" alt="" align="left" /></p>\r\n<h5 style="font-size: 20px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">ТИПОГРАФІЯ “ARIES»</h5>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Все, що стосується рекламної поліграфії, банерів проекту, все роблять вони. Ми обрали роботу з ними через те, що роблять швидко, класно і з посмішкою. А ще тому, що власник типографії закоханий у рок-музику.&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://aries.ck.ua/">aries.ck.ua</a><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;"></span></p>\r\n<div class="clearfix" style="zoom: 1; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</div>\r\n<p style="margin: 0px 0px 1em; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</p>\r\n<p><img style="max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" src="http://soundche.ck.ua/uploads/images/00/00/01/2013/06/02/804028.jpg" alt="" align="left" /></p>\r\n<h5 style="font-size: 20px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">ПАБ-РЕСТОРАН «КОНТРАБАС»</h5>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Єдиний (на великий жаль) в Че заклад, де регулярно відбуваються живі концерти. Весь другий сезон зйомки проходили саме тут. Власник «Контрабасу» Сергій Дедовський погодився відчиняти нам двері пабу о 9 ранку. І тепер ми знаємо, як виглядає персонал, який напередодні відпрацював зміну. Любимо їх. І щасливі, що взаємно.&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://vk.com/pub_kontrabas">vkontakte.ru/pub_kontrabas</a><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;"></span></p>\r\n<div class="clearfix" style="zoom: 1; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</div>\r\n<p style="margin: 0px 0px 1em; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</p>\r\n<h5 style="font-size: 20px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">DESIGN STUDIO MARA</h5>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">DSM – це авторські прикраси ручної роботи. Ми усі любимо всякі штуки, фєнєчки, кулони, браслети... Design Studio Mara робить нам своїми золотими руцями неймовірно красиві аксесуари з символікою «SOUNDЧе».&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://vk.com/id67184680">vk.com/id67184680</a><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;"></span></p>\r\n<div class="clearfix" style="zoom: 1; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</div>\r\n<p style="margin: 0px 0px 1em; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">&nbsp;</p>\r\n<p><img style="max-width: 100%; vertical-align: top; margin: 4px 15px 10px 0px; color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" src="http://soundche.ck.ua/uploads/images/00/00/01/2013/06/02/9e174f.jpg" alt="" align="left" /></p>\r\n<h4 style="font-size: 24px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; text-align: start; background-color: #cedfaf; color: #f61200;">НВФ «УРОЖАЙ» - ГОЛОВНИЙ МЕЦЕНАТ ПРОЕКТУ «SOUNDЧе»</h4>\r\n<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Починаючи з нашого першого рок-фесту, музичний проект «SOUNDЧе» підтримує НВФ «Урожай». Дивовижний приклад того, коли меценатам і справді від нас нічого не потрібно. Величезна подяка за віру у черкаську рок-музику. Це дуже спонукає.&nbsp;</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><a style="color: #1d2273; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" href="http://www.urozhay.net/">urozhay.net</a></p>', '', 1, 0, 0, 9, '2013-12-09 16:27:31', 42, '', '2013-12-09 19:43:58', 42, 0, '0000-00-00 00:00:00', '2013-12-09 16:27:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 0, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 47, 'Команда', 'komanda', '', '<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Ольга Касьянова</h2>\r\n<p style="margin: 0px 0px 1em;">Касьянова. Дівчинка-сонечко. Підозріло часто посміхається, постійно всім дякує, вигадує всякі штуки, вірить у гномиків.<br />Роль в проекті: автор, ведуча, двигун<br />Окрім проекту: організатор подій, конферансьє, радіоведуча<br />Вміє: бути щасливою</p>\r\n<p class="email" style="margin: 0px 0px 1em;">olga.kasyanova77 [гав] gmail.com</p>\r\n<p class="site" style="margin: 0px 0px 1em;">www.kk.ck.ua</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (097) 29-77-064</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Костянтин Доброцький</h2>\r\n<p style="margin: 0px 0px 1em;">Кот. Єдиний кіт, якого сприймає навіть ненависник котів Женька Артеменко. Слідкує за пунктуальністю і ККД усіх учасників проекту. Харчується сосисками і молоком. Вибухонебезпечний.<br />Роль в проекті: технічний директор, співведучий<br />Окрім проекту: режисер радіоефіру радіо "Далматин", гітарист гурту "Эффект Бабочки", просто хороша людина<br />Вміє: грати на гітарі, записувати, мішкувати, редагувати будь-які музичні колективи, створювати і озвучувати рекламні ролики.</p>\r\n<p class="email" style="margin: 0px 0px 1em;">kokobrize [гав] mail.ru</p>\r\n<p class="site" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (093) 697-78-49</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Олексій Бочковський</h2>\r\n<p style="margin: 0px 0px 1em;">Льоха. Вміє одночасно озвучувати гурт і спати за пультом. Вірніше: навіть уві сні може озвучувати гурт. Мріє озвучувати весілля і ювілеї.<br />Роль в проекті: технічне забезпечення, звукорежисер<br />Окрім проекту: звукорежисер прокатної компанії «MEGAPHONE», програміст<br />Вміє: все, що приносить гроші.</p>\r\n<p class="email" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="site" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (097) 461 68 98</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Володимир Савчук</h2>\r\n<p style="margin: 0px 0px 1em;">Боня. Бублик. Пухнастик. Називає себе Злюкою Бобром, щоб усі боялись. Монтує швидше, ніж закінчується зйомка. Взагалі, все залежить тільки від нього. Наш керманич, ватажок. Бонопард.<br />Роль в проекті: компіляція зйомок, монтаж та вичавлювання з відео найкращого соку під маркою «SoundЧе» (простіше, режисер відеомонтажу:))<br />Окрім проекту: те саме тільки на ТРК "Рось"(Черкаси)<br />Вміє: руками і головою.</p>\r\n<p class="email" style="margin: 0px 0px 1em;">vovan.vovan [гав] mail.ru</p>\r\n<p class="site" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (097) 52 00 767</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Сергій Дністрян</h2>\r\n<p style="margin: 0px 0px 1em;">Серьога. Якби «СаундЧе» був армією, то Серьога був би нашим «дідом». Для проекту - справжній клад. Не Клайд, хоч і вірний товариш Боні (див. вище).<br />Роль в проекті: відеоінжинер<br />Окрім проекту: оператор телеканалу ICTV<br />Вміє: знімати, фоткати, стріляти :)</p>\r\n<p class="email" style="margin: 0px 0px 1em;">ramires_ictv [гав] ukr.net</p>\r\n<p class="site" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (050) 545-54-09</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Віктор Надточій</h2>\r\n<p style="margin: 0px 0px 1em;">Вітя. Характер нордичний, стиль готичний. Єдиний в команді, хто вміє псувати жалюзі, користуватися серветками і тримати камеру 7 годин поспіль. Бездоганно виконує службовий обов’язок. Нещадний до неіснуючих ворогів SoundЧе.<br />Роль в проекті: телеоператор<br />Окрім проекту: фотоаматор<br />Вміє: поки що тільки вчиться...</p>\r\n<p class="email" style="margin: 0px 0px 1em;">undying [гав] meta.ua</p>\r\n<p class="site" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (063) 22 72 528</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Костянтин Капітоненко</h2>\r\n<p style="margin: 0px 0px 1em;">Костя. Він же Костян, він же Капітон, він же Залізний Буйвол. Надлюдина. Прикидається людиною.<br />Роль в проекті: оператор<br />Окрім проекту: Denjozavr Prod.<br />Вміє: поглинати Всесвіт</p>\r\n<p class="email" style="margin: 0px 0px 1em;">kosckua [гав] gmail.com</p>\r\n<p class="site" style="margin: 0px 0px 1em;">www.denjozavr.ck.ua</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (093) 84 16 505</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Євген Артеменко</h2>\r\n<p style="margin: 0px 0px 1em;">Жека. Другий рік поспіль невпинно працює над зйомкою кліпу на пісню «СаундЧе». Готується стати бельгійським режисером у зв’язку з від’їздом головного героя до Бельгії.<br />Роль в проекті: оператор<br />Окрім проекту: їсть банани, знімає кіно.<br />Вміє: їсти банани.</p>\r\n<p class="email" style="margin: 0px 0px 1em;">ArtemenkoEM [гав] gmail.com</p>\r\n<p class="site" style="margin: 0px 0px 1em;">www.denjozavr.ck.ua</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (063) 283-41-86</p>\r\n<h2 style="font-size: 28px; line-height: 1.6em; font-weight: normal; margin: 0px; font-family: ''PT Sans'', Arial, sans-serif;">Сергій Поліщук</h2>\r\n<p style="margin: 0px 0px 1em;">Серьоженька. Людина-янгол. З нього варто писати «мадонну», тільки мужика. Має посмішку Мони Лізи і здатність з гуркотом зачіпати камери посеред ефіру.<br />Роль в проекті: інтернет підтримка<br />Окрім проекту: шукає простих відповідей на складні питання, грає на клавіатурі і на баяні.<br />Вміє: читати, писати, програмувати</p>\r\n<p class="email" style="margin: 0px 0px 1em;">&nbsp;</p>\r\n<p class="site" style="margin: 0px 0px 1em;">kotoblog.pp.ua</p>\r\n<p class="phone" style="margin: 0px 0px 1em;">8 (093) 418-75-75</p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 10, '2013-12-09 16:39:28', 42, '', '2013-12-09 19:52:12', 42, 0, '0000-00-00 00:00:00', '2013-12-09 16:39:28', '2016-12-09 20:29:08', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"1","show_article_options":"1","show_urls_images_backend":"1","show_urls_images_frontend":"1"}', 7, 0, 0, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `bzyon_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(6, 48, 'Mass media ', 'mass-media', '', '<p><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Мій друг, що ти чуєш?.. Планета, на якій ти мчиш серед зірок і галактик, в цю мить народжує мільярди звуків. Тремтіння крил. Шепіт листя. Клекіт лави. Спів барханів. Щомиті ти і сам створюєш ці звуки: від биття посуду до примирливого поцілунку, від тихого плачу до нестримного сміху, від шльопання ніг по калюжах до цокоту підборів по бруківці… Від першого "мама" до останнього вдиху. Мій друг, зараз я йду на звук. Здається, це звук мого серця. Я поки не знаю, куди приведе мене ця дорога. Але ігнорувати цей поклик я не можу.</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Сьогодні я починаю збирати звуки маленького міста, в якому живу. Це звуки музики, яка народжується на світ саме тут. Я вірю, що ти полюбиш це місто. Його дивовижних людей. І, звісно, його звуки. Звуки міста Че.</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><em style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Ольга Касьянова</em><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /></p>\r\n<h4 style="font-size: 24px; line-height: 1.6em; margin: 0px 0px 7px; font-family: ''PT Sans'', Arial, sans-serif; color: #333333; text-align: start; background-color: #cedfaf;">SoundЧе – звуки нашого міста</h4>\r\n<p><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">ЩО БУЛО:</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Цей сайт створюється нашою командою, як логічне продовження музичного теле-радіо проекту «SoundЧе», що впродовж 2011-2012 років виходив в онлайн-режимі черкаських ефірів. Проект вперше в історії міста створив для рок-гуртів Черкас активний медіа-майданчик, де музиканти мали змогу грати наживо у прямому ефірі. Для багатьох колективів «SoundЧе» став новим етапом у творчості, надав друге дихання. А для теле та радіо аудиторії відкрив досі невідому музику. Відчуваючи голод місцевих музикантів за концертними виступами, наша команда організувала у Че наймаштабніший за кількістю учасників фестиваль черкаської рок-музики «SoundЧе». Після цієї події стало зрозуміло, наше місто прагне музичного єднання.</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">ЩО Є:</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Зараз час підвищити планку: ми створюємо соціально-музично-блоговий портал, що має на меті об’єднати музичну спільноту міста Черкаси. Серед величезної кількості звукового брухту ми хочемо віднайти по-справжньому цінні звуки: у рок-, поп-, джаз-, інструментальному, клубному напрямках. Нам важливо не тільки познайомити інтернет-користувачів з якісною музикою міста Че та інформувати їх про культурні події, але і створити єдине інформаційне середовище. Портал направляє свою увагу на активізацію творчого спілкування музикантів, розширення слухацької аудиторії, географії та частоти концертних виступів.</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">ЧИМ СЕРЦЕ:</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Соціально-музично-блоговий портал «SoundЧе» - платформа, в рамках якої черкаські музиканти самостійно створюють блоги, на яких розміщують авторські аудіо-, відео-, фото-матеріали, новини тощо. Кожен з авторів зможе збільшувати власну аудиторію за допомогою запрошень до групи. Саме у межах цих блогів слухачі зможуть вільно взаємодіяти з музикантами, отримувати доступ до творів та володіти ними без будь-яких обмежень. Також інтернет-користувачі зможуть завантажувати авторські матеріали та оплачувати працю творців за принципом "Скачай і заплати, скільки хочеш".</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">БУДЕМО БЛИЖЧЕ:</span><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><br style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;" /><span style="color: #333333; font-family: Verdana, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.796875px; text-align: start; background-color: #cedfaf;">Портал «SoundЧе» стартуватиме у жовтні 2012 року. До цього часу ми гуртуємо навколо цього проекту талановитих музикантів, журналістів, редакторів, фото-корів, дизайнерів, ініціативних людей міста Че, з якими разом ми неодмінно відкриємо для людей найкращі звуки міста Че.</span></p>', '', 1, 0, 0, 13, '2013-12-09 19:45:33', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-12-09 19:45:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bzyon_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_content_rating`
--

CREATE TABLE IF NOT EXISTS `bzyon_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bzyon_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_extensions`
--

CREATE TABLE IF NOT EXISTS `bzyon_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10003 ;

--
-- Дамп данных таблицы `bzyon_extensions`
--

INSERT INTO `bzyon_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"0","show_article_options":"0","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"1","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 0, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 0, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 0, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `bzyon_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'Русская типографика', 'plugin', 'rustypo', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0430\\u044f \\u0442\\u0438\\u043f\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430","type":"plugin","creationDate":"\\u041c\\u0430\\u0439 2011","author":"\\u0420\\u044f\\u0431\\u043e\\u0432 \\u0414\\u0435\\u043d\\u0438\\u0441","copyright":"\\u00a9\\u00a02006-2011 by Denis\\u00a0Ryabov. All rights reserved.","authorEmail":"dryabov@yandex.ru","authorUrl":"","version":"2.0.4","description":"\\u041f\\u043b\\u0430\\u0433\\u0438\\u043d \\u00ab\\u0420\\u0443\\u0441\\u0441\\u043a\\u0430\\u044f \\u0442\\u0438\\u043f\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\u00bb \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0412\\u0430\\u0448\\u0443 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u043f\\u0440\\u0438\\u044f\\u0442\\u043d\\u0435\\u0435 \\u043d\\u0430 \\u0432\\u043a\\u0443\\u0441 \\u0438 \\u043d\\u0430 \\u043e\\u0449\\u0443\\u043f\\u044c. \\u041d\\u0435 \\u0437\\u0430\\u0431\\u0443\\u0434\\u044c\\u0442\\u0435 \\u043e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u0442\\u044c (\\u0432\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c) \\u043f\\u043b\\u0430\\u0433\\u0438\\u043d \\u00ab\\u0420\\u0443\\u0441\\u0441\\u043a\\u0430\\u044f \\u0442\\u0438\\u043f\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\u00bb \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0438 (\\u0438\\u0445 \\u0431\\u043e\\u043b\\u0435\\u0435 50-\\u0442\\u0438!). \\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043c\\u0430\\u043c\\u0431\\u043e\\u0442 \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u043c \\u0432 \\u043f\\u043e\\u0440\\u044f\\u0434\\u043a\\u0435 \\u0432\\u044b\\u0437\\u043e\\u0432\\u043e\\u0432 \\u043c\\u0430\\u043c\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b content, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043e\\u043d \\u043d\\u0435 \\u0437\\u0430\\u0442\\u0440\\u0430\\u0433\\u0438\\u0432\\u0430\\u043b \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u0432 \\u043a\\u043e\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u044f\\u0445 \\u0432\\u0438\\u0434\\u0430 {loadposition ...} \\u0438\\u00a0\\u0442.\\u0434. \\u0412\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0430\\u043c\\u0431\\u043e\\u0442\\u0430: \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043e\\u0431\\u044b\\u0447\\u043d\\u044b\\u0445 \\u043a\\u0430\\u0432\\u044b\\u0447\\u0435\\u043a\\u00a0\\"\\" \\u043d\\u0430 \\u0435\\u043b\\u043e\\u0447\\u043a\\u0438\\u00a0\\u00ab\\u00bb \\u0438 \\u043b\\u0430\\u043f\\u043a\\u0438\\u00a0\\u201e\\u201c (\\u0434\\u043b\\u044f \\u0432\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u044b\\u0445); \\u043d\\u0435\\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0431\\u0435\\u043b \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0442\\u0438\\u0440\\u0435, \\u0441\\u0430\\u043c\\u043e \\u0442\\u0438\\u0440\\u0435 \\u0438\\u0437 \\u043a\\u043e\\u0440\\u043e\\u0442\\u0435\\u043d\\u044c\\u043a\\u043e\\u0433\\u043e \\u00ab\\u043c\\u0438\\u043d\\u0443\\u0441\\u0430\\u00bb\\u00a0- \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u0442\\u0441\\u044f \\u00ab\\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u00bb\\u00a0\\u2014; \\u0432\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0431\\u0435\\u043b \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0438\\u043d\\u0438\\u0446\\u0438\\u0430\\u043b\\u0430\\u043c\\u0438 \\u0438 \\u0444\\u0430\\u043c\\u0438\\u043b\\u0438\\u0435\\u0439 (\\u0442\\u0435\\u043f\\u0435\\u0440\\u044c \\u043d\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u00ab\\u041f\\u0443\\u0448\\u043a\\u0438\\u043d\\u00bb \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u043e\\u043a\\u0435, \\u0430 \\u00ab\\u0410.\\u0421.\\u00bb\\u00a0\\u2014 \\u043d\\u0430 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0439); \\u0432\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0431\\u0435\\u043b \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0441\\u043e\\u043a\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u0439 (\\u0443\\u043b.\\u00a0\\u041b\\u0435\\u043d\\u0438\\u043d\\u0430), \\u0430\\u0440\\u0430\\u0431\\u0441\\u043a\\u0438\\u0445 (38\\u00a0\\u043f\\u043e\\u043f\\u0443\\u0433\\u0430\\u0435\\u0432) \\u0438 \\u0440\\u0438\\u043c\\u0441\\u043a\\u0438\\u0445 \\u0446\\u0438\\u0444\\u0440 (XXVIII\\u00a0\\u0441\\u044a\\u0435\\u0437\\u0434), \\u043f\\u0435\\u0440\\u0435\\u0434 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u043c\\u0438 \\u0441\\u043e\\u043a\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u044f\\u043c\\u0438 (\\u043f\\u044f\\u0442\\u044c\\u00a0\\u0440\\u0443\\u0431.), \\u0432 \\u0443\\u0441\\u0442\\u043e\\u044f\\u0432\\u0448\\u0438\\u0445\\u0441\\u044f \\u0441\\u043e\\u043a\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u044f\\u0445 (\\u0438\\u00a0\\u0442.\\u0434., \\u0438\\u00a0\\u0442.\\u043f., \\u0438\\u00a0\\u0434\\u0440.); \\u0443\\u0431\\u0438\\u0440\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0431\\u0435\\u043b\\u044b \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0437\\u043d\\u0430\\u043a\\u0430\\u043c\\u0438 \\u043f\\u0443\\u043d\\u043a\\u0442\\u0443\\u0430\\u0446\\u0438\\u0438; 1\\/2, 1\\/4 \\u0438 3\\/4 \\u0437\\u0430\\u043c\\u0435\\u043d\\u044f\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u00bd, \\u00bc \\u0438 \\u00be; \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u043b\\u044f\\u0442\\u044c \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0432\\u0430 \\u043a \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u043c, \\u0430 \\u0447\\u0430\\u0441\\u0442\\u0438\\u0446\\u044b\\u00a0\\u2014 \\u043a \\u043f\\u0440\\u0435\\u0434\\u044b\\u0434\\u0443\\u0449\\u0438\\u043c \\u0441\\u043b\\u043e\\u0432\\u0430\\u043c; \\u043d\\u0435 \\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u0430\\u0442\\u044c \\u0441\\u043b\\u043e\\u0432\\u0430 \\u043f\\u0440\\u0438 \\u043f\\u043e\\u043c\\u043e\\u0449\\u0438 \\u043d\\u0435\\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0431\\u0435\\u043b\\u0430\\u00a0\\/ \\u0442\\u0435\\u0433\\u0430\\u00a0nobr\\u00a0\\/ \\u0441\\u0442\\u0438\\u043b\\u044f white-space:nowrap; \\u043d\\u0430\\u0441\\u0442\\u0440\\u0430\\u0438\\u0432\\u0430\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u044b \\u0442\\u0438\\u0440\\u0435 \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0431\\u0435\\u043b\\u0430; \\u043d\\u0435 \\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043e\\u0432; \\u043d\\u0435 \\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u0430\\u0442\\u044c \\u0447\\u0438\\u0441\\u043b\\u0430, \\u0440\\u0430\\u0437\\u0431\\u0438\\u0442\\u044b\\u0435 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u0440\\u044f\\u0434\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 1\\u00a0000\\u00a0000); \\u043d\\u0435 \\u0440\\u0430\\u0437\\u0440\\u044b\\u0432\\u0430\\u0442\\u044c \\u0434\\u0432\\u043e\\u0439\\u043d\\u044b\\u0435 \\u0441\\u043b\\u043e\\u0432\\u0430 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0434\\u0432\\u0430-\\u0442\\u0440\\u0438, \\u0438\\u0437-\\u0437\\u0430); \\u043d\\u0435 \\u043e\\u0442\\u0440\\u044b\\u0432\\u0430\\u0442\\u044c \\u0430\\u0431\\u0440\\u0435\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0443 \\u0444\\u043e\\u0440\\u043c\\u044b \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u044f \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u041e\\u041e\\u041e\\u00a0\\u00ab\\u0420\\u043e\\u0433\\u0430 \\u0438 \\u043a\\u043e\\u043f\\u044b\\u0442\\u0430\\u00bb); \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0432\\u0442\\u043e\\u0437\\u0430\\u043c\\u0435\\u043d\\u044b \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, (C) \\u043d\\u0430 \\u00a9, \\u0438\\u00a0\\u0434\\u0440.); \\u0438\\u0441\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043f\\u0443\\u043d\\u043a\\u0442\\u0443\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u043e\\u0448\\u0438\\u0431\\u043e\\u043a; \\u0438 \\u043c\\u043d\\u043e\\u0433\\u043e\\u0435-\\u043c\\u043d\\u043e\\u0433\\u043e\\u0435 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0435. \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043c\\u0430\\u043c\\u0431\\u043e\\u0442\\u0430: \\u00a9\\u00a02006\\u20132011\\u00a0. \\u041f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0430 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0444\\u043e\\u0440\\u0443\\u043c\\u0435: .","group":""}', '{"titles":"1","typenbsp":"1","typethinsp":"1","typedash":"0","typenumdash":"1","quotes":"1","dash":"1","speech":"1","initials":"1","abr":"1","unit":"1","shortatend":"1","shortwords":"1","etc":"1","nobrcopyright":"1","orgs":"1","doubleword":"1","phonenum":"1","htmlents":"0","xmlcomp":"0","dots":"1","plusminus":"1","lgequals":"1","frac":"1","fracext":"0","copyright":"1","registered":"1","trademark":"1","aquotes":"1","apunct":"1","indices":"1","spacesatend":"1","spinbracket":"1","spbeforebracket":"1","commanum":"1","dotdash":"1","exclquest":"1","exclquestdots":"1","sppunct":"1","nummarksp":"1","numnummark":"1","sectsectmark":"1","sizes":"1","interval":"1","minus":"1","numnbsp":"1","romenbsp":"1","deg":"1","percent":"1","numnum":"1","angle":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors_jce","type":"plugin","creationDate":"09 December 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.4.2","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 0, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 0, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'Russian', 'language', 'ru-RU', '', 1, 1, 1, 0, '{"legacy":false,"name":"Russian","type":"language","creationDate":"2012-11-14","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.8.4","description":"Russian language pack (administrator) for Joomla! 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'Russian', 'language', 'ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian","type":"language","creationDate":"2012-11-14","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.8.4","description":"Russian language pack (site) for Joomla! 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"November 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.16","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"legacy":false,"name":"JCE","type":"component","creationDate":"09 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.4.2","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"09 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.4.2","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `bzyon_finder_taxonomy`
--

INSERT INTO `bzyon_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bzyon_finder_terms_common`
--

INSERT INTO `bzyon_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_finder_types`
--

CREATE TABLE IF NOT EXISTS `bzyon_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_languages`
--

CREATE TABLE IF NOT EXISTS `bzyon_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `bzyon_languages`
--

INSERT INTO `bzyon_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 2),
(2, 'ru-RU', 'Russian (RU)', 'Русский (РФ)', 'ru', 'ru', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_menu`
--

CREATE TABLE IF NOT EXISTS `bzyon_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Дамп данных таблицы `bzyon_menu`
--

INSERT INTO `bzyon_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 83, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(101, 'mainmeny', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(107, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 43, 52, 0, '', 1),
(108, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 107, 2, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 44, 45, 0, '', 1),
(109, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 107, 2, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 46, 47, 0, '', 1),
(110, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 107, 2, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 48, 49, 0, '', 1),
(111, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 107, 2, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 50, 51, 0, '', 1),
(112, 'mainmeny', 'Окружение', 'okruzhenie', '', 'okruzhenie', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(113, 'mainmeny', 'ТВ/Радио проекты SoundЧе', 'tv-radio-proekty-soundche', '', 'tv-radio-proekty-soundche', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(114, 'mainmeny', 'SoundЧе фестиваль', 'soundche-festival', '', 'soundche-festival', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(115, 'mainmeny', 'Доска обьявлений', 'doska-obyavlenij', '', 'doska-obyavlenij', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(116, 'mainmeny', 'Команда', 'komanda', '', 'komanda', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 42, '2013-12-09 15:30:01', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(119, 'mainmeny', 'Mass media about us', 'mass-media-about-us', '', 'mass-media-about-us', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(120, 'mainmeny', 'Партнеры', 'partnery', '', 'partnery', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(121, 'mymeny', 'Главная', 'glavnaya', '', 'glavnaya', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 1, '*', 0),
(122, 'mymeny', 'Сообщество', 'soobshchestvo', '', 'soobshchestvo', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(123, 'mymeny', 'TV/Радио проекты SoundЧе ', 'tv-radio', '', 'tv-radio', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(124, 'mymeny', 'SoundЧе фестиваль', 'soundfest', '', 'soundfest', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(125, 'mymeny', 'Доска обьявлений', 'board', '', 'board', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(126, 'mymeny', 'Команда', 'team', '', 'team', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(127, 'mymeny', 'Mass media about us', 'massmedia', '', 'massmedia', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(128, 'mymeny', 'Партнеры', 'sponsors', '', 'sponsors', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_menu_types`
--

CREATE TABLE IF NOT EXISTS `bzyon_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `bzyon_menu_types`
--

INSERT INTO `bzyon_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmeny', 'Главное меню', 'The main menu for the site'),
(4, 'mymeny', 'Menu', '');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_messages`
--

CREATE TABLE IF NOT EXISTS `bzyon_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bzyon_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_modules`
--

CREATE TABLE IF NOT EXISTS `bzyon_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Дамп данных таблицы `bzyon_modules`
--

INSERT INTO `bzyon_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Вход', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Популярные материалы', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Новые материалы', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Инструментальная панель', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Быстрый доступ', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Авторизованные пользователи', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Меню панели управления', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Подменю панели управления', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'Статус пользователя', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Заголовок', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Форма входа', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Путь на сайте', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Статус многоязычности', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Версия Joomla!', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'footer', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 'header', '', '<p><img style="vertical-align: middle;" src="images/banners/cd-rom-macro-lrg.jpg" alt="cd-rom-macro-lrg" width="1100" height="260" /></p>', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 'Menu', '', '', 0, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mymeny","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bzyon_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bzyon_modules_menu`
--

INSERT INTO `bzyon_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(90, 0),
(91, 0),
(96, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bzyon_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_overrider`
--

CREATE TABLE IF NOT EXISTS `bzyon_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bzyon_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_schemas`
--

CREATE TABLE IF NOT EXISTS `bzyon_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bzyon_schemas`
--

INSERT INTO `bzyon_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.16');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_session`
--

CREATE TABLE IF NOT EXISTS `bzyon_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bzyon_session`
--

INSERT INTO `bzyon_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('lvgakd0entd2b1gr4k6jsc7h67', 1, 0, '1386618792', '__default|a:8:{s:15:"session.counter";i:1830;s:19:"session.timer.start";i:1386592877;s:18:"session.timer.last";i:1386618792;s:17:"session.timer.now";i:1386618792;s:22:"session.client.browser";s:102:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":14:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":4:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;s:6:"manage";O:8:"stdClass":4:{s:4:"data";a:1:{s:7:"filters";a:5:{s:6:"search";s:0:"";s:9:"client_id";s:0:"";s:6:"status";s:0:"";s:4:"type";s:6:"module";s:5:"group";s:0:"";}}s:10:"limitstart";s:1:"0";s:8:"ordercol";s:4:"name";s:9:"orderdirn";s:3:"asc";}}s:16:"com_joomlaupdate";O:8:"stdClass":3:{s:4:"file";N;s:8:"password";s:32:"hGEuDi2zcbg25Gbn4ycugPtBpTEZYHji";s:8:"filesize";i:3596395;}s:9:"com_cache";O:8:"stdClass":1:{s:5:"cache";O:8:"stdClass":1:{s:8:"ordercol";s:5:"group";}}s:13:"com_templates";O:8:"stdClass":2:{s:6:"styles";O:8:"stdClass":1:{s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":2:{s:6:"source";O:8:"stdClass":2:{s:2:"id";s:20:"NTAzOmluZGV4LnBocA==";s:4:"data";N;}s:5:"style";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:6:"editor";O:8:"stdClass":1:{s:6:"source";O:8:"stdClass":1:{s:6:"syntax";s:3:"php";}}s:11:"com_modules";O:8:"stdClass":4:{s:7:"modules";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:18:"client_id_previous";i:0;s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:0:"";s:8:"position";s:0:"";s:6:"module";s:0:"";s:9:"client_id";i:0;s:8:"language";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:8:"position";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:3:{i:2;i:89;i:3;i:92;i:4;i:1;}}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}s:9:"positions";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:0:"";s:5:"state";s:0:"";s:8:"template";s:7:"beez_20";s:4:"type";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:5:"value";s:9:"orderdirn";s:3:"asc";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:50;}}s:11:"com_plugins";O:8:"stdClass":1:{s:7:"plugins";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:0:"";s:6:"folder";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:6:"folder";s:9:"orderdirn";s:3:"asc";}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:6:"mymeny";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":2:{s:4:"item";O:8:"stdClass":5:{s:4:"data";N;s:4:"type";N;s:4:"link";N;s:8:"menutype";s:6:"mymeny";s:2:"id";a:1:{i:0;i:116;}}s:4:"menu";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:1:{i:0;i:1;}}}}s:4:"item";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:6:"mymeny";}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:1:{i:0;i:2;}}}}s:14:"com_categories";O:8:"stdClass":2:{s:10:"categories";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:9:"extension";s:11:"com_content";}}s:4:"edit";O:8:"stdClass":1:{s:8:"category";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}}}s:13:"com_languages";O:8:"stdClass":2:{s:9:"installed";O:8:"stdClass":1:{s:8:"ordercol";s:6:"a.name";}s:4:"edit";O:8:"stdClass":1:{s:8:"language";O:8:"stdClass":1:{s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:2:"42";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:15:"wwwerdy@mail.ru";s:8:"password";s:65:"8ee5ddb858e038abbb04b5796db5acc2:7dcUXX1JT5HqVcw5yNDRjeYJBAgPQAIN";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2013-12-08 21:34:10";s:13:"lastvisitDate";s:19:"2013-12-08 21:35:28";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"2c353662a1319e57808e0e0c680457eb";}__wf|a:1:{s:13:"session.token";s:32:"0157e12068bc1fa45738a8df599aa4e4";}', 42, 'admin', ''),
('p4pehj2tm3o1g9f5jsitr9l8b7', 0, 1, '1386618797', '__default|a:9:{s:15:"session.counter";i:273;s:19:"session.timer.start";i:1386593738;s:18:"session.timer.last";i:1386618795;s:17:"session.timer.now";i:1386618797;s:22:"session.client.browser";s:102:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"07c51e522ac1cac048fae400c5878bdd";s:16:"com_mailto.links";a:2:{s:40:"384ad88fda201b7b310e7b8d1e8b83786185478a";O:8:"stdClass":2:{s:4:"link";s:37:"http://127.0.0.1/soundcheckua/komanda";s:6:"expiry";i:1386603600;}s:40:"06acc3a7933a46017e8b6c95394b9e3575240293";O:8:"stdClass":2:{s:4:"link";s:38:"http://127.0.0.1/soundcheckua/partnery";s:6:"expiry";i:1386604915;}}}', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_template_styles`
--

CREATE TABLE IF NOT EXISTS `bzyon_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `bzyon_template_styles`
--

INSERT INTO `bzyon_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - По умолчанию', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - По умолчанию', '{}'),
(4, 'beez_20', 0, '1', 'Beez2 - По умолчанию', '{"wrapperSmall":43,"wrapperLarge":72,"logo":"","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal"}'),
(5, 'hathor', 1, '0', 'Hathor - По умолчанию', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - По умолчанию', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_update_categories`
--

CREATE TABLE IF NOT EXISTS `bzyon_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_update_sites`
--

CREATE TABLE IF NOT EXISTS `bzyon_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `bzyon_update_sites`
--

INSERT INTO `bzyon_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1386616786),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1386616786),
(3, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 1, 1386616786),
(4, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 1386616786);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bzyon_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `bzyon_update_sites_extensions`
--

INSERT INTO `bzyon_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 10000),
(4, 10000);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_updates`
--

CREATE TABLE IF NOT EXISTS `bzyon_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `bzyon_updates`
--

INSERT INTO `bzyon_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(3, 3, 0, 0, 'JCE Editor', '', 'com_jce', 'component', '', 1, '2.3.4.2', '', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1/extension.xml', 'http://www.joomlacontenteditor.net/news/item/jce-2342-released');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_user_notes`
--

CREATE TABLE IF NOT EXISTS `bzyon_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bzyon_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bzyon_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bzyon_user_usergroup_map`
--

INSERT INTO `bzyon_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_usergroups`
--

CREATE TABLE IF NOT EXISTS `bzyon_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `bzyon_usergroups`
--

INSERT INTO `bzyon_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Все'),
(2, 1, 6, 17, 'Зарегистрированные'),
(3, 2, 7, 14, 'Авторы'),
(4, 3, 8, 11, 'Редакторы'),
(5, 4, 9, 10, 'Издатели'),
(6, 1, 2, 5, 'Менеджеры'),
(7, 6, 3, 4, 'Администраторы'),
(8, 1, 18, 19, 'Супер-пользователи');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_users`
--

CREATE TABLE IF NOT EXISTS `bzyon_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `bzyon_users`
--

INSERT INTO `bzyon_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'admin', 'wwwerdy@mail.ru', '8ee5ddb858e038abbb04b5796db5acc2:7dcUXX1JT5HqVcw5yNDRjeYJBAgPQAIN', 'deprecated', 0, 1, '2013-12-08 21:34:10', '2013-12-09 12:41:21', '0', '');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bzyon_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `bzyon_viewlevels`
--

INSERT INTO `bzyon_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Для всех', 0, '[1]'),
(2, 'Для зарегистрированных', 1, '[6,2,8]'),
(3, 'Для администрации', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_weblinks`
--

CREATE TABLE IF NOT EXISTS `bzyon_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bzyon_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `bzyon_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `users` text NOT NULL,
  `types` text,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) DEFAULT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `bzyon_wf_profiles`
--

INSERT INTO `bzyon_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 0, NULL, 'bold,italic,underline,justifyfull,justifycenter,justifyleft,justifyright,numlist,bullist,blockquote,formatselect,styleselect,forecolor,article,link,unlink,anchor,imgmanager;fullscreen,preview,removeformat,cleanup,paste,table,source', 'article,link,imgmanager,fullscreen,preview,cleanup,paste,table,source,browser,contextmenu,inlinepopups,media', 1, 1, 42, '2012-03-18 14:42:52', '{"editor":{"width":"","height":"","toolbar_theme":"default","toolbar_align":"left","toolbar_location":"top","statusbar_location":"none","path":"1","resizing":"1","resize_horizontal":"1","resizing_use_cookie":"1","dialog_theme":"jce","profile_content_css":"2","profile_content_css_custom":"","relative_urls":"1","invalid_elements":"","invalid_attributes":"dynsrc,lowsrc","invalid_attribute_values":"","extended_elements":"","allow_javascript":"0","allow_css":"0","allow_php":"0","inline_styles":"1","cdata":"1","theme_advanced_blockformats":["p","div","h1","h2","h3","h4","h5","h6","address","code","pre","samp","span"],"theme_advanced_styles":"","theme_advanced_fonts_add":"","theme_advanced_fonts_remove":"","theme_advanced_font_sizes":"8pt,10pt,12pt,14pt,18pt,24pt,36pt","visualchars":"0","toggle":"1","toggle_state":"1","toggle_label":"[Toggle Editor]","custom_colors":"","dir":"","filesystem":{"name":"joomla","joomla":{"allow_root":"0","restrict_dir":"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc"}},"max_size":"","upload_conflict":"overwrite","upload_runtimes":["html5","flash"],"browser_position":"bottom","folder_tree":"1","list_limit":"all","validate_mimetype":"0","websafe_mode":"utf-8"},"article":{"show_readmore":"1","show_pagebreak":"0","hide_xtd_btns":"0"},"link":{"target":"","file_browser":"1","tabs_advanced":"1","attributes_anchor":"1","attributes_target":"1","links":{"joomlalinks":{"enable":"1","article_alias":"1","weblinks_alias":"1","content":"1","static":"1","contacts":"1","weblinks":"1","menu":"1"}},"popups":{"jcemediabox":{"enable":"1"},"window":{"enable":"1"}}},"imgmanager":{"dir":"","max_size":"","extensions":"image=jpeg,jpg,png,gif","hide_xtd_btns":"0","filesystem":{"name":""},"margin_top":"","margin_right":"","margin_bottom":"","margin_left":"","border":"0","border_width":"1","border_style":"solid","border_color":"#000000","align":"","tabs_rollover":"1","tabs_advanced":"1","attributes_dimensions":"1","attributes_align":"1","attributes_margin":"1","attributes_border":"1","upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1"},"paste":{"use_dialog":"0","dialog_width":"450","dialog_height":"400","force_cleanup":"0","strip_class_attributes":"all","remove_spans":"0","remove_styles":"0","retain_style_properties":"","remove_empty_paragraphs":"1","remove_styles_if_webkit":"0","html":"1","text":"1"},"table":{"width":"","height":"","border":"0","cols":"2","rows":"2","cellpadding":"","cellspacing":""},"source":{"highlight":"1","numbers":"1","wrap":"1","theme":"textmate"},"browser":{"dir":"","max_size":"","extensions":"xml=xml;html=htm,html;office=doc,docx,ppt,xls;text=txt,rtf;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz,rar;flash=swf;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf","filesystem":{"name":""},"upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1"},"media":{"strict":"1","iframes":"0","audio":"1","video":"1","object":"1","embed":"1","version_flash":"10,1,53,64","version_windowsmedia":"10,00,00,3646","version_quicktime":"7,3,0,0","version_java":"1,5,0,0","version_shockwave":"10,2,0,023"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, NULL, 'bold,italic,underline,justifyfull,justifycenter,justifyleft,justifyright,numlist,bullist,blockquote,formatselect,styleselect,forecolor,article,link,unlink,anchor,imgmanager;fullscreen,preview,removeformat,cleanup,paste,table,source', 'article,link,imgmanager,fullscreen,preview,cleanup,paste,table,source,contextmenu,inlinepopups', 0, 2, 0, '0000-00-00 00:00:00', '{"editor":{"width":"","height":"","toolbar_theme":"default","toolbar_align":"left","toolbar_location":"top","statusbar_location":"none","path":"1","resizing":"1","resize_horizontal":"1","resizing_use_cookie":"1","dialog_theme":"jce","profile_content_css":"2","profile_content_css_custom":"","relative_urls":"1","invalid_elements":"","invalid_attributes":"dynsrc,lowsrc","invalid_attribute_values":"","extended_elements":"","allow_javascript":"0","allow_css":"0","allow_php":"0","inline_styles":"1","cdata":"1","theme_advanced_blockformats":["p","div","h1","h2","h3","h4","h5","h6","address","code","pre","samp","span"],"theme_advanced_styles":"","theme_advanced_fonts_add":"","theme_advanced_fonts_remove":"","theme_advanced_font_sizes":"8pt,10pt,12pt,14pt,18pt,24pt,36pt","visualchars":"0","toggle":"1","toggle_state":"1","toggle_label":"[Toggle Editor]","custom_colors":"","dir":"","filesystem":{"name":"joomla","joomla":{"allow_root":"0","restrict_dir":"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc"}},"max_size":"","upload_conflict":"overwrite","upload_runtimes":["html5","flash"],"browser_position":"bottom","folder_tree":"1","list_limit":"all","validate_mimetype":"0","websafe_mode":"utf-8"},"article":{"show_readmore":"1","show_pagebreak":"0","hide_xtd_btns":"0"},"link":{"target":"","file_browser":"1","tabs_advanced":"1","attributes_anchor":"1","attributes_target":"1","links":{"joomlalinks":{"enable":"1","article_alias":"1","weblinks_alias":"1","content":"1","static":"1","contacts":"1","weblinks":"1","menu":"1"}},"popups":{"jcemediabox":{"enable":"1"},"window":{"enable":"1"}}},"imgmanager":{"dir":"","max_size":"","extensions":"image=jpeg,jpg,png,gif","hide_xtd_btns":"0","filesystem":{"name":""},"margin_top":"","margin_right":"","margin_bottom":"","margin_left":"","border":"0","border_width":"1","border_style":"solid","border_color":"#000000","align":"","tabs_rollover":"1","tabs_advanced":"1","attributes_dimensions":"1","attributes_align":"1","attributes_margin":"1","attributes_border":"1","upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1"},"paste":{"use_dialog":"0","dialog_width":"450","dialog_height":"400","force_cleanup":"0","strip_class_attributes":"all","remove_spans":"0","remove_styles":"0","retain_style_properties":"","remove_empty_paragraphs":"1","remove_styles_if_webkit":"0","html":"1","text":"1"},"table":{"width":"","height":"","border":"0","cols":"2","rows":"2","cellpadding":"","cellspacing":""},"source":{"highlight":"1","numbers":"1","wrap":"1","theme":"textmate"}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
