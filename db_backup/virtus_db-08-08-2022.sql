-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2022 at 11:15 PM
-- Server version: 8.0.30-0ubuntu0.20.04.2
-- PHP Version: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `virtus_action_logs`
--

CREATE TABLE `virtus_action_logs` (
  `id` int UNSIGNED NOT NULL,
  `message_language_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_action_logs`
--

INSERT INTO `virtus_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-07-09 22:59:39', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-07-09 23:00:31', 'com_users', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-07-09 23:00:39', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-09 23:01:19', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-10 00:18:18', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-10 03:01:48', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-11 03:46:31', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-11 13:45:55', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":225,\"name\":\"Spanish (es-ES)\",\"extension_name\":\"Spanish (es-ES)\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-11 14:27:48', 'com_installer', 565, 225, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":226,\"name\":\"Spanish (es-ES)\",\"extension_name\":\"Spanish (es-ES)\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-11 14:27:48', 'com_installer', 565, 226, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":227,\"name\":\"Spanish (es-ES)\",\"extension_name\":\"Spanish (es-ES)\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-11 14:27:48', 'com_installer', 565, 227, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":228,\"name\":\"Spanish (es-ES) Language Pack\",\"extension_name\":\"Spanish (es-ES) Language Pack\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-11 14:27:48', 'com_installer', 565, 228, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-11 15:23:27', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-11 15:23:32', 'com_users', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-11 15:23:37', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-15 20:30:32', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-18 23:12:53', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-07-18 23:14:35', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-19 17:54:32', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-29 04:05:24', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":229,\"name\":\"T3 Framework\",\"extension_name\":\"T3 Framework\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-29 04:07:45', 'com_installer', 565, 229, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":230,\"name\":\"purity_III\",\"extension_name\":\"purity_III\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-29 04:10:32', 'com_installer', 565, 230, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-30 02:07:26', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:08:38', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:08:56', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:09:38', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_small.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:18:57', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:19:05', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED', '{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":null,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:19:32', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_white_large.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:23:07', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:23:16', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED', '{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":null,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:25:29', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_white_large.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:25:34', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:25:40', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED', '{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":null,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:26:50', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_white.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:26:55', 'com_media.file', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:27:01', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:27:02', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Inicio\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:35:33', 'com_menus.item', 565, 101, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-07-30 02:35:33', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"2\",\"title\":\"Sin categor\\u00eda\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:37:23', 'com_categories.category', 565, 2, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-07-30 02:37:23', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-07-30 02:37:34', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:40:48', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":13,\"title\":\"purity_III - Predeterminado (2)\",\"extension_name\":\"purity_III - Predeterminado (2)\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:43:19', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Magazine\",\"extension_name\":\"purity_III - Magazine\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:46:14', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Magazine\",\"extension_name\":\"purity_III - Magazine\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:48:01', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Inicio\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:51:47', 'com_menus.item', 565, 101, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-07-30 02:51:47', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:54:32', 'com_modules.module', 565, 16, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:54:32', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-07-30 02:54:55', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:55:05', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Magazine\",\"extension_name\":\"purity_III - Magazine\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:57:05', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:57:13', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:58:21', 'com_modules.module', 565, 1, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:58:21', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:58:32', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta navegaci\\u00f3n\",\"extension_name\":\"Ruta navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:59:00', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:59:00', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:59:04', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 02:59:17', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:59:17', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 02:59:19', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:00:07', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 03:00:07', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:00:31', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 03:00:31', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:04:23', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 03:04:29', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:04:51', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 03:04:51', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 03:05:10', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 03:06:03', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:06:03', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-07-30 03:07:17', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Programaci\\u00f3n Estructurada \",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:09:36', 'com_categories.category', 565, 8, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-07-30 03:09:53', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Tematicas\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:16:48', 'com_menus.item', 565, 102, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Programaci\\u00f3n Estructurada\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:23:01', 'com_menus.item', 565, 103, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Programaci\\u00f3n Estructurada\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:23:24', 'com_menus.item', 565, 103, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:26:06', 'com_categories.category', 565, 9, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-07-30 03:26:23', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:27:50', 'com_menus.item', 565, 104, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:28:16', 'com_menus.item', 565, 104, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Contacto\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:30:26', 'com_menus.item', 565, 105, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CONTACT\",\"id\":1,\"title\":\"VIRTUS\",\"itemlink\":\"index.php?option=com_contact&task=contact.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:41:50', 'com_contact.contact', 565, 1, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__contact_details\"}', '2022-07-30 03:42:01', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Formulario de Contacto\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:42:44', 'com_menus.item', 565, 106, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-07-30 03:45:02', 'com_users', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CONTACT\",\"id\":\"1\",\"title\":\"VIRTUS\",\"itemlink\":\"index.php?option=com_contact&task=contact.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:47:28', 'com_contact.contact', 565, 1, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__contact_details\"}', '2022-07-30 03:47:28', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}', '2022-07-30 03:49:07', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}', '2022-07-30 03:49:10', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":93,\"title\":\"plg_captcha_recaptcha\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=93\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:49:10', 'com_plugins.plugin', 565, 93, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:49:23', 'com_config.application', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"93\",\"title\":\"plg_captcha_recaptcha\",\"extension_name\":\"plg_captcha_recaptcha\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=93\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 03:55:35', 'com_plugins.plugin', 565, 93, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}', '2022-07-30 03:55:35', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-07-30 03:55:55', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}', '2022-07-30 03:56:11', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}', '2022-07-30 03:56:30', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 04:34:12', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":229,\"name\":\"T3 Framework\",\"extension_name\":\"T3 Framework\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 04:35:29', 'com_installer', 565, 229, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-07-30 22:48:11', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 22:56:35', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 22:56:50', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 22:58:07', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:05:07', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:05:21', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:06:39', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:06:39', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:09:46', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:09:46', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:16:51', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:16:51', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:17:09', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:17:09', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:17:37', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `virtus_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(119, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:17:37', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:17:50', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:17:50', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(122, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:18:07', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:18:07', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(124, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:18:23', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:19:32', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(126, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:19:37', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(127, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:19:51', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(128, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:19:51', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(129, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:20:12', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(130, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:20:12', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(131, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:22:28', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(132, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:22:28', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(133, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:22:44', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(134, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-07-30 23:22:44', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(135, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-07-30 23:25:33', 'com_templates.style', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(136, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-08-09 01:44:13', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(137, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":231,\"name\":\"COM_ENGAGE\",\"extension_name\":\"COM_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 231, 'COM_ACTIONLOGS_DISABLED'),
(138, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":232,\"name\":\"MOD_ENGAGE_LATEST\",\"extension_name\":\"MOD_ENGAGE_LATEST\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 232, 'COM_ACTIONLOGS_DISABLED'),
(139, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":233,\"name\":\"PLG_ACTIONLOG_ENGAGE\",\"extension_name\":\"PLG_ACTIONLOG_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 233, 'COM_ACTIONLOGS_DISABLED'),
(140, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":234,\"name\":\"PLG_CONSOLE_ENGAGE\",\"extension_name\":\"PLG_CONSOLE_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 234, 'COM_ACTIONLOGS_DISABLED'),
(141, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":235,\"name\":\"PLG_CONTENT_ENGAGE\",\"extension_name\":\"PLG_CONTENT_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 235, 'COM_ACTIONLOGS_DISABLED'),
(142, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":236,\"name\":\"PLG_DATACOMPLIANCE_ENGAGE\",\"extension_name\":\"PLG_DATACOMPLIANCE_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 236, 'COM_ACTIONLOGS_DISABLED'),
(143, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":237,\"name\":\"PLG_ENGAGE_AKISMET\",\"extension_name\":\"PLG_ENGAGE_AKISMET\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 237, 'COM_ACTIONLOGS_DISABLED'),
(144, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":238,\"name\":\"PLG_ENGAGE_EMAIL\",\"extension_name\":\"PLG_ENGAGE_EMAIL\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 238, 'COM_ACTIONLOGS_DISABLED'),
(145, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":239,\"name\":\"PLG_ENGAGE_GRAVATAR\",\"extension_name\":\"PLG_ENGAGE_GRAVATAR\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 239, 'COM_ACTIONLOGS_DISABLED'),
(146, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":240,\"name\":\"PLG_PRIVACY_ENGAGE\",\"extension_name\":\"PLG_PRIVACY_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 240, 'COM_ACTIONLOGS_DISABLED'),
(147, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":241,\"name\":\"PLG_SYSTEM_ENGAGECACHE\",\"extension_name\":\"PLG_SYSTEM_ENGAGECACHE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 241, 'COM_ACTIONLOGS_DISABLED'),
(148, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":242,\"name\":\"PLG_USER_ENGAGE\",\"extension_name\":\"PLG_USER_ENGAGE\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 242, 'COM_ACTIONLOGS_DISABLED'),
(149, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":243,\"name\":\"pkg_engage\",\"extension_name\":\"pkg_engage\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:44:40', 'com_installer', 565, 243, 'COM_ACTIONLOGS_DISABLED'),
(150, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Tematica 1\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 01:48:25', 'com_content.article', 565, 1, 'COM_ACTIONLOGS_DISABLED'),
(151, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-08-09 01:48:42', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(152, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 01:58:10', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(153, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-08-09 01:58:25', 'com_users', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(154, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-08-09 01:58:34', 'com_users', 565, 0, 'COM_ACTIONLOGS_DISABLED'),
(155, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:01:21', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(156, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":10,\"title\":\"Conceptos B\\u00e1sicos\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=10\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:03:19', 'com_categories.category', 565, 10, 'COM_ACTIONLOGS_DISABLED'),
(157, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-08-09 02:03:27', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(158, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":11,\"title\":\"Control de Flujo\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=11\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:04:03', 'com_categories.category', 565, 11, 'COM_ACTIONLOGS_DISABLED'),
(159, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-08-09 02:04:11', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(160, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":12,\"title\":\"Funciones\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:04:30', 'com_categories.category', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(161, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":13,\"title\":\"Conceptos Avanzados\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:05:42', 'com_categories.category', 565, 13, 'COM_ACTIONLOGS_DISABLED'),
(162, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":14,\"title\":\"Conceptos B\\u00e1sicos\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=14\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:06:33', 'com_categories.category', 565, 14, 'COM_ACTIONLOGS_DISABLED'),
(163, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":15,\"title\":\"Clases y Objetos\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=15\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:07:06', 'com_categories.category', 565, 15, 'COM_ACTIONLOGS_DISABLED'),
(164, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":16,\"title\":\"Herencia\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=16\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:07:40', 'com_categories.category', 565, 16, 'COM_ACTIONLOGS_DISABLED'),
(165, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":17,\"title\":\"Encapsulamiento\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:08:00', 'com_categories.category', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(166, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"17\",\"title\":\"Encapsulamiento\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:08:16', 'com_categories.category', 565, 17, 'COM_ACTIONLOGS_DISABLED'),
(167, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}', '2022-08-09 02:08:16', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(168, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":18,\"title\":\"Polimorfismo\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=18\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:08:40', 'com_categories.category', 565, 18, 'COM_ACTIONLOGS_DISABLED'),
(169, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":19,\"title\":\"Conceptos Avanzados\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=19\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:09:19', 'com_categories.category', 565, 19, 'COM_ACTIONLOGS_DISABLED'),
(170, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":20,\"title\":\"Acerca De\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=20\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:09:40', 'com_categories.category', 565, 20, 'COM_ACTIONLOGS_DISABLED'),
(171, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Conceptos B\\u00e1sicos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:12:59', 'com_menus.item', 565, 108, 'COM_ACTIONLOGS_DISABLED'),
(172, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Control de Flujo\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:13:54', 'com_menus.item', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(173, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"Funciones\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:14:37', 'com_menus.item', 565, 110, 'COM_ACTIONLOGS_DISABLED'),
(174, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Programaci\\u00f3n Estructurada\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:15:14', 'com_menus.item', 565, 103, 'COM_ACTIONLOGS_DISABLED'),
(175, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:15:14', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(176, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Conceptos B\\u00e1sicos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:15:54', 'com_menus.item', 565, 108, 'COM_ACTIONLOGS_DISABLED'),
(177, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:15:54', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(178, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Programaci\\u00f3n Estructurada\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:16:07', 'com_menus.item', 565, 103, 'COM_ACTIONLOGS_DISABLED'),
(179, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:16:07', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(180, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Control de Flujo\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:16:27', 'com_menus.item', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(181, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:16:27', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(182, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"Funciones\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:16:57', 'com_menus.item', 565, 110, 'COM_ACTIONLOGS_DISABLED'),
(183, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:16:57', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(184, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"Conceptos Avanzados\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:17:29', 'com_menus.item', 565, 111, 'COM_ACTIONLOGS_DISABLED'),
(185, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"Conceptos B\\u00e1sicos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:18:09', 'com_menus.item', 565, 112, 'COM_ACTIONLOGS_DISABLED'),
(186, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"Clases y Objetos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:19:24', 'com_menus.item', 565, 113, 'COM_ACTIONLOGS_DISABLED'),
(187, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Herencia\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:19:58', 'com_menus.item', 565, 114, 'COM_ACTIONLOGS_DISABLED'),
(188, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"Encapsulamiento\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:20:34', 'com_menus.item', 565, 115, 'COM_ACTIONLOGS_DISABLED'),
(189, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Polimorfismo\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:21:03', 'com_menus.item', 565, 116, 'COM_ACTIONLOGS_DISABLED'),
(190, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Conceptos Avanzados\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:21:35', 'com_menus.item', 565, 117, 'COM_ACTIONLOGS_DISABLED'),
(191, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:22:25', 'com_menus.item', 565, 118, 'COM_ACTIONLOGS_DISABLED'),
(192, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Acerca De\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:22:58', 'com_menus.item', 565, 119, 'COM_ACTIONLOGS_DISABLED'),
(193, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:28:48', 'com_content.article', 565, 2, 'COM_ACTIONLOGS_DISABLED'),
(194, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:28:54', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(195, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:29:01', 'com_menus.item', 565, 120, 'COM_ACTIONLOGS_DISABLED'),
(196, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:29:46', 'com_menus.item', 565, 120, 'COM_ACTIONLOGS_DISABLED'),
(197, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 02:29:46', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(198, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:30:14', 'com_content.article', 565, 2, 'COM_ACTIONLOGS_DISABLED'),
(199, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:30:14', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(200, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:30:21', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(201, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:32:01', 'com_content.article', 565, 2, 'COM_ACTIONLOGS_DISABLED'),
(202, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:32:01', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(203, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:32:06', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(204, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:32:08', 'com_menus.item', 565, 120, 'COM_ACTIONLOGS_DISABLED'),
(205, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:33:01', 'com_content.article', 565, 2, 'COM_ACTIONLOGS_DISABLED'),
(206, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:33:01', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(207, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:37:18', 'com_content.article', 565, 3, 'COM_ACTIONLOGS_DISABLED'),
(208, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:37:24', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(209, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":121,\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=121\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:37:47', 'com_menus.item', 565, 121, 'COM_ACTIONLOGS_DISABLED'),
(210, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}', '2022-08-09 02:39:17', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(211, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":93,\"title\":\"plg_captcha_recaptcha\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=93\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:39:17', 'com_plugins.plugin', 565, 93, 'COM_ACTIONLOGS_DISABLED'),
(212, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:39:22', 'com_content.article', 565, 3, 'COM_ACTIONLOGS_DISABLED'),
(213, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:39:22', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(214, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:39:43', 'com_content.article', 565, 3, 'COM_ACTIONLOGS_DISABLED'),
(215, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:39:43', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(216, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:40:07', 'com_content.article', 565, 3, 'COM_ACTIONLOGS_DISABLED'),
(217, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:40:07', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(218, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:40:40', 'com_content.article', 565, 2, 'COM_ACTIONLOGS_DISABLED'),
(219, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:40:40', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(220, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:41:04', 'com_content.article', 565, 3, 'COM_ACTIONLOGS_DISABLED'),
(221, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:41:04', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(222, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Plataforma Aprendizaje\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:41:34', 'com_content.article', 565, 3, 'COM_ACTIONLOGS_DISABLED'),
(223, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:41:34', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(224, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":122,\"title\":\"Usuario\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=122\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:42:32', 'com_menus.item', 565, 122, 'COM_ACTIONLOGS_DISABLED'),
(225, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-08-09 02:44:26', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(226, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Modulo Bienvenida Inicio\",\"extension_name\":\"Modulo Bienvenida Inicio\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:46:13', 'com_modules.module', 565, 111, 'COM_ACTIONLOGS_DISABLED'),
(227, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Modulo Bienvenida Inicio\",\"extension_name\":\"Modulo Bienvenida Inicio\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:46:42', 'com_modules.module', 565, 111, 'COM_ACTIONLOGS_DISABLED'),
(228, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-08-09 02:46:42', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(229, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Modulo Bienvenida Inicio\",\"extension_name\":\"Modulo Bienvenida Inicio\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:47:17', 'com_modules.module', 565, 111, 'COM_ACTIONLOGS_DISABLED'),
(230, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-08-09 02:47:17', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(231, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:53:54', 'com_modules.module', 565, 109, 'COM_ACTIONLOGS_DISABLED'),
(232, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-08-09 02:53:54', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(233, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:55:20', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(234, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 02:55:48', 'com_modules.module', 565, 17, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `virtus_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(235, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}', '2022-08-09 02:55:48', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(236, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 02:58:10', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(237, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 03:00:31', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(238, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"\\u00bfQue es VIRTUS?\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 03:00:52', 'com_menus.item', 565, 120, 'COM_ACTIONLOGS_DISABLED'),
(239, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 03:00:52', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(240, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Acerca De\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 03:01:00', 'com_menus.item', 565, 119, 'COM_ACTIONLOGS_DISABLED'),
(241, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 03:01:00', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(242, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Inicio\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 03:01:08', 'com_menus.item', 565, 101, 'COM_ACTIONLOGS_DISABLED'),
(243, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}', '2022-08-09 03:01:08', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED'),
(244, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 03:01:45', 'com_templates.style', 565, 12, 'COM_ACTIONLOGS_DISABLED'),
(245, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Tematica 1\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}', '2022-08-09 03:05:23', 'com_content.article', 565, 1, 'COM_ACTIONLOGS_DISABLED'),
(246, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__content\"}', '2022-08-09 03:05:23', 'com_checkin', 565, 565, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_action_logs_extensions`
--

CREATE TABLE `virtus_action_logs_extensions` (
  `id` int UNSIGNED NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_action_logs_extensions`
--

INSERT INTO `virtus_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_action_logs_users`
--

CREATE TABLE `virtus_action_logs_users` (
  `user_id` int UNSIGNED NOT NULL,
  `notify` tinyint UNSIGNED NOT NULL,
  `extensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_action_log_config`
--

CREATE TABLE `virtus_action_log_config` (
  `id` int UNSIGNED NOT NULL,
  `type_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_action_log_config`
--

INSERT INTO `virtus_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_assets`
--

CREATE TABLE `virtus_assets` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_assets`
--

INSERT INTO `virtus_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 207, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 70, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 71, 72, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 73, 74, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 75, 78, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 79, 80, 1, 'com_login', 'com_login', '{}'),
(14, 1, 81, 82, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 83, 84, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 85, 88, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 89, 90, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 91, 170, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 171, 174, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 175, 176, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 177, 178, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 179, 180, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 185, 188, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 189, 190, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Sin categoría', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 172, 173, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 186, 187, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 191, 192, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 193, 194, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 195, 196, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 197, 198, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 199, 200, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 201, 202, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 92, 93, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 94, 95, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 96, 97, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 98, 99, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 100, 101, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 102, 103, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 104, 105, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 106, 107, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(48, 18, 112, 113, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 114, 115, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 116, 117, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 118, 119, 2, 'com_modules.module.17', 'Ruta Navegación', '{}'),
(52, 18, 120, 121, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 124, 125, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 86, 87, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 128, 129, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 20, 37, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 21, 22, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 23, 24, 3, 'com_content.transition.1', 'Unpublish', '{}'),
(59, 56, 25, 26, 3, 'com_content.transition.2', 'Publish', '{}'),
(60, 56, 27, 28, 3, 'com_content.transition.3', 'Trash', '{}'),
(61, 56, 29, 30, 3, 'com_content.transition.4', 'Archive', '{}'),
(62, 56, 31, 32, 3, 'com_content.transition.5', 'Feature', '{}'),
(63, 56, 33, 34, 3, 'com_content.transition.6', 'Unfeature', '{}'),
(64, 56, 35, 36, 3, 'com_content.transition.7', 'Publish & Feature', '{}'),
(65, 1, 181, 182, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 183, 184, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 108, 109, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 110, 111, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 122, 123, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 126, 127, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 130, 131, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 132, 133, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 134, 135, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 136, 137, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 138, 139, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 140, 141, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 142, 143, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 144, 145, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 146, 147, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 148, 149, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 150, 151, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 152, 153, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 154, 155, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 156, 157, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 158, 159, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 160, 161, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 162, 163, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 203, 204, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 11, 76, 77, 2, 'com_languages.language.2', 'Spanish (es-ES)', '{}'),
(92, 8, 38, 49, 2, 'com_content.category.8', 'Programación Estructurada ', '{}'),
(93, 8, 50, 63, 2, 'com_content.category.9', 'Programación Orientada a Objetos', '{}'),
(94, 18, 164, 165, 2, 'com_modules.module.109', 'Búsqueda', '{}'),
(95, 1, 205, 206, 1, 'com_engage', 'COM_ENGAGE', '{}'),
(96, 18, 166, 167, 2, 'com_modules.module.110', 'Akeeba Engage - Latest Comments', '{}'),
(97, 92, 39, 40, 3, 'com_content.article.1', 'Tematica 1', '{}'),
(98, 92, 41, 42, 3, 'com_content.category.10', 'Conceptos Básicos', '{}'),
(99, 92, 43, 44, 3, 'com_content.category.11', 'Control de Flujo', '{}'),
(100, 92, 45, 46, 3, 'com_content.category.12', 'Funciones', '{}'),
(101, 92, 47, 48, 3, 'com_content.category.13', 'Conceptos Avanzados', '{}'),
(102, 93, 51, 52, 3, 'com_content.category.14', 'Conceptos Básicos', '{}'),
(103, 93, 53, 54, 3, 'com_content.category.15', 'Clases y Objetos', '{}'),
(104, 93, 55, 56, 3, 'com_content.category.16', 'Herencia', '{}'),
(105, 93, 57, 58, 3, 'com_content.category.17', 'Encapsulamiento', '{}'),
(106, 93, 59, 60, 3, 'com_content.category.18', 'Polimorfismo', '{}'),
(107, 93, 61, 62, 3, 'com_content.category.19', 'Conceptos Avanzados', '{}'),
(108, 8, 64, 69, 2, 'com_content.category.20', 'Acerca De', '{}'),
(109, 108, 65, 66, 3, 'com_content.article.2', '¿Que es VIRTUS?', '{}'),
(110, 108, 67, 68, 3, 'com_content.article.3', 'Plataforma Aprendizaje', '{}'),
(111, 18, 168, 169, 2, 'com_modules.module.111', 'Modulo Bienvenida Inicio', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_associations`
--

CREATE TABLE `virtus_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_banners`
--

CREATE TABLE `virtus_banners` (
  `id` int NOT NULL,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `version` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_banner_clients`
--

CREATE TABLE `virtus_banner_clients` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_banner_tracks`
--

CREATE TABLE `virtus_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int UNSIGNED NOT NULL,
  `banner_id` int UNSIGNED NOT NULL,
  `count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_categories`
--

CREATE TABLE `virtus_categories` (
  `id` int NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_categories`
--

INSERT INTO `virtus_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 37, 0, '', 'system', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 565, '2022-07-09 22:52:00', 565, '2022-07-09 22:52:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Sin categoría', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-09 22:52:00', 565, '2022-07-30 02:37:23', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-09 22:52:00', 565, '2022-07-09 22:52:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-09 22:52:00', 565, '2022-07-09 22:52:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-09 22:52:00', 565, '2022-07-09 22:52:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-09 22:52:00', 565, '2022-07-09 22:52:00', 0, '*', 1),
(8, 92, 1, 11, 20, 1, 'structurada', 'com_content', 'Programación Estructurada ', 'structurada', '', '<p>La programación estructurada es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando únicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva.</p>', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-30 03:09:36', 565, '2022-07-30 03:09:36', 0, '*', 1),
(9, 93, 1, 21, 34, 1, 'poo', 'com_content', 'Programación Orientada a Objetos', 'poo', '', '<p>La Programación Orientada a Objetos (POO) es un paradigma de programación, es decir, un modelo o un estilo de programación que nos da unas guías sobre cómo trabajar con él. Se basa en el concepto de clases y objetos. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. </p>', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-07-30 03:26:06', 565, '2022-07-30 03:26:06', 0, '*', 1),
(10, 98, 8, 12, 13, 2, 'structurada/conceptos-basicos', 'com_content', 'Conceptos Básicos', 'conceptos-basicos', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:03:19', 565, '2022-08-09 02:03:19', 0, '*', 1),
(11, 99, 8, 14, 15, 2, 'structurada/control-flujo', 'com_content', 'Control de Flujo', 'control-flujo', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:04:03', 565, '2022-08-09 02:04:03', 0, '*', 1),
(12, 100, 8, 16, 17, 2, 'structurada/funciones', 'com_content', 'Funciones', 'funciones', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:04:30', 565, '2022-08-09 02:04:30', 0, '*', 1),
(13, 101, 8, 18, 19, 2, 'structurada/conceptos-avanzados', 'com_content', 'Conceptos Avanzados', 'conceptos-avanzados', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:05:42', 565, '2022-08-09 02:05:42', 0, '*', 1),
(14, 102, 9, 22, 23, 2, 'poo/conceptos-basicos', 'com_content', 'Conceptos Básicos', 'conceptos-basicos', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:06:33', 565, '2022-08-09 02:06:33', 0, '*', 1),
(15, 103, 9, 24, 25, 2, 'poo/clases-objetos', 'com_content', 'Clases y Objetos', 'clases-objetos', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:07:06', 565, '2022-08-09 02:07:06', 0, '*', 1),
(16, 104, 9, 26, 27, 2, 'poo/herencia', 'com_content', 'Herencia', 'herencia', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:07:40', 565, '2022-08-09 02:07:40', 0, '*', 1),
(17, 105, 9, 28, 29, 2, 'poo/encapsulamiento', 'com_content', 'Encapsulamiento', 'encapsulamiento', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:08:00', 565, '2022-08-09 02:08:16', 0, '*', 1),
(18, 106, 9, 30, 31, 2, 'poo/polimorfismo', 'com_content', 'Polimorfismo', 'polimorfismo', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:08:40', 565, '2022-08-09 02:08:40', 0, '*', 1),
(19, 107, 9, 32, 33, 2, 'poo/conceptos-avanzados', 'com_content', 'Conceptos Avanzados', 'conceptos-avanzados', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:09:19', 565, '2022-08-09 02:09:19', 0, '*', 1),
(20, 108, 1, 35, 36, 1, 'acerca-de', 'com_content', 'Acerca De', 'acerca-de', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 565, '2022-08-09 02:09:40', 565, '2022-08-09 02:09:40', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_contact_details`
--

CREATE TABLE `virtus_contact_details` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `hits` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_contact_details`
--

INSERT INTO `virtus_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'VIRTUS', 'virtus', '', '', 'Bogotá', '', 'Colombia', '', '', '', '', '', 'fmartinezro@gmail.com', 0, 1, NULL, NULL, 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"contact_layout\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 4, 1, '', 'http://grupovirtus.org/', '', '', '', '*', '2022-07-30 03:41:50', 565, '', '2022-07-30 03:47:28', 565, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, NULL, NULL, 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_content`
--

CREATE TABLE `virtus_content` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_content`
--

INSERT INTO `virtus_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 97, 'Tematica 1', 'alias-tematica', '<h1>Et dolor asperiores ea asperiores dolores.</h1>\r\n<p>Lorem ipsum dolor sit amet. Vel asperiores veritatis et modi minus est consequatur nisi aut molestiae dolores est culpa debitis aut enim quod. Aut fuga vitae eos placeat iure qui quia voluptatem ut galisum inventore ut dolorem molestiae At inventore unde. Sed architecto animi aut perferendis unde in aspernatur voluptates At reprehenderit architecto. Nam sapiente cupiditate et harum molestias <em>Eum voluptatibus et similique dolorem et tenetur deleniti qui nulla architecto</em>. Quo pariatur sed dicta harum <strong>Qui ullam eum molestiae facilis</strong> eum maxime molestias id illo voluptatem est necessitatibus libero.</p>\r\n<ol>\r\n<li>Quo obcaecati voluptatibus non quia sint pariatur voluptas et sunt architecto?</li>\r\n<li>Et fuga quibusdam ut quos dolores!</li>\r\n</ol>\r\n<ul>\r\n<li>Ad autem quia vel voluptatem voluptates non nihil maxime.</li>\r\n<li>Ad aspernatur amet eos tenetur praesentium.</li>\r\n<li>Est eaque dolores qui dicta consectetur At ducimus voluptatem?</li>\r\n</ul>\r\n<h2>Ut similique expedita et Quis placeat?</h2>\r\n<p>Ea illo harum <em>Vel perspiciatis est harum atque</em>. Ut magnam distinctio cum consequatur nemo et deleniti perferendis. Ab incidunt deleniti qui corrupti neque ut deserunt quos et enim voluptatem aut consequuntur debitis qui consectetur voluptatibus. Ut consectetur consequatur est doloribus eligendi qui molestiae consequatur a alias consequatur 33 doloribus quis. Rem culpa adipisci ea reiciendis ullam eum optio veritatis ut dolores odit nam galisum voluptatem sequi maiores et tenetur fugit. Et vero optio aut esse dolore <strong>Hic autem rem similique internos aut repellat placeat in voluptas minima</strong>. Ea laudantium rerum <a href=\"https://www.loremipzum.com/\" target=\"_blank\" rel=\"noopener\">Adipisci sit autem iusto aut praesentium distinctio</a> ea voluptatem labore est assumenda eius et quia nemo. Quo laudantium facere ducimus voluptatum eum voluptatem neque ut eius libero est voluptates vero id tenetur veritatis? Non corrupti culpa et itaque laborum sit velit voluptas aut nobis voluptates aut nihil inventore ea commodi totam.</p>\r\n<dl>\r\n<dt><dfn>Est placeat provident.</dfn></dt>\r\n<dd>Sed doloremque ullam sit tempora nesciunt!</dd>\r\n<dt><dfn>Rem velit excepturi.</dfn></dt>\r\n<dd>Cum temporibus dolorum cum omnis recusandae et voluptatem odio.</dd>\r\n</dl>\r\n<h3>Eos sapiente ratione ut quaerat asperiores qui recusandae temporibus.</h3>\r\n<p>Cum laudantium laborumet impedit rem inventore totam? Quo exercitationem repudiandae qui fuga cupiditate <strong>Aut blanditiis sed consequatur mollitia qui impedit aperiam ea delectus eligendi</strong>. Qui rerum Quis quo voluptate temporain repellat id rerum reiciendis est Quis rerum. Qui voluptatem ipsam ea vitae dolores sit voluptatibus fuga. Et labore suscipit aut velit reprehenderit ex ratione assumenda. Sed pariatur nesciunt ut consequatur laudantium ut earum tenetur sit laboriosam rerum ut iure voluptatem ut placeat unde eos dolor ipsum? Ut tenetur cupiditate quo tenetur excepturi quo alias nulla!</p>\r\n<blockquote cite=\"https://www.loremipzum.com/\">Et suscipit enim qui nulla praesentium et ducimus dignissimos aut facilis.</blockquote>\r\n<h4>Ut asperiores tempore ad quaerat atque.</h4>\r\n<p>Sed esse nihil qui odio voluptas <strong>In necessitatibus qui veritatis quisquam quo sunt illo eos ipsum fugiat</strong> sed autem cupiditate. Eos minus debitis <em>Aut asperiores qui modi tempore sit velit quas</em> et officiis sunt ad Quis esse? Qui maxime quia qui facere recusandae est impedit pariatur ut tempora natus. Ut tempore sunt id ducimus veritatis id quidem sequi et quam quidem. In omnis impedit quo dolorum et modi sunt! Sit totam fugiat aut alias rerum sit galisum eius cum laborum pariatur. Voluptatum nihil et mollitia quia aut quia voluptatem est laudantium repudiandae sed error exercitationem aut placeat nobis sed architecto quas.</p>\r\n<pre><code>&lt;!-- Non amet reiciendis sit voluptatem voluptate. --&gt;<br />&lt;sunt&gt;Provident voluptate.&lt;/sunt&gt;<br />&lt;eveniet&gt;Ut totam culpa.&lt;/eveniet&gt;<br />&lt;quod&gt;Et quam perspiciatis.&lt;/quod&gt;<br />&lt;eaque&gt;Ut laboriosam consequatur?&lt;/eaque&gt;</code></pre>', '', 1, 8, '2022-08-09 01:48:25', 565, '', '2022-08-09 03:05:23', 565, NULL, NULL, '2022-08-09 01:48:25', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\",\"engage\":{\"comments_show\":\"-1\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', 2, 0, '', '', 1, 9, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(2, 109, '¿Que es VIRTUS?', 'acerca-de-virtus', '<h1>Et quia incidunt sed ipsam molestiae.</h1>\r\n<p>Lorem ipsum dolor sit amet. Nam numquam iusto quo modi ducimus ab illum omnis eum eligendi rerum. Et alias mollitia ut corrupti consequatur est eaque numquam. Ut impedit molestiae aut tempora alias est omnis doloremque a veniam voluptatibus. Qui vitae omnis aut nemo nihil aut perspiciatis dolor aut alias molestias qui harum harum ut accusantium veritatis.</p>\r\n<h2>A illum ducimus ab quas consectetur ab voluptatem quaerat.</h2>\r\n<p>Ut aliquam autem ut temporibus vitae et expedita praesentium ex accusamus itaque et recusandae aliquam id officiis consequatur. Est galisum Quis et numquam ipsum sed voluptatem ipsum. Ab dicta quae qui fuga aliquid vel dolorem saepe ea quod accusantium qui consectetur itaque sed voluptatem natus. Sit aspernatur praesentium in voluptas est error similique.</p>\r\n<blockquote cite=\"https://www.loremipzum.com/\">Ut ipsam sequi aut unde porro non veritatis placeat hic repudiandae delectus et illum vero sit perferendis dolor.</blockquote>\r\n<h3>Et voluptatem neque aut velit mollitia.</h3>\r\n<p>Est quibusdam quidem a molestiae temporibus eum suscipit nobis ipsum officiis At delectus modi id officia autem aut fuga aliquam. Id consequatur eaque et repudiandae nesciunt aut natus iusto 33 quae eligendi. Ex incidunt voluptates id debitis soluta qui fugiat omnis. Ut veritatis molestiae et tenetur eaque et quia consequatur aut i</p>', '', 1, 20, '2022-08-09 02:28:48', 565, '', '2022-08-09 02:40:40', 565, 565, '2022-08-09 03:02:01', '2022-08-09 02:28:48', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\",\"engage\":{\"comments_show\":\"0\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', 5, 1, '', '', 1, 9, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(3, 110, 'Plataforma Aprendizaje', 'plataforma-aprendizaje', '<p>Lorem ipsum dolor sit amet. Est corrupti ipsa <em>Et odio aut commodi molestiae eos amet galisum</em> est magni consequatur et nemo quia. Non sapiente autem qui voluptate aspernatur <strong>Ut odit et officia ipsa sit galisum aliquam</strong>? Sit libero quia et similique voluptatem aut tempore porro aut nulla similique. Sed voluptas deserunt hic soluta voluptas ab rerum blanditiis.</p>\r\n<p>Qui fugit amet ea dolor officiis <em>Aut recusandae et pariatur quidem et ducimus aut culpa blanditiis</em> est voluptatem quisquam. Sit optio nisi sed ipsum voluptatibus et voluptate sunt hic explicabo velit ea fuga Quis eum omnis magni et voluptatem aperiam. Qui consectetur mollitia <strong>Ea aperiam a voluptatem asperiores non ipsam esse</strong> a vitae consectetur sed culpa debitis. Qui totam nemo qui galisum iure qui nemo debitis aut modi omnis.</p>\r\n<p>Ab exercitationem quaerat sit placeat consequatur qui nulla fuga vel nisi nihil est amet pariatur. Et reiciendis assumenda id fugiat officia et quaerat possimus. Qui magni error et iusto inventoreaut accusantium ex rerum voluptas vel architecto recusandae.</p>\r\n<ul>\r\n<li>Et commodi nemo et repudiandae quia eos debitis quia.</li>\r\n<li>Aut rerum qui totam inventore ut harum repellat et adipisci pariatur.</li>\r\n<li>Aut fugit blanditiis et quis corporis tempore quod.</li>\r\n<li>Sed facilis ullam atque facere aut provident suscipit?</li>\r\n</ul>\r\n<dl>\r\n<dt><dfn>Nam accusamus quam aut inventore natus.</dfn></dt>\r\n<dd>Id voluptas voluptatem 33 quae recusandae rem dignissimos vero quo inventore mollitia.</dd>\r\n<dt><dfn>Aut velit eligendi.</dfn></dt>\r\n<dd>Eum dolorem fuga aut magni sequi.</dd>\r\n<dt><dfn>Et assumenda ducimus sed molestiae sint.</dfn></dt>\r\n<dd>Est aperiam fugiat a voluptas impedit et delectus nemo sit maxime Quis.</dd>\r\n</dl>\r\n<pre><code>&lt;!-- Est quae saepe. --&gt;<br />&lt;architecto&gt;Ut earum blanditiis.&lt;/architecto&gt;<br />&lt;eligendi&gt;In odio dolor sit maiores dolore!&lt;/eligendi&gt;<br />&lt;commodi&gt;Sit sint consectetur est possimus quasi.&lt;/commodi&gt;</code></pre>', '', 1, 20, '2022-08-09 02:37:18', 565, '', '2022-08-09 02:41:34', 565, NULL, NULL, '2022-08-09 02:37:18', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\",\"engage\":{\"comments_show\":\"0\",\"comments_show_featured\":\"\",\"comments_show_category\":\"\",\"comments_show_article\":\"\",\"comments_ordering\":\"-1\",\"comments_enabled\":\"-1\",\"comments_close_after\":\"-1\",\"comments_notify_author\":\"\",\"comments_notify_users\":\"\"}}', 6, 0, '', '', 1, 8, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_contentitem_tag_map`
--

CREATE TABLE `virtus_contentitem_tag_map` (
  `type_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `virtus_content_frontpage`
--

CREATE TABLE `virtus_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_content_rating`
--

CREATE TABLE `virtus_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_content_types`
--

CREATE TABLE `virtus_content_types` (
  `type_id` int UNSIGNED NOT NULL,
  `type_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_content_types`
--

INSERT INTO `virtus_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_engage_comments`
--

CREATE TABLE `virtus_engage_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `asset_id` int UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content comments';

-- --------------------------------------------------------

--
-- Table structure for table `virtus_engage_unsubscribe`
--

CREATE TABLE `virtus_engage_unsubscribe` (
  `asset_id` bigint NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Unsubscribed emails';

-- --------------------------------------------------------

--
-- Table structure for table `virtus_extensions`
--

CREATE TABLE `virtus_extensions` (
  `extension_id` int NOT NULL,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_extensions`
--

INSERT INTO `virtus_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"es-ES\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"June 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"January 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'lib_joomla', 'library', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"384829fe3fc79d03d7f65b65e6f731ac\"}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_phpass', 'library', 'phpass', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_banners', 'module', 'mod_banners', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_footer', 'module', 'mod_footer', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_login', 'module', 'mod_login', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_articles_news', 'module', 'mod_articles_news', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_random_image', 'module', 'mod_random_image', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_related_items', 'module', 'mod_related_items', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_stats', 'module', 'mod_stats', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_syndicate', 'module', 'mod_syndicate', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_users_latest', 'module', 'mod_users_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_whosonline', 'module', 'mod_whosonline', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_wrapper', 'module', 'mod_wrapper', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_articles_category', 'module', 'mod_articles_category', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_languages', 'module', 'mod_languages', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_finder', 'module', 'mod_finder', NULL, '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_latest', 'module', 'mod_latest', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_logged', 'module', 'mod_logged', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_login', 'module', 'mod_login', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"June 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_popular', 'module', 'mod_popular', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_quickicon', 'module', 'mod_quickicon', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_frontend', 'module', 'mod_frontend', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_messages', 'module', 'mod_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"July2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_user', 'module', 'mod_user', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_title', 'module', 'mod_title', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_toolbar', 'module', 'mod_toolbar', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_version', 'module', 'mod_version', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(77, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(80, 0, 'mod_sampledata', 'module', 'mod_sampledata', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_latestactions', 'module', 'mod_latestactions', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_submenu', 'module', 'mod_submenu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', NULL, 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL);
INSERT INTO `virtus_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(86, 0, 'plg_api-authentication_basic', 'plugin', 'basic', NULL, 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(87, 0, 'plg_api-authentication_token', 'plugin', 'token', NULL, 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"November 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(88, 0, 'plg_authentication_cookie', 'plugin', 'cookie', NULL, 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_authentication_joomla', 'plugin', 'joomla', NULL, 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(90, 0, 'plg_authentication_ldap', 'plugin', 'ldap', NULL, 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(91, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(92, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(93, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', NULL, 'captcha', 0, 0, 1, 0, 1, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"version\":\"2.0\",\"public_key\":\"6LdAhjEhAAAAABESYZeNBIsuEWHf6nV8ex_2yShD\",\"private_key\":\"6LdAhjEhAAAAAFwnC_lbnhLi5SgzPnMDde0shoeS\",\"theme2\":\"light\",\"size\":\"normal\",\"tabindex\":0,\"callback\":\"\",\"expired_callback\":\"\",\"error_callback\":\"\"}', '', NULL, NULL, 1, 0, ''),
(94, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', NULL, 'captcha', 0, 0, 1, 0, 1, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', NULL, NULL, 2, 0, NULL),
(95, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(96, 0, 'plg_content_contact', 'plugin', 'contact', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(97, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(98, 0, 'plg_content_fields', 'plugin', 'fields', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(99, 0, 'plg_content_finder', 'plugin', 'finder', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(100, 0, 'plg_content_joomla', 'plugin', 'joomla', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(101, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(102, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(103, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(104, 0, 'plg_content_vote', 'plugin', 'vote', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(105, 0, 'plg_editors-xtd_article', 'plugin', 'article', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(106, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(107, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(108, 0, 'plg_editors-xtd_image', 'plugin', 'image', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(109, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(110, 0, 'plg_editors-xtd_module', 'plugin', 'module', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(111, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(112, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(113, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.65.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(114, 0, 'plg_editors_none', 'plugin', 'none', NULL, 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(115, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2021\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"5.10.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', NULL, NULL, 3, 0, NULL),
(116, 0, 'plg_extension_finder', 'plugin', 'finder', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(117, 0, 'plg_extension_joomla', 'plugin', 'joomla', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(118, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', NULL, 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(119, 0, 'plg_fields_calendar', 'plugin', 'calendar', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(120, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(121, 0, 'plg_fields_color', 'plugin', 'color', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(122, 0, 'plg_fields_editor', 'plugin', 'editor', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', NULL, NULL, 4, 0, NULL),
(123, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(124, 0, 'plg_fields_integer', 'plugin', 'integer', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(125, 0, 'plg_fields_list', 'plugin', 'list', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(126, 0, 'plg_fields_media', 'plugin', 'media', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(127, 0, 'plg_fields_radio', 'plugin', 'radio', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', NULL, NULL, 9, 0, NULL),
(128, 0, 'plg_fields_sql', 'plugin', 'sql', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', NULL, NULL, 10, 0, NULL),
(129, 0, 'plg_fields_subform', 'plugin', 'subform', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"June 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"subform\"}', '', '', NULL, NULL, 11, 0, NULL),
(130, 0, 'plg_fields_text', 'plugin', 'text', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', NULL, NULL, 12, 0, NULL),
(131, 0, 'plg_fields_textarea', 'plugin', 'textarea', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', NULL, NULL, 13, 0, NULL),
(132, 0, 'plg_fields_url', 'plugin', 'url', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', NULL, NULL, 14, 0, NULL),
(133, 0, 'plg_fields_user', 'plugin', 'user', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', NULL, NULL, 15, 0, NULL),
(134, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 16, 0, NULL),
(135, 0, 'plg_filesystem_local', 'plugin', 'local', NULL, 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(136, 0, 'plg_finder_categories', 'plugin', 'categories', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(137, 0, 'plg_finder_contacts', 'plugin', 'contacts', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(138, 0, 'plg_finder_content', 'plugin', 'content', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(139, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(140, 0, 'plg_finder_tags', 'plugin', 'tags', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(141, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(142, 0, 'plg_installer_override', 'plugin', 'override', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(143, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(144, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(145, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(146, 0, 'plg_media-action_crop', 'plugin', 'crop', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(147, 0, 'plg_media-action_resize', 'plugin', 'resize', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(148, 0, 'plg_media-action_rotate', 'plugin', 'rotate', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(149, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(150, 0, 'plg_privacy_consents', 'plugin', 'consents', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(151, 0, 'plg_privacy_contact', 'plugin', 'contact', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(152, 0, 'plg_privacy_content', 'plugin', 'content', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(153, 0, 'plg_privacy_message', 'plugin', 'message', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(154, 0, 'plg_privacy_user', 'plugin', 'user', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(155, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(156, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(157, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 3, 0, NULL),
(158, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"October 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 4, 0, NULL),
(159, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(160, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 6, 0, NULL),
(161, 0, 'plg_sampledata_blog', 'plugin', 'blog', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(162, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(163, 0, 'plg_system_accessibility', 'plugin', 'accessibility', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(164, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(165, 0, 'plg_system_cache', 'plugin', 'cache', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(166, 0, 'plg_system_debug', 'plugin', 'debug', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(167, 0, 'plg_system_fields', 'plugin', 'fields', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(168, 0, 'plg_system_highlight', 'plugin', 'highlight', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(169, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"October 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(170, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"February 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(171, 0, 'plg_system_languagecode', 'plugin', 'languagecode', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(172, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(173, 0, 'plg_system_log', 'plugin', 'log', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(174, 0, 'plg_system_logout', 'plugin', 'logout', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(175, 0, 'plg_system_logrotation', 'plugin', 'logrotation', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1660009442}', '', NULL, NULL, 13, 0, NULL),
(176, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(177, 0, 'plg_system_redirect', 'plugin', 'redirect', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL);
INSERT INTO `virtus_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(178, 0, 'plg_system_remember', 'plugin', 'remember', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(179, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', NULL, 'system', 0, 1, 1, 0, 0, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(180, 0, 'plg_system_sef', 'plugin', 'sef', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', NULL, NULL, 18, 0, NULL),
(181, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', NULL, NULL, 19, 0, NULL),
(182, 0, 'plg_system_skipto', 'plugin', 'skipto', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"February 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 20, 0, NULL),
(183, 0, 'plg_system_stats', 'plugin', 'stats', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1657412434,\"unique_id\":\"044f23430e39828a438a41bc50b39df167a82167\",\"interval\":12}', '', NULL, NULL, 21, 0, NULL),
(184, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 22, 0, NULL),
(185, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1660009442}', '', NULL, NULL, 23, 0, NULL),
(186, 0, 'plg_system_webauthn', 'plugin', 'webauthn', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 23, 0, NULL),
(187, 0, 'plg_task_check_files', 'plugin', 'checkfiles', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(188, 0, 'plg_task_demo_tasks', 'plugin', 'demotasks', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_demo_tasks\",\"type\":\"plugin\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_DEMO_TASKS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"demotasks\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(189, 0, 'plg_task_requests', 'plugin', 'requests', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(190, 0, 'plg_task_site_status', 'plugin', 'sitestatus', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(191, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', NULL, 'twofactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(192, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', NULL, 'twofactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(193, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(194, 0, 'plg_user_joomla', 'plugin', 'joomla', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(195, 0, 'plg_user_profile', 'plugin', 'profile', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(196, 0, 'plg_user_terms', 'plugin', 'terms', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(197, 0, 'plg_user_token', 'plugin', 'token', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"November 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(198, 0, 'plg_webservices_banners', 'plugin', 'banners', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(199, 0, 'plg_webservices_config', 'plugin', 'config', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(200, 0, 'plg_webservices_contact', 'plugin', 'contact', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(201, 0, 'plg_webservices_content', 'plugin', 'content', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(202, 0, 'plg_webservices_installer', 'plugin', 'installer', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"June 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(203, 0, 'plg_webservices_languages', 'plugin', 'languages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(204, 0, 'plg_webservices_media', 'plugin', 'media', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"May 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(205, 0, 'plg_webservices_menus', 'plugin', 'menus', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(206, 0, 'plg_webservices_messages', 'plugin', 'messages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(207, 0, 'plg_webservices_modules', 'plugin', 'modules', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(208, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(209, 0, 'plg_webservices_plugins', 'plugin', 'plugins', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(210, 0, 'plg_webservices_privacy', 'plugin', 'privacy', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(211, 0, 'plg_webservices_redirect', 'plugin', 'redirect', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(212, 0, 'plg_webservices_tags', 'plugin', 'tags', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(213, 0, 'plg_webservices_templates', 'plugin', 'templates', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(214, 0, 'plg_webservices_users', 'plugin', 'users', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(215, 0, 'plg_workflow_featuring', 'plugin', 'featuring', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"March 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(216, 0, 'plg_workflow_notification', 'plugin', 'notification', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"May 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(217, 0, 'plg_workflow_publishing', 'plugin', 'publishing', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"March 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(218, 0, 'atum', 'template', 'atum', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(219, 0, 'cassiopeia', 'template', 'cassiopeia', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"logoFile\":\"\",\"fluidContainer\":\"0\",\"sidebarLeftWidth\":\"3\",\"sidebarRightWidth\":\"3\"}', '', NULL, NULL, 0, 0, NULL),
(220, 0, 'files_joomla', 'file', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(221, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL),
(222, 221, 'English (en-GB)', 'language', 'en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(223, 221, 'English (en-GB)', 'language', 'en-GB', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(224, 221, 'English (en-GB)', 'language', 'en-GB', NULL, '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"en-GB api language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(225, 228, 'Spanish (es-ES)', 'language', 'es-ES', '', '', 1, 1, 0, 0, 0, '{\"name\":\"Spanish (es-ES)\",\"type\":\"language\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<p>Spanish [es-ES] language pack (administrator) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(226, 228, 'Spanish (es-ES)', 'language', 'es-ES', '', '', 3, 1, 0, 0, 0, '{\"name\":\"Spanish (es-ES)\",\"type\":\"language\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<p>Spanish [es-ES] language pack (api) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(227, 228, 'Spanish (es-ES)', 'language', 'es-ES', '', '', 0, 1, 0, 0, 0, '{\"name\":\"Spanish (es-ES)\",\"type\":\"language\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<p>Spanish [es-ES] language pack (site) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(228, 0, 'Spanish (es-ES) Language Pack', 'package', 'pkg_es-ES', '', '', 0, 1, 1, 0, 0, '{\"name\":\"Spanish (es-ES) Language Pack\",\"type\":\"package\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2023 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 4.1.5.1<\\/h2><p><\\/p><p>Please report any bugs or issues at the Spanish Translation Team using the mail: es.es.translation.team@gmail.com<\\/p><p>If you wanna help with translations matters the site is at: <a href=\'https:\\/\\/traduccion.joomlaes.org\' target=\'_blank\' rel=\'noopener noreferrer\'>JomlaEs.org<\\/a> Contact Us!<\\/p><p><\\/p><p>Translated by: The Spanish Translation Team [es-ES]<\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 4.1.5.1 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestra direcci\\u00f3n de correo electr\\u00f3nico: es.es.translation.team@gmail.com<\\/p><p>Si quiere colaborar con el trabajo de traducci\\u00f3n estamos en: <a href=\'https:\\/\\/traduccion.joomlaes.org\' target=\'_blank\' rel=\'noopener noreferrer\'>JomlaEs.org<\\/a> \\u00a1Contacte con nosotros!<\\/p><p><\\/p><p>Traducci\\u00f3n: Spanish Translation Team [es-ES]<\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(229, 0, 'T3 Framework', 'plugin', 't3', '', 'system', 0, 1, 1, 0, 0, '{\"name\":\"T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jul 14, 2022\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"3.1.0\",\"description\":\"\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/static.joomlart.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2021 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"t3\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(230, 0, 'purity_III', 'template', 'purity_iii', '', '', 0, 1, 1, 0, 0, '{\"name\":\"purity_III\",\"type\":\"template\",\"creationDate\":\"August 31th, 2021\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"2.0.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\\" title=\\\"Purity III Template demo\\\">Live Demo<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\\" title=\\\"purity iii template documentation\\\">Documentation<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\\" title=\\\"purity iii forum\\\">Forum<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\\" title=\\\"Purity III template more info\\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2020 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"tpl_article_info_datetime_format\":\"d M Y\"}', '', NULL, NULL, 0, 0, NULL),
(231, 243, 'COM_ENGAGE', 'component', 'com_engage', '', '', 1, 1, 0, 0, 0, '{\"name\":\"COM_ENGAGE\",\"type\":\"component\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"COM_ENGAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"engage\"}', '{\"spam_lastRun\":1660009492}', '', NULL, NULL, 0, 0, NULL),
(232, 243, 'MOD_ENGAGE_LATEST', 'module', 'mod_engage_latest', '', '', 0, 1, 0, 0, 0, '{\"name\":\"MOD_ENGAGE_LATEST\",\"type\":\"module\",\"creationDate\":\"2022-06-14\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2020-2021 Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"authorEmail\":\"nicholas@akeeba.com\",\"authorUrl\":\"www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"MOD_ENGAGE_LATEST_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_engage_latest\"}', '{\"count\":\"10\"}', '', NULL, NULL, 0, 0, NULL),
(233, 243, 'PLG_ACTIONLOG_ENGAGE', 'plugin', 'engage', '', 'actionlog', 0, 0, 1, 0, 0, '{\"name\":\"PLG_ACTIONLOG_ENGAGE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_ACTIONLOG_ENGAGE_XML_DESC\",\"group\":\"\",\"filename\":\"engage\"}', '{\"log_comments\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(234, 243, 'PLG_CONSOLE_ENGAGE', 'plugin', 'engage', '', 'console', 0, 1, 1, 0, 0, '{\"name\":\"PLG_CONSOLE_ENGAGE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2020-2021 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_CONSOLE_ENGAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"engage\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(235, 243, 'PLG_CONTENT_ENGAGE', 'plugin', 'engage', '', 'content', 0, 1, 1, 0, 0, '{\"name\":\"PLG_CONTENT_ENGAGE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_CONTENT_ENGAGE_XML_DESC\",\"group\":\"\",\"filename\":\"engage\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(236, 243, 'PLG_DATACOMPLIANCE_ENGAGE', 'plugin', 'engage', '', 'datacompliance', 0, 0, 1, 0, 0, '{\"name\":\"PLG_DATACOMPLIANCE_ENGAGE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_DATACOMPLIANCE_ENGAGE_XML_DESC\",\"group\":\"\",\"filename\":\"engage\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(237, 243, 'PLG_ENGAGE_AKISMET', 'plugin', 'akismet', '', 'engage', 0, 0, 1, 0, 0, '{\"name\":\"PLG_ENGAGE_AKISMET\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_ENGAGE_AKISMET_XML_DESC\",\"group\":\"\",\"filename\":\"akismet\"}', '{\"key\":\"\",\"check\":\"nonmanager\",\"discard_blatant\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(238, 243, 'PLG_ENGAGE_EMAIL', 'plugin', 'email', '', 'engage', 0, 1, 1, 0, 0, '{\"name\":\"PLG_ENGAGE_EMAIL\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_ENGAGE_EMAIL_XML_DESC\",\"group\":\"\",\"filename\":\"email\"}', '{\"managers_notify\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(239, 243, 'PLG_ENGAGE_GRAVATAR', 'plugin', 'gravatar', '', 'engage', 0, 1, 1, 0, 0, '{\"name\":\"PLG_ENGAGE_GRAVATAR\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_ENGAGE_GRAVATAR_XML_DESC\",\"group\":\"\",\"filename\":\"gravatar\"}', '{\"profile_link\":\"1\",\"rating\":\"G\",\"default_image\":\"mp\",\"custom_default\":\"\",\"force_default\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(240, 243, 'PLG_PRIVACY_ENGAGE', 'plugin', 'engage', '', 'privacy', 0, 0, 1, 0, 0, '{\"name\":\"PLG_PRIVACY_ENGAGE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_PRIVACY_ENGAGE_XML_DESC\",\"group\":\"\",\"filename\":\"engage\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(241, 243, 'PLG_SYSTEM_ENGAGECACHE', 'plugin', 'engagecache', '', 'system', 0, 0, 1, 0, 0, '{\"name\":\"PLG_SYSTEM_ENGAGECACHE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_SYSTEM_ENGAGECACHE_XML_DESC\",\"group\":\"\",\"filename\":\"engagecache\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(242, 243, 'PLG_USER_ENGAGE', 'plugin', 'engage', '', 'user', 0, 1, 1, 0, 0, '{\"name\":\"PLG_USER_ENGAGE\",\"type\":\"plugin\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"PLG_USER_ENGAGE_XML_DESC\",\"group\":\"\",\"filename\":\"engage\"}', '{\"own_comments\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(243, 0, 'pkg_engage', 'package', 'pkg_engage', '', '', 0, 1, 1, 0, 0, '{\"name\":\"pkg_engage\",\"type\":\"package\",\"creationDate\":\"2022-06-14\",\"author\":\"Akeeba Ltd\",\"copyright\":\"Copyright (c)2020-2021 Akeeba Ltd\",\"authorEmail\":\"no-reply@akeeba.com\",\"authorUrl\":\"https:\\/\\/www.akeeba.com\",\"version\":\"3.0.9\",\"description\":\"Akeeba Engage installation package\",\"group\":\"\",\"filename\":\"pkg_engage\"}', '{}', '', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_fields`
--

CREATE TABLE `virtus_fields` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_fields_categories`
--

CREATE TABLE `virtus_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_fields_groups`
--

CREATE TABLE `virtus_fields_groups` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_fields_values`
--

CREATE TABLE `virtus_fields_values` (
  `field_id` int UNSIGNED NOT NULL,
  `item_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_filters`
--

CREATE TABLE `virtus_finder_filters` (
  `filter_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int UNSIGNED NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_links`
--

CREATE TABLE `virtus_finder_links` (
  `link_id` int UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_links`
--

INSERT INTO `virtus_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=category&id=2', 'index.php?option=com_content&view=category&id=2', 'Sin categoría', '', '2022-07-30 02:37:23', '557dd533e53d63edd37d709473d995ae', 1, 1, 1, '*', NULL, NULL, '2022-07-09 22:52:00', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a323b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a313b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30372d33302030323a33373a3233223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b693a31323b4e3b693a31333b733a31393a22323032322d30372d30392032323a35323a3030223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31343a2253696e2063617465676f72c3ad61223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b7d),
(2, 'index.php?option=com_content&view=category&id=8', 'index.php?option=com_content&view=category&id=8', 'Programación Estructurada ', ' La programación estructurada es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando únicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva. ', '2022-07-30 03:09:36', 'bd6b992019ffb13311605d27188c37b3', 1, 1, 1, '*', NULL, NULL, '2022-07-30 03:09:36', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a3234373a22204c612070726f6772616d616369c3b36e2065737472756374757261646120657320756e20706172616469676d612064652070726f6772616d616369c3b36e206f7269656e7461646f2061206d656a6f726172206c6120636c6172696461642c2063616c696461642079207469656d706f206465206465736172726f6c6c6f20646520756e2070726f6772616d61207574696c697a616e646f20c3ba6e6963616d656e746520737562727574696e6173206f2066756e63696f6e6573207920747265732065737472756374757261733a2073656375656e6369616c2c20636f6e646963696f6e616c207920726570657469746976612e20223b693a333b613a31373a7b733a323a226964223b693a383b733a353a22616c696173223b733a31313a227374727563747572616461223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31313b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a3235323a223c703e4c612070726f6772616d616369c3b36e2065737472756374757261646120657320756e20706172616469676d612064652070726f6772616d616369c3b36e206f7269656e7461646f2061206d656a6f726172206c6120636c6172696461642c2063616c696461642079207469656d706f206465206465736172726f6c6c6f20646520756e2070726f6772616d61207574696c697a616e646f20c3ba6e6963616d656e746520737562727574696e6173206f2066756e63696f6e6573207920747265732065737472756374757261733a2073656375656e6369616c2c20636f6e646963696f6e616c207920726570657469746976612e3c2f703e223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30372d33302030333a30393a3336223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31333a22383a7374727563747572616461223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30372d33302030333a30393a3336223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a32373a2250726f6772616d616369c3b36e2045737472756374757261646120223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b7d),
(3, 'index.php?option=com_content&view=category&id=9', 'index.php?option=com_content&view=category&id=9', 'Programación Orientada a Objetos', ' La Programación Orientada a Objetos (POO) es un paradigma de programación, es decir, un modelo o un estilo de programación que nos da unas guías sobre cómo trabajar con él. Se basa en el concepto de clases y objetos. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. ', '2022-07-30 03:26:06', '152e56f91690a50c313a36122821ba2d', 1, 1, 1, '*', NULL, NULL, '2022-07-30 03:26:06', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a3431343a22204c612050726f6772616d616369c3b36e204f7269656e746164612061204f626a65746f732028504f4f2920657320756e20706172616469676d612064652070726f6772616d616369c3b36e2c2065732064656369722c20756e206d6f64656c6f206f20756e20657374696c6f2064652070726f6772616d616369c3b36e20717565206e6f7320646120756e6173206775c3ad617320736f6272652063c3b36d6f2074726162616a617220636f6e20c3a96c2e205365206261736120656e20656c20636f6e636570746f20646520636c617365732079206f626a65746f732e2045737465207469706f2064652070726f6772616d616369c3b36e207365207574696c697a61207061726120657374727563747572617220756e2070726f6772616d6120646520736f66747761726520656e207069657a61732073696d706c657320792072657574696c697a61626c657320646520706c616e6f732064652063c3b36469676f2028636c6173657329207061726120637265617220696e7374616e6369617320696e646976696475616c6573206465206f626a65746f732e20223b693a333b613a31373a7b733a323a226964223b693a393b733a353a22616c696173223b733a333a22706f6f223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31333b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a3432313a223c703e4c612050726f6772616d616369c3b36e204f7269656e746164612061204f626a65746f732028504f4f2920657320756e20706172616469676d612064652070726f6772616d616369c3b36e2c2065732064656369722c20756e206d6f64656c6f206f20756e20657374696c6f2064652070726f6772616d616369c3b36e20717565206e6f7320646120756e6173206775c3ad617320736f6272652063c3b36d6f2074726162616a617220636f6e20c3a96c2e205365206261736120656e20656c20636f6e636570746f20646520636c617365732079206f626a65746f732e2045737465207469706f2064652070726f6772616d616369c3b36e207365207574696c697a61207061726120657374727563747572617220756e2070726f6772616d6120646520736f66747761726520656e207069657a61732073696d706c657320792072657574696c697a61626c657320646520706c616e6f732064652063c3b36469676f2028636c6173657329207061726120637265617220696e7374616e6369617320696e646976696475616c6573206465206f626a65746f732ec2a03c2f703e223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30372d33302030333a32363a3036223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a353a22393a706f6f223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b693a31323b4e3b693a31333b733a31393a22323032322d30372d33302030333a32363a3036223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a33333a2250726f6772616d616369c3b36e204f7269656e746164612061204f626a65746f73223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b7d),
(5, 'index.php?option=com_contact&view=contact&id=1', 'index.php?option=com_contact&view=contact&id=1:virtus&catid=4:uncategorised', 'VIRTUS', '', '2022-07-30 03:47:28', '4363ddf2dd14f6eb2835f68db1bc098b', 1, 1, 1, '*', NULL, NULL, '2022-07-30 03:41:50', NULL, 0, 0, 2, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a33333a7b733a323a226964223b693a313b733a353a22616c696173223b733a363a22766972747573223b733a383a22706f736974696f6e223b733a303a22223b733a373a2261646472657373223b733a303a22223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032322d30372d33302030333a34373a3238223b733a31313a226d6f6469666965645f6279223b693a3536353b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b733a32353a227b22726f626f7473223a22222c22726967687473223a22227d223b733a393a22736f72746e616d6531223b733a303a22223b733a393a22736f72746e616d6532223b733a303a22223b733a393a22736f72746e616d6533223b733a303a22223b733a343a2263697479223b733a373a22426f676f74c3a1223b733a363a22726567696f6e223b733a303a22223b733a373a22636f756e747279223b733a383a22436f6c6f6d626961223b733a333a227a6970223b733a303a22223b733a393a2274656c6570686f6e65223b733a303a22223b733a333a22666178223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a353a22656d61696c223b733a32313a22666d617274696e657a726f40676d61696c2e636f6d223b733a363a226d6f62696c65223b733a303a22223b733a373a2277656270616765223b733a32333a22687474703a2f2f677275706f7669727475732e6f72672f223b733a383a226f72646572696e67223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a34303a7b733a32313a2273686f775f636f6e746163745f63617465676f7279223b733a303a22223b733a31373a2273686f775f636f6e746163745f6c697374223b733a303a22223b733a393a2273686f775f74616773223b733a303a22223b733a393a2273686f775f696e666f223b733a303a22223b733a393a2273686f775f6e616d65223b733a303a22223b733a31333a2273686f775f706f736974696f6e223b733a303a22223b733a31303a2273686f775f656d61696c223b733a303a22223b733a31353a226164645f6d61696c746f5f6c696e6b223b733a303a22223b733a31393a2273686f775f7374726565745f61646472657373223b733a303a22223b733a31313a2273686f775f737562757262223b733a303a22223b733a31303a2273686f775f7374617465223b733a303a22223b733a31333a2273686f775f706f7374636f6465223b733a303a22223b733a31323a2273686f775f636f756e747279223b733a303a22223b733a31343a2273686f775f74656c6570686f6e65223b733a303a22223b733a31313a2273686f775f6d6f62696c65223b733a303a22223b733a383a2273686f775f666178223b733a303a22223b733a31323a2273686f775f77656270616765223b733a303a22223b733a31303a2273686f775f696d616765223b733a303a22223b733a393a2273686f775f6d697363223b733a303a22223b733a31313a22616c6c6f775f7663617264223b733a303a22223b733a31333a2273686f775f61727469636c6573223b733a303a22223b733a32303a2261727469636c65735f646973706c61795f6e756d223b733a303a22223b733a31323a2273686f775f70726f66696c65223b733a303a22223b733a31343a22636f6e746163745f6c61796f7574223b733a303a22223b733a31303a2273686f775f6c696e6b73223b733a303a22223b733a31303a226c696e6b615f6e616d65223b733a303a22223b733a353a226c696e6b61223b733a303a22223b733a31303a226c696e6b625f6e616d65223b733a303a22223b733a353a226c696e6b62223b733a303a22223b733a31303a226c696e6b635f6e616d65223b733a303a22223b733a353a226c696e6b63223b733a303a22223b733a31303a226c696e6b645f6e616d65223b733a303a22223b733a353a226c696e6b64223b733a303a22223b733a31303a226c696e6b655f6e616d65223b733a303a22223b733a353a226c696e6b65223b733a303a22223b733a31353a2273686f775f656d61696c5f666f726d223b733a303a22223b733a31353a2273686f775f656d61696c5f636f7079223b733a303a22223b733a31363a2276616c69646174655f73657373696f6e223b733a303a22223b733a31323a22637573746f6d5f7265706c79223b733a303a22223b733a383a227265646972656374223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a353a226361746964223b693a343b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a383a22313a766972747573223b733a373a22636174736c7567223b733a31353a22343a756e63617465676f7269736564223b733a343a226e616d65223b4e3b733a363a226c61796f7574223b733a373a22636f6e74616374223b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31353a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a383a22706f736974696f6e223b693a343b733a373a2261646472657373223b693a353b733a343a2263697479223b693a363b733a363a22726567696f6e223b693a373b733a373a22636f756e747279223b693a383b733a333a227a6970223b693a393b733a393a2274656c6570686f6e65223b693a31303b733a333a22666178223b693a31313b733a353a22656d61696c223b693a31323b733a363a226d6f62696c65223b693a31333b733a373a2277656270616765223b693a31343b733a343a2275736572223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d313a7669727475732663617469643d343a756e63617465676f7269736564223b693a31323b4e3b693a31333b733a31393a22323032322d30372d33302030333a34313a3530223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a22436f6e74616374223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a363b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a383b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a373a22436f756e747279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a22436f6c6f6d626961223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d7d693a31363b733a363a22564952545553223b693a31373b693a323b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d31223b7d),
(7, 'index.php?option=com_content&view=category&id=10', 'index.php?option=com_content&view=category&id=10', 'Conceptos Básicos', '', '2022-08-09 02:03:19', '511d3d12f9fe0f83fb4e13f315143f3b', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:03:19', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31303b733a353a22616c696173223b733a31373a22636f6e636570746f732062617369636f73223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31323b733a393a22706172656e745f6964223b693a383b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30333a3139223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a32303a2231303a636f6e636570746f732d62617369636f73223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30333a3139223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31383a22436f6e636570746f732042c3a17369636f73223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b7d),
(8, 'index.php?option=com_content&view=category&id=11', 'index.php?option=com_content&view=category&id=11', 'Control de Flujo', '', '2022-08-09 02:04:03', '39585af1a22d6e68a99e00bc7aeba101', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:04:03', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31313b733a353a22616c696173223b733a31333a22636f6e74726f6c20666c756a6f223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31343b733a393a22706172656e745f6964223b693a383b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30343a3033223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31363a2231313a636f6e74726f6c2d666c756a6f223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30343a3033223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31363a22436f6e74726f6c20646520466c756a6f223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b7d),
(9, 'index.php?option=com_content&view=category&id=12', 'index.php?option=com_content&view=category&id=12', 'Funciones', '', '2022-08-09 02:04:30', '8d68f642a437eb9faf1345086812c4a6', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:04:30', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31323b733a353a22616c696173223b733a393a2266756e63696f6e6573223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31363b733a393a22706172656e745f6964223b693a383b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30343a3330223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31323a2231323a66756e63696f6e6573223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3132223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30343a3330223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a393a2246756e63696f6e6573223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3132223b7d),
(10, 'index.php?option=com_content&view=category&id=13', 'index.php?option=com_content&view=category&id=13', 'Conceptos Avanzados', '', '2022-08-09 02:05:42', 'dc3d61f1f0c9bd43f61c1f7da3802bdd', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:05:42', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31333b733a353a22616c696173223b733a31393a22636f6e636570746f73206176616e7a61646f73223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31383b733a393a22706172656e745f6964223b693a383b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30353a3432223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a32323a2231333a636f6e636570746f732d6176616e7a61646f73223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3133223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30353a3432223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31393a22436f6e636570746f73204176616e7a61646f73223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3133223b7d),
(11, 'index.php?option=com_content&view=category&id=14', 'index.php?option=com_content&view=category&id=14', 'Conceptos Básicos', '', '2022-08-09 02:06:33', '9992a6e92b8745e219ac1f9dd6ee9cb3', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:06:33', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31343b733a353a22616c696173223b733a31373a22636f6e636570746f732062617369636f73223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a32323b733a393a22706172656e745f6964223b693a393b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30363a3333223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a32303a2231343a636f6e636570746f732d62617369636f73223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3134223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30363a3333223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31383a22436f6e636570746f732042c3a17369636f73223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3134223b7d),
(12, 'index.php?option=com_content&view=category&id=15', 'index.php?option=com_content&view=category&id=15', 'Clases y Objetos', '', '2022-08-09 02:07:06', '4e8e7d00146efbad086bbbeba5e37530', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:07:06', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31353b733a353a22616c696173223b733a31343a22636c61736573206f626a65746f73223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a32343b733a393a22706172656e745f6964223b693a393b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30373a3036223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31373a2231353a636c617365732d6f626a65746f73223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3135223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30373a3036223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31363a22436c617365732079204f626a65746f73223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3135223b7d);
INSERT INTO `virtus_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(13, 'index.php?option=com_content&view=category&id=16', 'index.php?option=com_content&view=category&id=16', 'Herencia', '', '2022-08-09 02:07:40', 'f9401359a8a055c9349ef71cfb451e00', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:07:40', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31363b733a353a22616c696173223b733a383a22686572656e636961223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a32363b733a393a22706172656e745f6964223b693a393b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30373a3430223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31313a2231363a686572656e636961223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3136223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30373a3430223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a383a22486572656e636961223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3136223b7d),
(14, 'index.php?option=com_content&view=category&id=17', 'index.php?option=com_content&view=category&id=17', 'Encapsulamiento', '', '2022-08-09 02:08:16', 'f538a8d7996863ff7d9b345d805036ff', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:08:00', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31373b733a353a22616c696173223b733a31353a22656e63617073756c616d69656e746f223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a32383b733a393a22706172656e745f6964223b693a393b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30383a3136223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31383a2231373a656e63617073756c616d69656e746f223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3137223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30383a3030223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31353a22456e63617073756c616d69656e746f223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3137223b7d),
(15, 'index.php?option=com_content&view=category&id=18', 'index.php?option=com_content&view=category&id=18', 'Polimorfismo', '', '2022-08-09 02:08:40', '229a2bad6ddab69c8e3480cc7fe5afed', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:08:40', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31383b733a353a22616c696173223b733a31323a22706f6c696d6f726669736d6f223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a33303b733a393a22706172656e745f6964223b693a393b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30383a3430223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31353a2231383a706f6c696d6f726669736d6f223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3138223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30383a3430223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31323a22506f6c696d6f726669736d6f223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3138223b7d),
(16, 'index.php?option=com_content&view=category&id=19', 'index.php?option=com_content&view=category&id=19', 'Conceptos Avanzados', '', '2022-08-09 02:09:19', 'a8c64f26b2979a306237059eb4f083cc', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:09:19', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31393b733a353a22616c696173223b733a31393a22636f6e636570746f73206176616e7a61646f73223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a33323b733a393a22706172656e745f6964223b693a393b733a353a226c6576656c223b693a323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30393a3139223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a32323a2231393a636f6e636570746f732d6176616e7a61646f73223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3139223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30393a3139223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31393a22436f6e636570746f73204176616e7a61646f73223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3139223b7d),
(17, 'index.php?option=com_content&view=category&id=20', 'index.php?option=com_content&view=category&id=20', 'Acerca De', '', '2022-08-09 02:09:40', 'd3c5f37ec2602310553065807133a3b0', 1, 1, 1, '*', NULL, NULL, '2022-08-09 02:09:40', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a32303b733a353a22616c696173223b733a393a22616365726361206465223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a33353b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b733a31343a2274335f65787472616669656c6473223b733a303a22223b733a363a22656e67616765223b4f3a383a22737464436c617373223a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3536353b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a30393a3430223b733a31313a226d6f6469666965645f6279223b693a3536353b733a343a22736c7567223b733a31323a2232303a6163657263612d6465223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3230223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a30393a3430223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a393a22416365726361204465223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3230223b7d),
(26, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:acerca-de-virtus&catid=20', '¿Que es VIRTUS?', ' Et quia incidunt sed ipsam molestiae. Lorem ipsum dolor sit amet. Nam numquam iusto quo modi ducimus ab illum omnis eum eligendi rerum. Et alias mollitia ut corrupti consequatur est eaque numquam. Ut impedit molestiae aut tempora alias est omnis doloremque a veniam voluptatibus. Qui vitae omnis aut nemo nihil aut perspiciatis dolor aut alias molestias qui harum harum ut accusantium veritatis. A illum ducimus ab quas consectetur ab voluptatem quaerat. Ut aliquam autem ut temporibus vitae et expedita praesentium ex accusamus itaque et recusandae aliquam id officiis consequatur. Est galisum Quis et numquam ipsum sed voluptatem ipsum. Ab dicta quae qui fuga aliquid vel dolorem saepe ea quod accusantium qui consectetur itaque sed voluptatem natus. Sit aspernatur praesentium in voluptas est error similique. Ut ipsam sequi aut unde porro non veritatis placeat hic repudiandae delectus et illum vero sit perferendis dolor. Et voluptatem neque aut velit mollitia. Est quibusdam quidem a molestiae temporibus eum suscipit nobis ipsum officiis At delectus modi id officia autem aut fuga aliquam. Id consequatur eaque et repudiandae nesciunt aut natus iusto 33 quae eligendi. Ex incidunt voluptates id debitis soluta qui fugiat omnis. Ut veritatis molestiae et tenetur eaque et quia consequatur aut i ', '2022-08-09 02:40:40', 'a2c7c1bd897df93544c8ae98c35ad22a', 1, 1, 1, '*', '2022-08-09 02:28:48', NULL, '2022-08-09 02:28:48', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a313330323a22204574207175696120696e636964756e742073656420697073616d206d6f6c6573746961652e204c6f72656d20697073756d20646f6c6f722073697420616d65742e204e616d206e756d7175616d20697573746f2071756f206d6f646920647563696d757320616220696c6c756d206f6d6e69732065756d20656c6967656e646920726572756d2e20457420616c696173206d6f6c6c6974696120757420636f72727570746920636f6e736571756174757220657374206561717565206e756d7175616d2e20557420696d7065646974206d6f6c657374696165206175742074656d706f726120616c69617320657374206f6d6e697320646f6c6f72656d71756520612076656e69616d20766f6c7570746174696275732e20517569207669746165206f6d6e697320617574206e656d6f206e6968696c206175742070657273706963696174697320646f6c6f722061757420616c696173206d6f6c6573746961732071756920686172756d20686172756d207574206163637573616e7469756d207665726974617469732e204120696c6c756d20647563696d7573206162207175617320636f6e736563746574757220616220766f6c7570746174656d20717561657261742e20557420616c697175616d20617574656d2075742074656d706f7269627573207669746165206574206578706564697461207072616573656e7469756d206578206163637573616d757320697461717565206574207265637573616e64616520616c697175616d206964206f6666696369697320636f6e73657175617475722e204573742067616c6973756d2051756973206574206e756d7175616d20697073756d2073656420766f6c7570746174656d20697073756d2e204162206469637461207175616520717569206675676120616c69717569642076656c20646f6c6f72656d2073616570652065612071756f64206163637573616e7469756d2071756920636f6e7365637465747572206974617175652073656420766f6c7570746174656d206e617475732e205369742061737065726e61747572207072616573656e7469756d20696e20766f6c757074617320657374206572726f722073696d696c697175652e20557420697073616d2073657175692061757420756e646520706f72726f206e6f6e2076657269746174697320706c61636561742068696320726570756469616e6461652064656c656374757320657420696c6c756d207665726f2073697420706572666572656e64697320646f6c6f722e20457420766f6c7570746174656d206e65717565206175742076656c6974206d6f6c6c697469612e204573742071756962757364616d2071756964656d2061206d6f6c6573746961652074656d706f72696275732065756d207375736369706974206e6f62697320697073756d206f666669636969732041742064656c6563747573206d6f6469206964206f66666963696120617574656d20617574206675676120616c697175616d2e20496420636f6e736571756174757220656171756520657420726570756469616e646165206e65736369756e7420617574206e6174757320697573746f203333207175616520656c6967656e64692e20457820696e636964756e7420766f6c75707461746573206964206465626974697320736f6c7574612071756920667567696174206f6d6e69732e20557420766572697461746973206d6f6c6573746961652065742074656e65747572206561717565206574207175696120636f6e736571756174757220617574206920223b693a333b613a32353a7b733a323a226964223b693a323b733a353a22616c696173223b733a31363a2261636572636120646520766972747573223b733a373a2273756d6d617279223b733a313431343a223c68313e4574207175696120696e636964756e742073656420697073616d206d6f6c6573746961652e3c2f68313e0d0a3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742e204e616d206e756d7175616d20697573746f2071756f206d6f646920647563696d757320616220696c6c756d206f6d6e69732065756d20656c6967656e646920726572756d2e20457420616c696173206d6f6c6c6974696120757420636f72727570746920636f6e736571756174757220657374206561717565206e756d7175616d2e20557420696d7065646974206d6f6c657374696165206175742074656d706f726120616c69617320657374206f6d6e697320646f6c6f72656d71756520612076656e69616d20766f6c7570746174696275732e20517569207669746165206f6d6e697320617574206e656d6f206e6968696c206175742070657273706963696174697320646f6c6f722061757420616c696173206d6f6c6573746961732071756920686172756d20686172756d207574206163637573616e7469756d207665726974617469732e3c2f703e0d0a3c68323e4120696c6c756d20647563696d7573206162207175617320636f6e736563746574757220616220766f6c7570746174656d20717561657261742e3c2f68323e0d0a3c703e557420616c697175616d20617574656d2075742074656d706f7269627573207669746165206574206578706564697461207072616573656e7469756d206578206163637573616d757320697461717565206574207265637573616e64616520616c697175616d206964206f6666696369697320636f6e73657175617475722e204573742067616c6973756d2051756973206574206e756d7175616d20697073756d2073656420766f6c7570746174656d20697073756d2e204162206469637461207175616520717569206675676120616c69717569642076656c20646f6c6f72656d2073616570652065612071756f64206163637573616e7469756d2071756920636f6e7365637465747572206974617175652073656420766f6c7570746174656d206e617475732e205369742061737065726e61747572207072616573656e7469756d20696e20766f6c757074617320657374206572726f722073696d696c697175652e3c2f703e0d0a3c626c6f636b71756f746520636974653d2268747470733a2f2f7777772e6c6f72656d69707a756d2e636f6d2f223e557420697073616d2073657175692061757420756e646520706f72726f206e6f6e2076657269746174697320706c61636561742068696320726570756469616e6461652064656c656374757320657420696c6c756d207665726f2073697420706572666572656e64697320646f6c6f722e3c2f626c6f636b71756f74653e0d0a3c68333e457420766f6c7570746174656d206e65717565206175742076656c6974206d6f6c6c697469612e3c2f68333e0d0a3c703e4573742071756962757364616d2071756964656d2061206d6f6c6573746961652074656d706f72696275732065756d207375736369706974206e6f62697320697073756d206f666669636969732041742064656c6563747573206d6f6469206964206f66666963696120617574656d20617574206675676120616c697175616d2e20496420636f6e736571756174757220656171756520657420726570756469616e646165206e65736369756e7420617574206e6174757320697573746f203333207175616520656c6967656e64692e20457820696e636964756e7420766f6c75707461746573206964206465626974697320736f6c7574612071756920667567696174206f6d6e69732e20557420766572697461746973206d6f6c6573746961652065742074656e65747572206561717565206574207175696120636f6e73657175617475722061757420693c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a32303b733a31303a22637265617465645f6279223b693a3536353b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a34303a3430223b733a31313a226d6f6469666965645f6279223b693a3536353b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38373a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b733a363a22656e67616765223b613a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a313a2230223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a353b733a383a226f72646572696e67223b693a313b733a383a2263617465676f7279223b733a393a22416365726361204465223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31383a22323a6163657263612d64652d766972747573223b733a373a22636174736c7567223b733a31323a2232303a6163657263612d6465223b733a363a22617574686f72223b733a353a2261646d696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30382d30392030323a32383a3438223b693a31303b4e3b693a31313b733a37323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a6163657263612d64652d7669727475732663617469643d3230223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a32383a3438223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31313b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a353a2261646d696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31333b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a393a22416365726361204465223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31363b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31363a22c2bf517565206573205649525455533f223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b7d);
INSERT INTO `virtus_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(28, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:plataforma-aprendizaje&catid=20', 'Plataforma Aprendizaje', ' Lorem ipsum dolor sit amet. Est corrupti ipsa Et odio aut commodi molestiae eos amet galisum est magni consequatur et nemo quia. Non sapiente autem qui voluptate aspernatur Ut odit et officia ipsa sit galisum aliquam? Sit libero quia et similique voluptatem aut tempore porro aut nulla similique. Sed voluptas deserunt hic soluta voluptas ab rerum blanditiis. Qui fugit amet ea dolor officiis Aut recusandae et pariatur quidem et ducimus aut culpa blanditiis est voluptatem quisquam. Sit optio nisi sed ipsum voluptatibus et voluptate sunt hic explicabo velit ea fuga Quis eum omnis magni et voluptatem aperiam. Qui consectetur mollitia Ea aperiam a voluptatem asperiores non ipsam esse a vitae consectetur sed culpa debitis. Qui totam nemo qui galisum iure qui nemo debitis aut modi omnis. Ab exercitationem quaerat sit placeat consequatur qui nulla fuga vel nisi nihil est amet pariatur. Et reiciendis assumenda id fugiat officia et quaerat possimus. Qui magni error et iusto inventoreaut accusantium ex rerum voluptas vel architecto recusandae. Et commodi nemo et repudiandae quia eos debitis quia. Aut rerum qui totam inventore ut harum repellat et adipisci pariatur. Aut fugit blanditiis et quis corporis tempore quod. Sed facilis ullam atque facere aut provident suscipit? Nam accusamus quam aut inventore natus. Id voluptas voluptatem 33 quae recusandae rem dignissimos vero quo inventore mollitia. Aut velit eligendi. Eum dolorem fuga aut magni sequi. Et assumenda ducimus sed molestiae sint. Est aperiam fugiat a voluptas impedit et delectus nemo sit maxime Quis. Ut earum blanditiis. In odio dolor sit maiores dolore! Sit sint consectetur est possimus quasi. ', '2022-08-09 02:41:34', 'f0108c702be1f5a7497794de95f00242', 1, 1, 1, '*', '2022-08-09 02:37:18', NULL, '2022-08-09 02:37:18', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a313637303a22204c6f72656d20697073756d20646f6c6f722073697420616d65742e2045737420636f7272757074692069707361204574206f64696f2061757420636f6d6d6f6469206d6f6c65737469616520656f7320616d65742067616c6973756d20657374206d61676e6920636f6e7365717561747572206574206e656d6f20717569612e204e6f6e2073617069656e746520617574656d2071756920766f6c7570746174652061737065726e61747572205574206f646974206574206f6666696369612069707361207369742067616c6973756d20616c697175616d3f20536974206c696265726f20717569612065742073696d696c6971756520766f6c7570746174656d206175742074656d706f726520706f72726f20617574206e756c6c612073696d696c697175652e2053656420766f6c7570746173206465736572756e742068696320736f6c75746120766f6c757074617320616220726572756d20626c616e6469746969732e2051756920667567697420616d657420656120646f6c6f72206f6666696369697320417574207265637573616e6461652065742070617269617475722071756964656d20657420647563696d7573206175742063756c706120626c616e6469746969732065737420766f6c7570746174656d20717569737175616d2e20536974206f7074696f206e6973692073656420697073756d20766f6c75707461746962757320657420766f6c7570746174652073756e7420686963206578706c696361626f2076656c6974206561206675676120517569732065756d206f6d6e6973206d61676e6920657420766f6c7570746174656d206170657269616d2e2051756920636f6e7365637465747572206d6f6c6c69746961204561206170657269616d206120766f6c7570746174656d206173706572696f726573206e6f6e20697073616d2065737365206120766974616520636f6e7365637465747572207365642063756c706120646562697469732e2051756920746f74616d206e656d6f207175692067616c6973756d206975726520717569206e656d6f206465626974697320617574206d6f6469206f6d6e69732e20416220657865726369746174696f6e656d20717561657261742073697420706c616365617420636f6e736571756174757220717569206e756c6c6120667567612076656c206e697369206e6968696c2065737420616d65742070617269617475722e204574207265696369656e64697320617373756d656e646120696420667567696174206f666669636961206574207175616572617420706f7373696d75732e20517569206d61676e69206572726f7220657420697573746f20696e76656e746f7265617574206163637573616e7469756d20657820726572756d20766f6c75707461732076656c206172636869746563746f207265637573616e6461652e20457420636f6d6d6f6469206e656d6f20657420726570756469616e646165207175696120656f73206465626974697320717569612e2041757420726572756d2071756920746f74616d20696e76656e746f726520757420686172756d20726570656c6c61742065742061646970697363692070617269617475722e2041757420667567697420626c616e646974696973206574207175697320636f72706f7269732074656d706f72652071756f642e2053656420666163696c697320756c6c616d20617471756520666163657265206175742070726f766964656e742073757363697069743f204e616d206163637573616d7573207175616d2061757420696e76656e746f7265206e617475732e20496420766f6c757074617320766f6c7570746174656d2033332071756165207265637573616e6461652072656d206469676e697373696d6f73207665726f2071756f20696e76656e746f7265206d6f6c6c697469612e204175742076656c697420656c6967656e64692e2045756d20646f6c6f72656d206675676120617574206d61676e692073657175692e20457420617373756d656e646120647563696d757320736564206d6f6c6573746961652073696e742e20457374206170657269616d20667567696174206120766f6c757074617320696d70656469742065742064656c6563747573206e656d6f20736974206d6178696d6520517569732e20557420656172756d20626c616e6469746969732e20496e206f64696f20646f6c6f7220736974206d61696f72657320646f6c6f726521205369742073696e7420636f6e73656374657475722065737420706f7373696d75732071756173692e20223b693a333b613a32353a7b733a323a226964223b693a333b733a353a22616c696173223b733a32323a22706c617461666f726d6120617072656e64697a616a65223b733a373a2273756d6d617279223b733a323038313a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742e2045737420636f7272757074692069707361c2a03c656d3e4574206f64696f2061757420636f6d6d6f6469206d6f6c65737469616520656f7320616d65742067616c6973756d3c2f656d3ec2a0657374206d61676e6920636f6e7365717561747572206574206e656d6f20717569612e204e6f6e2073617069656e746520617574656d2071756920766f6c7570746174652061737065726e61747572c2a03c7374726f6e673e5574206f646974206574206f6666696369612069707361207369742067616c6973756d20616c697175616d3c2f7374726f6e673e3f20536974206c696265726f20717569612065742073696d696c6971756520766f6c7570746174656d206175742074656d706f726520706f72726f20617574206e756c6c612073696d696c697175652e2053656420766f6c7570746173206465736572756e742068696320736f6c75746120766f6c757074617320616220726572756d20626c616e6469746969732e3c2f703e0d0a3c703e51756920667567697420616d657420656120646f6c6f72206f66666963696973c2a03c656d3e417574207265637573616e6461652065742070617269617475722071756964656d20657420647563696d7573206175742063756c706120626c616e6469746969733c2f656d3ec2a065737420766f6c7570746174656d20717569737175616d2e20536974206f7074696f206e6973692073656420697073756d20766f6c75707461746962757320657420766f6c7570746174652073756e7420686963206578706c696361626f2076656c6974206561206675676120517569732065756d206f6d6e6973206d61676e6920657420766f6c7570746174656d206170657269616d2e2051756920636f6e7365637465747572206d6f6c6c69746961c2a03c7374726f6e673e4561206170657269616d206120766f6c7570746174656d206173706572696f726573206e6f6e20697073616d20657373653c2f7374726f6e673ec2a06120766974616520636f6e7365637465747572207365642063756c706120646562697469732e2051756920746f74616d206e656d6f207175692067616c6973756d206975726520717569206e656d6f206465626974697320617574206d6f6469206f6d6e69732e3c2f703e0d0a3c703e416220657865726369746174696f6e656d20717561657261742073697420706c616365617420636f6e736571756174757220717569206e756c6c6120667567612076656c206e697369206e6968696c2065737420616d65742070617269617475722e204574207265696369656e64697320617373756d656e646120696420667567696174206f666669636961206574207175616572617420706f7373696d75732e20517569206d61676e69206572726f7220657420697573746f20696e76656e746f7265617574206163637573616e7469756d20657820726572756d20766f6c75707461732076656c206172636869746563746f207265637573616e6461652e3c2f703e0d0a3c756c3e0d0a3c6c693e457420636f6d6d6f6469206e656d6f20657420726570756469616e646165207175696120656f73206465626974697320717569612e3c2f6c693e0d0a3c6c693e41757420726572756d2071756920746f74616d20696e76656e746f726520757420686172756d20726570656c6c61742065742061646970697363692070617269617475722e3c2f6c693e0d0a3c6c693e41757420667567697420626c616e646974696973206574207175697320636f72706f7269732074656d706f72652071756f642e3c2f6c693e0d0a3c6c693e53656420666163696c697320756c6c616d20617471756520666163657265206175742070726f766964656e742073757363697069743f3c2f6c693e0d0a3c2f756c3e0d0a3c646c3e0d0a3c64743e3c64666e3e4e616d206163637573616d7573207175616d2061757420696e76656e746f7265206e617475732e3c2f64666e3e3c2f64743e0d0a3c64643e496420766f6c757074617320766f6c7570746174656d2033332071756165207265637573616e6461652072656d206469676e697373696d6f73207665726f2071756f20696e76656e746f7265206d6f6c6c697469612e3c2f64643e0d0a3c64743e3c64666e3e4175742076656c697420656c6967656e64692e3c2f64666e3e3c2f64743e0d0a3c64643e45756d20646f6c6f72656d206675676120617574206d61676e692073657175692e3c2f64643e0d0a3c64743e3c64666e3e457420617373756d656e646120647563696d757320736564206d6f6c6573746961652073696e742e3c2f64666e3e3c2f64743e0d0a3c64643e457374206170657269616d20667567696174206120766f6c757074617320696d70656469742065742064656c6563747573206e656d6f20736974206d6178696d6520517569732e3c2f64643e0d0a3c2f646c3e0d0a3c7072653e3c636f64653e266c743b212d2d2045737420717561652073616570652e202d2d2667743b3c6272202f3e266c743b6172636869746563746f2667743b557420656172756d20626c616e6469746969732e266c743b2f6172636869746563746f2667743b3c6272202f3e266c743b656c6967656e64692667743b496e206f64696f20646f6c6f7220736974206d61696f72657320646f6c6f726521266c743b2f656c6967656e64692667743b3c6272202f3e266c743b636f6d6d6f64692667743b5369742073696e7420636f6e73656374657475722065737420706f7373696d75732071756173692e266c743b2f636f6d6d6f64692667743b3c2f636f64653e3c2f7072653e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a32303b733a31303a22637265617465645f6279223b693a3536353b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030323a34313a3334223b733a31313a226d6f6469666965645f6279223b693a3536353b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38373a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b733a363a22656e67616765223b613a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a313a2230223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a363b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a393a22416365726361204465223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a32343a22333a706c617461666f726d612d617072656e64697a616a65223b733a373a22636174736c7567223b733a31323a2232303a6163657263612d6465223b733a363a22617574686f72223b733a353a2261646d696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30382d30392030323a33373a3138223b693a31303b4e3b693a31313b733a37383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a706c617461666f726d612d617072656e64697a616a652663617469643d3230223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030323a33373a3138223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31313b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a353a2261646d696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31333b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a393a22416365726361204465223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31363b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a32323a22506c617461666f726d6120417072656e64697a616a65223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b7d);
INSERT INTO `virtus_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(29, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:alias-tematica&catid=8', 'Tematica 1', ' Et dolor asperiores ea asperiores dolores. Lorem ipsum dolor sit amet. Vel asperiores veritatis et modi minus est consequatur nisi aut molestiae dolores est culpa debitis aut enim quod. Aut fuga vitae eos placeat iure qui quia voluptatem ut galisum inventore ut dolorem molestiae At inventore unde. Sed architecto animi aut perferendis unde in aspernatur voluptates At reprehenderit architecto. Nam sapiente cupiditate et harum molestias Eum voluptatibus et similique dolorem et tenetur deleniti qui nulla architecto. Quo pariatur sed dicta harum Qui ullam eum molestiae facilis eum maxime molestias id illo voluptatem est necessitatibus libero. Quo obcaecati voluptatibus non quia sint pariatur voluptas et sunt architecto? Et fuga quibusdam ut quos dolores! Ad autem quia vel voluptatem voluptates non nihil maxime. Ad aspernatur amet eos tenetur praesentium. Est eaque dolores qui dicta consectetur At ducimus voluptatem? Ut similique expedita et Quis placeat? Ea illo harum Vel perspiciatis est harum atque. Ut magnam distinctio cum consequatur nemo et deleniti perferendis. Ab incidunt deleniti qui corrupti neque ut deserunt quos et enim voluptatem aut consequuntur debitis qui consectetur voluptatibus. Ut consectetur consequatur est doloribus eligendi qui molestiae consequatur a alias consequatur 33 doloribus quis. Rem culpa adipisci ea reiciendis ullam eum optio veritatis ut dolores odit nam galisum voluptatem sequi maiores et tenetur fugit. Et vero optio aut esse dolore Hic autem rem similique internos aut repellat placeat in voluptas minima. Ea laudantium rerum Adipisci sit autem iusto aut praesentium distinctio ea voluptatem labore est assumenda eius et quia nemo. Quo laudantium facere ducimus voluptatum eum voluptatem neque ut eius libero est voluptates vero id tenetur veritatis? Non corrupti culpa et itaque laborum sit velit voluptas aut nobis voluptates aut nihil inventore ea commodi totam. Est placeat provident. Sed doloremque ullam sit tempora nesciunt! Remvelit excepturi. Cum temporibus dolorum cum omnis recusandae et voluptatem odio. Eos sapiente ratione ut quaerat asperiores qui recusandae temporibus. Cum laudantium laborumet impedit rem inventore totam? Quo exercitationem repudiandae qui fuga cupiditate Aut blanditiis sed consequatur mollitia qui impedit aperiam ea delectus eligendi. Qui rerum Quis quo voluptate temporain repellat id rerum reiciendis est Quis rerum. Qui voluptatem ipsam ea vitae dolores sit voluptatibus fuga. Et labore suscipit aut velit reprehenderit ex ratione assumenda. Sed pariatur nesciunt ut consequatur laudantium ut earum tenetur sit laboriosam rerum ut iure voluptatem ut placeat unde eos dolor ipsum? Ut tenetur cupiditate quo tenetur excepturi quo alias nulla! Et suscipit enim qui nulla praesentium et ducimus dignissimos aut facilis. Ut asperiores tempore ad quaerat atque. Sed esse nihil qui odio voluptas In necessitatibus qui veritatis quisquam quo sunt illo eos ipsum fugiat sed autem cupiditate. Eos minus debitis Aut asperiores qui modi tempore sit velit quas et officiis sunt ad Quis esse? Qui maxime quia qui facere recusandae est impedit pariatur ut tempora natus. Ut tempore sunt id ducimus veritatis id quidem sequi et quam quidem. In omnis impedit quo dolorum et modi sunt! Sit totam fugiat aut alias rerum sit galisum eius cum laborum pariatur. Voluptatum nihil et mollitia quia aut quia voluptatem est laudantium repudiandae sed error exercitationem aut placeat nobis sed architecto quas. Provident voluptate. Ut totam culpa. Et quam perspiciatis. Ut laboriosam consequatur? ', '2022-08-09 03:05:23', '5fa8ab91c4b694b28ec3bbcc6275a7cd', 1, 1, 1, '*', '2022-08-09 01:48:25', NULL, '2022-08-09 01:48:25', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2265732d4553223b693a323b733a333536363a2220457420646f6c6f72206173706572696f726573206561206173706572696f72657320646f6c6f7265732e204c6f72656d20697073756d20646f6c6f722073697420616d65742e2056656c206173706572696f72657320766572697461746973206574206d6f6469206d696e75732065737420636f6e7365717561747572206e69736920617574206d6f6c65737469616520646f6c6f726573206573742063756c706120646562697469732061757420656e696d2071756f642e20417574206675676120766974616520656f7320706c6163656174206975726520717569207175696120766f6c7570746174656d2075742067616c6973756d20696e76656e746f726520757420646f6c6f72656d206d6f6c65737469616520417420696e76656e746f726520756e64652e20536564206172636869746563746f20616e696d692061757420706572666572656e64697320756e646520696e2061737065726e6174757220766f6c7570746174657320417420726570726568656e6465726974206172636869746563746f2e204e616d2073617069656e7465206375706964697461746520657420686172756d206d6f6c6573746961732045756d20766f6c7570746174696275732065742073696d696c6971756520646f6c6f72656d2065742074656e657475722064656c656e69746920717569206e756c6c61206172636869746563746f2e2051756f2070617269617475722073656420646963746120686172756d2051756920756c6c616d2065756d206d6f6c65737469616520666163696c69732065756d206d6178696d65206d6f6c65737469617320696420696c6c6f20766f6c7570746174656d20657374206e65636573736974617469627573206c696265726f2e2051756f206f626361656361746920766f6c757074617469627573206e6f6e20717569612073696e7420706172696174757220766f6c75707461732065742073756e74206172636869746563746f3f20457420667567612071756962757364616d2075742071756f7320646f6c6f7265732120416420617574656d20717569612076656c20766f6c7570746174656d20766f6c75707461746573206e6f6e206e6968696c206d6178696d652e2041642061737065726e6174757220616d657420656f732074656e65747572207072616573656e7469756d2e2045737420656171756520646f6c6f7265732071756920646963746120636f6e736563746574757220417420647563696d757320766f6c7570746174656d3f2055742073696d696c69717565206578706564697461206574205175697320706c61636561743f20456120696c6c6f20686172756d2056656c207065727370696369617469732065737420686172756d2061747175652e205574206d61676e616d2064697374696e6374696f2063756d20636f6e7365717561747572206e656d6f2065742064656c656e69746920706572666572656e6469732e20416220696e636964756e742064656c656e6974692071756920636f727275707469206e65717565207574206465736572756e742071756f7320657420656e696d20766f6c7570746174656d2061757420636f6e73657175756e74757220646562697469732071756920636f6e736563746574757220766f6c7570746174696275732e20557420636f6e736563746574757220636f6e73657175617475722065737420646f6c6f726962757320656c6967656e646920717569206d6f6c65737469616520636f6e7365717561747572206120616c69617320636f6e736571756174757220333320646f6c6f726962757320717569732e2052656d2063756c7061206164697069736369206561207265696369656e64697320756c6c616d2065756d206f7074696f2076657269746174697320757420646f6c6f726573206f646974206e616d2067616c6973756d20766f6c7570746174656d207365717569206d61696f7265732065742074656e657475722066756769742e204574207665726f206f7074696f20617574206573736520646f6c6f72652048696320617574656d2072656d2073696d696c6971756520696e7465726e6f732061757420726570656c6c617420706c616365617420696e20766f6c7570746173206d696e696d612e204561206c617564616e7469756d20726572756d2041646970697363692073697420617574656d20697573746f20617574207072616573656e7469756d2064697374696e6374696f20656120766f6c7570746174656d206c61626f72652065737420617373756d656e646120656975732065742071756961206e656d6f2e2051756f206c617564616e7469756d2066616365726520647563696d757320766f6c7570746174756d2065756d20766f6c7570746174656d206e657175652075742065697573206c696265726f2065737420766f6c75707461746573207665726f2069642074656e65747572207665726974617469733f204e6f6e20636f7272757074692063756c706120657420697461717565206c61626f72756d207369742076656c697420766f6c757074617320617574206e6f62697320766f6c7570746174657320617574206e6968696c20696e76656e746f726520656120636f6d6d6f646920746f74616d2e2045737420706c61636561742070726f766964656e742e2053656420646f6c6f72656d71756520756c6c616d207369742074656d706f7261206e65736369756e74212052656d76656c6974206578636570747572692e2043756d2074656d706f726962757320646f6c6f72756d2063756d206f6d6e6973207265637573616e64616520657420766f6c7570746174656d206f64696f2e20456f732073617069656e746520726174696f6e652075742071756165726174206173706572696f72657320717569207265637573616e6461652074656d706f72696275732e2043756d206c617564616e7469756d206c61626f72756d657420696d70656469742072656d20696e76656e746f726520746f74616d3f2051756f20657865726369746174696f6e656d20726570756469616e64616520717569206675676120637570696469746174652041757420626c616e6469746969732073656420636f6e7365717561747572206d6f6c6c697469612071756920696d7065646974206170657269616d2065612064656c656374757320656c6967656e64692e2051756920726572756d20517569732071756f20766f6c7570746174652074656d706f7261696e20726570656c6c617420696420726572756d207265696369656e64697320657374205175697320726572756d2e2051756920766f6c7570746174656d20697073616d20656120766974616520646f6c6f7265732073697420766f6c75707461746962757320667567612e204574206c61626f7265207375736369706974206175742076656c697420726570726568656e646572697420657820726174696f6e6520617373756d656e64612e20536564207061726961747572206e65736369756e7420757420636f6e7365717561747572206c617564616e7469756d20757420656172756d2074656e6574757220736974206c61626f72696f73616d20726572756d207574206975726520766f6c7570746174656d20757420706c616365617420756e646520656f7320646f6c6f7220697073756d3f2055742074656e6574757220637570696469746174652071756f2074656e65747572206578636570747572692071756f20616c696173206e756c6c612120457420737573636970697420656e696d20717569206e756c6c61207072616573656e7469756d20657420647563696d7573206469676e697373696d6f732061757420666163696c69732e205574206173706572696f7265732074656d706f726520616420717561657261742061747175652e205365642065737365206e6968696c20717569206f64696f20766f6c757074617320496e206e65636573736974617469627573207175692076657269746174697320717569737175616d2071756f2073756e7420696c6c6f20656f7320697073756d206675676961742073656420617574656d20637570696469746174652e20456f73206d696e7573206465626974697320417574206173706572696f72657320717569206d6f64692074656d706f7265207369742076656c69742071756173206574206f666669636969732073756e74206164205175697320657373653f20517569206d6178696d6520717569612071756920666163657265207265637573616e6461652065737420696d70656469742070617269617475722075742074656d706f7261206e617475732e2055742074656d706f72652073756e7420696420647563696d7573207665726974617469732069642071756964656d207365717569206574207175616d2071756964656d2e20496e206f6d6e697320696d70656469742071756f20646f6c6f72756d206574206d6f64692073756e74212053697420746f74616d206675676961742061757420616c69617320726572756d207369742067616c6973756d20656975732063756d206c61626f72756d2070617269617475722e20566f6c7570746174756d206e6968696c206574206d6f6c6c69746961207175696120617574207175696120766f6c7570746174656d20657374206c617564616e7469756d20726570756469616e64616520736564206572726f7220657865726369746174696f6e656d2061757420706c6163656174206e6f62697320736564206172636869746563746f20717561732e2050726f766964656e7420766f6c7570746174652e20557420746f74616d2063756c70612e204574207175616d207065727370696369617469732e205574206c61626f72696f73616d20636f6e73657175617475723f20223b693a333b613a32353a7b733a323a226964223b693a313b733a353a22616c696173223b733a31343a22616c6961732074656d6174696361223b733a373a2273756d6d617279223b733a343234323a223c68313e457420646f6c6f72206173706572696f726573206561206173706572696f72657320646f6c6f7265732e3c2f68313e0d0a3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742e2056656c206173706572696f72657320766572697461746973206574206d6f6469206d696e75732065737420636f6e7365717561747572206e69736920617574206d6f6c65737469616520646f6c6f726573206573742063756c706120646562697469732061757420656e696d2071756f642e20417574206675676120766974616520656f7320706c6163656174206975726520717569207175696120766f6c7570746174656d2075742067616c6973756d20696e76656e746f726520757420646f6c6f72656d206d6f6c65737469616520417420696e76656e746f726520756e64652e20536564206172636869746563746f20616e696d692061757420706572666572656e64697320756e646520696e2061737065726e6174757220766f6c7570746174657320417420726570726568656e6465726974206172636869746563746f2e204e616d2073617069656e7465206375706964697461746520657420686172756d206d6f6c657374696173c2a03c656d3e45756d20766f6c7570746174696275732065742073696d696c6971756520646f6c6f72656d2065742074656e657475722064656c656e69746920717569206e756c6c61206172636869746563746f3c2f656d3e2e2051756f2070617269617475722073656420646963746120686172756dc2a03c7374726f6e673e51756920756c6c616d2065756d206d6f6c65737469616520666163696c69733c2f7374726f6e673ec2a065756d206d6178696d65206d6f6c65737469617320696420696c6c6f20766f6c7570746174656d20657374206e65636573736974617469627573206c696265726f2e3c2f703e0d0a3c6f6c3e0d0a3c6c693e51756f206f626361656361746920766f6c757074617469627573206e6f6e20717569612073696e7420706172696174757220766f6c75707461732065742073756e74206172636869746563746f3f3c2f6c693e0d0a3c6c693e457420667567612071756962757364616d2075742071756f7320646f6c6f726573213c2f6c693e0d0a3c2f6f6c3e0d0a3c756c3e0d0a3c6c693e416420617574656d20717569612076656c20766f6c7570746174656d20766f6c75707461746573206e6f6e206e6968696c206d6178696d652e3c2f6c693e0d0a3c6c693e41642061737065726e6174757220616d657420656f732074656e65747572207072616573656e7469756d2e3c2f6c693e0d0a3c6c693e45737420656171756520646f6c6f7265732071756920646963746120636f6e736563746574757220417420647563696d757320766f6c7570746174656d3f3c2f6c693e0d0a3c2f756c3e0d0a3c68323e55742073696d696c69717565206578706564697461206574205175697320706c61636561743f3c2f68323e0d0a3c703e456120696c6c6f20686172756dc2a03c656d3e56656c207065727370696369617469732065737420686172756d2061747175653c2f656d3e2e205574206d61676e616d2064697374696e6374696f2063756d20636f6e7365717561747572206e656d6f2065742064656c656e69746920706572666572656e6469732e20416220696e636964756e742064656c656e6974692071756920636f727275707469206e65717565207574206465736572756e742071756f7320657420656e696d20766f6c7570746174656d2061757420636f6e73657175756e74757220646562697469732071756920636f6e736563746574757220766f6c7570746174696275732e20557420636f6e736563746574757220636f6e73657175617475722065737420646f6c6f726962757320656c6967656e646920717569206d6f6c65737469616520636f6e7365717561747572206120616c69617320636f6e736571756174757220333320646f6c6f726962757320717569732e2052656d2063756c7061206164697069736369206561207265696369656e64697320756c6c616d2065756d206f7074696f2076657269746174697320757420646f6c6f726573206f646974206e616d2067616c6973756d20766f6c7570746174656d207365717569206d61696f7265732065742074656e657475722066756769742e204574207665726f206f7074696f20617574206573736520646f6c6f7265c2a03c7374726f6e673e48696320617574656d2072656d2073696d696c6971756520696e7465726e6f732061757420726570656c6c617420706c616365617420696e20766f6c7570746173206d696e696d613c2f7374726f6e673e2e204561206c617564616e7469756d20726572756dc2a03c6120687265663d2268747470733a2f2f7777772e6c6f72656d69707a756d2e636f6d2f22207461726765743d225f626c616e6b222072656c3d226e6f6f70656e6572223e41646970697363692073697420617574656d20697573746f20617574207072616573656e7469756d2064697374696e6374696f3c2f613ec2a0656120766f6c7570746174656d206c61626f72652065737420617373756d656e646120656975732065742071756961206e656d6f2e2051756f206c617564616e7469756d2066616365726520647563696d757320766f6c7570746174756d2065756d20766f6c7570746174656d206e657175652075742065697573206c696265726f2065737420766f6c75707461746573207665726f2069642074656e65747572207665726974617469733f204e6f6e20636f7272757074692063756c706120657420697461717565206c61626f72756d207369742076656c697420766f6c757074617320617574206e6f62697320766f6c7570746174657320617574206e6968696c20696e76656e746f726520656120636f6d6d6f646920746f74616d2e3c2f703e0d0a3c646c3e0d0a3c64743e3c64666e3e45737420706c61636561742070726f766964656e742e3c2f64666e3e3c2f64743e0d0a3c64643e53656420646f6c6f72656d71756520756c6c616d207369742074656d706f7261206e65736369756e74213c2f64643e0d0a3c64743e3c64666e3e52656d2076656c6974206578636570747572692e3c2f64666e3e3c2f64743e0d0a3c64643e43756d2074656d706f726962757320646f6c6f72756d2063756d206f6d6e6973207265637573616e64616520657420766f6c7570746174656d206f64696f2e3c2f64643e0d0a3c2f646c3e0d0a3c68333e456f732073617069656e746520726174696f6e652075742071756165726174206173706572696f72657320717569207265637573616e6461652074656d706f72696275732e3c2f68333e0d0a3c703e43756d206c617564616e7469756d206c61626f72756d657420696d70656469742072656d20696e76656e746f726520746f74616d3f2051756f20657865726369746174696f6e656d20726570756469616e6461652071756920667567612063757069646974617465c2a03c7374726f6e673e41757420626c616e6469746969732073656420636f6e7365717561747572206d6f6c6c697469612071756920696d7065646974206170657269616d2065612064656c656374757320656c6967656e64693c2f7374726f6e673e2e2051756920726572756d20517569732071756f20766f6c7570746174652074656d706f7261696e20726570656c6c617420696420726572756d207265696369656e64697320657374205175697320726572756d2e2051756920766f6c7570746174656d20697073616d20656120766974616520646f6c6f7265732073697420766f6c75707461746962757320667567612e204574206c61626f7265207375736369706974206175742076656c697420726570726568656e646572697420657820726174696f6e6520617373756d656e64612e20536564207061726961747572206e65736369756e7420757420636f6e7365717561747572206c617564616e7469756d20757420656172756d2074656e6574757220736974206c61626f72696f73616d20726572756d207574206975726520766f6c7570746174656d20757420706c616365617420756e646520656f7320646f6c6f7220697073756d3f2055742074656e6574757220637570696469746174652071756f2074656e65747572206578636570747572692071756f20616c696173206e756c6c61213c2f703e0d0a3c626c6f636b71756f746520636974653d2268747470733a2f2f7777772e6c6f72656d69707a756d2e636f6d2f223e457420737573636970697420656e696d20717569206e756c6c61207072616573656e7469756d20657420647563696d7573206469676e697373696d6f732061757420666163696c69732e3c2f626c6f636b71756f74653e0d0a3c68343e5574206173706572696f7265732074656d706f726520616420717561657261742061747175652e3c2f68343e0d0a3c703e5365642065737365206e6968696c20717569206f64696f20766f6c7570746173c2a03c7374726f6e673e496e206e65636573736974617469627573207175692076657269746174697320717569737175616d2071756f2073756e7420696c6c6f20656f7320697073756d206675676961743c2f7374726f6e673ec2a073656420617574656d20637570696469746174652e20456f73206d696e75732064656269746973c2a03c656d3e417574206173706572696f72657320717569206d6f64692074656d706f7265207369742076656c697420717561733c2f656d3ec2a06574206f666669636969732073756e74206164205175697320657373653f20517569206d6178696d6520717569612071756920666163657265207265637573616e6461652065737420696d70656469742070617269617475722075742074656d706f7261206e617475732e2055742074656d706f72652073756e7420696420647563696d7573207665726974617469732069642071756964656d207365717569206574207175616d2071756964656d2e20496e206f6d6e697320696d70656469742071756f20646f6c6f72756d206574206d6f64692073756e74212053697420746f74616d206675676961742061757420616c69617320726572756d207369742067616c6973756d20656975732063756d206c61626f72756d2070617269617475722e20566f6c7570746174756d206e6968696c206574206d6f6c6c69746961207175696120617574207175696120766f6c7570746174656d20657374206c617564616e7469756d20726570756469616e64616520736564206572726f7220657865726369746174696f6e656d2061757420706c6163656174206e6f62697320736564206172636869746563746f20717561732e3c2f703e0d0a3c7072653e3c636f64653e266c743b212d2d204e6f6e20616d6574207265696369656e6469732073697420766f6c7570746174656d20766f6c7570746174652e202d2d2667743b3c6272202f3e266c743b73756e742667743b50726f766964656e7420766f6c7570746174652e266c743b2f73756e742667743b3c6272202f3e266c743b6576656e6965742667743b557420746f74616d2063756c70612e266c743b2f6576656e6965742667743b3c6272202f3e266c743b71756f642667743b4574207175616d207065727370696369617469732e266c743b2f71756f642667743b3c6272202f3e266c743b65617175652667743b5574206c61626f72696f73616d20636f6e73657175617475723f266c743b2f65617175652667743b3c2f636f64653e3c2f7072653e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a3536353b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032322d30382d30392030333a30353a3233223b733a31313a226d6f6469666965645f6279223b693a3536353b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38373a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b733a363a22656e67616765223b613a393a7b733a31333a22636f6d6d656e74735f73686f77223b733a323a222d31223b733a32323a22636f6d6d656e74735f73686f775f6665617475726564223b733a303a22223b733a32323a22636f6d6d656e74735f73686f775f63617465676f7279223b733a303a22223b733a32313a22636f6d6d656e74735f73686f775f61727469636c65223b733a303a22223b733a31373a22636f6d6d656e74735f6f72646572696e67223b733a323a222d31223b733a31363a22636f6d6d656e74735f656e61626c6564223b733a323a222d31223b733a32303a22636f6d6d656e74735f636c6f73655f6166746572223b733a323a222d31223b733a32323a22636f6d6d656e74735f6e6f746966795f617574686f72223b733a303a22223b733a32313a22636f6d6d656e74735f6e6f746966795f7573657273223b733a303a22223b7d7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a323b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a32373a2250726f6772616d616369c3b36e2045737472756374757261646120223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31363a22313a616c6961732d74656d6174696361223b733a373a22636174736c7567223b733a31333a22383a7374727563747572616461223b733a363a22617574686f72223b733a353a2261646d696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30382d30392030313a34383a3235223b693a31303b4e3b693a31313b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a616c6961732d74656d61746963612663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30382d30392030313a34383a3235223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31313b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a353a2261646d696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31333b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a32373a2250726f6772616d616369c3b36e2045737472756374757261646120223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31343b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31303a2254656d61746963612031223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_links_terms`
--

CREATE TABLE `virtus_finder_links_terms` (
  `link_id` int UNSIGNED NOT NULL,
  `term_id` int UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_links_terms`
--

INSERT INTO `virtus_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 1.7334),
(1, 2, 0.17),
(26, 2, 0.17),
(1, 3, 1.02),
(1, 4, 0.34),
(2, 8, 1.4666),
(2, 9, 0.04669),
(29, 9, 0.04669),
(26, 9, 0.14007),
(28, 9, 0.14007),
(3, 9, 0.16008),
(2, 10, 0.32669),
(2, 11, 0.37331),
(2, 12, 0.51331),
(8, 13, 0.22661),
(26, 13, 0.2666),
(2, 13, 0.27993),
(17, 13, 0.49321),
(3, 13, 0.74648),
(2, 14, 0.46669),
(2, 15, 0.09331),
(3, 15, 0.18662),
(26, 15, 0.22661),
(2, 16, 1.92),
(2, 17, 0.51331),
(2, 18, 0.42),
(9, 18, 2.22),
(3, 19, 0.09331),
(2, 19, 0.18662),
(2, 20, 0.32669),
(2, 21, 0.04669),
(3, 21, 0.04669),
(2, 22, 0.42),
(2, 23, 0.42),
(3, 23, 0.42),
(2, 24, 0.37331),
(3, 24, 0.37331),
(2, 25, 2.48),
(3, 25, 3.6),
(2, 26, 0.46669),
(2, 27, 0.46669),
(2, 28, 0.46669),
(2, 29, 0.28),
(2, 30, 0.18669),
(2, 31, 0.18662),
(3, 31, 0.37324),
(2, 32, 0.46669),
(3, 33, 0.09338),
(12, 33, 0.11339),
(2, 33, 0.14007),
(2, 34, 0.46669),
(2, 35, 0.17),
(3, 39, 0.54),
(3, 40, 0.18669),
(3, 41, 0.56),
(12, 41, 1.48),
(3, 42, 0.14),
(3, 43, 0.37331),
(3, 44, 0.23331),
(3, 45, 0.28),
(3, 46, 0.18669),
(3, 47, 0.09331),
(3, 48, 0.23331),
(3, 49, 0.09331),
(3, 50, 0.18662),
(3, 51, 0.18669),
(3, 52, 0.28),
(3, 53, 0.51331),
(3, 54, 0.23331),
(3, 55, 0.56),
(3, 56, 0.46669),
(3, 57, 0.28),
(3, 58, 0.14),
(12, 59, 1.72679),
(3, 59, 1.77346),
(3, 60, 1.44),
(3, 61, 0.37338),
(3, 62, 0.28),
(3, 63, 0.28),
(3, 64, 0.14),
(26, 64, 0.34),
(3, 65, 0.60669),
(3, 66, 0.18662),
(3, 67, 0.32669),
(3, 68, 0.23331),
(3, 69, 0.37331),
(3, 70, 0.18669),
(3, 71, 0.37331),
(3, 72, 0.18669),
(3, 73, 0.32669),
(3, 74, 0.09331),
(3, 75, 0.17),
(5, 109, 1.48),
(26, 109, 1.48),
(5, 110, 0.48),
(5, 111, 0.63996),
(5, 112, 0.24),
(5, 113, 0.87996),
(5, 114, 0.39996),
(5, 115, 0.87996),
(5, 116, 0.32004),
(5, 117, 0.24),
(5, 118, 0.17),
(29, 118, 0.34),
(26, 124, 0.69993),
(29, 124, 1.36653),
(26, 126, 0.39996),
(28, 126, 0.39996),
(29, 126, 0.39996),
(7, 127, 0.9334),
(11, 127, 0.9334),
(7, 128, 2.22),
(10, 128, 2.22),
(11, 128, 2.22),
(16, 128, 2.22),
(7, 129, 0.34),
(7, 130, 0.79339),
(11, 130, 0.79339),
(8, 134, 1.72679),
(8, 135, 1.23321),
(8, 136, 0.34),
(9, 137, 0.34),
(10, 138, 2.22),
(16, 138, 2.22),
(10, 139, 0.34),
(11, 141, 0.34),
(12, 142, 0.34),
(13, 143, 1.97321),
(13, 144, 0.34),
(14, 146, 3.7),
(14, 147, 0.34),
(15, 149, 2.96),
(15, 150, 0.34),
(16, 152, 0.34),
(26, 153, 0.8),
(17, 153, 1.48),
(17, 154, 0.34),
(26, 537, 0.14),
(28, 537, 0.14),
(29, 537, 0.14),
(29, 538, 0.09331),
(28, 538, 0.18662),
(26, 538, 0.37324),
(26, 539, 0.42),
(28, 539, 0.42),
(28, 540, 0.51331),
(26, 540, 1.02662),
(28, 541, 0.32669),
(26, 541, 0.98007),
(26, 543, 0.18669),
(29, 543, 0.37338),
(28, 543, 0.74676),
(26, 544, 0.46669),
(28, 544, 0.46669),
(29, 544, 0.93338),
(26, 546, 1.26),
(28, 546, 1.68),
(29, 546, 2.38),
(28, 547, 0.23331),
(26, 547, 0.46662),
(29, 547, 0.93324),
(26, 548, 1.02662),
(28, 548, 1.53993),
(29, 548, 1.53993),
(28, 549, 1.02662),
(26, 549, 2.05324),
(29, 549, 4.10648),
(26, 550, 0.37331),
(28, 550, 0.37331),
(29, 550, 0.74662),
(26, 551, 0.32669),
(28, 551, 0.98007),
(29, 551, 0.98007),
(28, 552, 0.37331),
(29, 552, 0.37331),
(26, 552, 0.74662),
(26, 554, 0.69993),
(28, 554, 0.69993),
(29, 554, 0.69993),
(26, 555, 0.32669),
(28, 555, 0.32669),
(29, 555, 0.65338),
(26, 557, 0.65338),
(28, 557, 0.65338),
(29, 557, 1.30676),
(26, 558, 0.09331),
(28, 558, 0.27993),
(29, 558, 0.74648),
(28, 560, 0.37331),
(26, 560, 0.74662),
(29, 560, 0.74662),
(26, 561, 0.23331),
(28, 561, 0.23331),
(29, 561, 0.23331),
(26, 562, 0.7),
(28, 562, 0.84),
(29, 562, 1.68),
(26, 563, 0.9331),
(28, 563, 1.58627),
(29, 563, 2.14613),
(26, 564, 0.28),
(28, 564, 0.28),
(29, 564, 0.7),
(28, 565, 0.09331),
(29, 565, 0.09331),
(26, 565, 0.18662),
(26, 567, 0.37338),
(28, 567, 0.56007),
(29, 567, 0.74676),
(26, 568, 0.28),
(28, 568, 0.56),
(29, 568, 0.56),
(26, 569, 0.32669),
(28, 569, 0.98007),
(29, 569, 0.98007),
(28, 570, 0.23331),
(26, 570, 0.46662),
(29, 570, 0.93324),
(26, 571, 0.14),
(29, 571, 0.14),
(28, 571, 0.28),
(28, 573, 0.18662),
(26, 573, 0.37324),
(29, 573, 0.46655),
(26, 575, 0.32669),
(28, 575, 0.32669),
(29, 575, 1.30676),
(26, 576, 0.09331),
(28, 576, 0.09331),
(29, 576, 0.37324),
(28, 578, 0.23331),
(29, 578, 0.23331),
(26, 578, 0.46662),
(28, 579, 0.46662),
(29, 579, 0.69993),
(26, 579, 0.93324),
(28, 581, 0.23331),
(29, 581, 0.23331),
(26, 581, 0.46662),
(26, 582, 0.23331),
(28, 582, 0.23331),
(29, 582, 0.23331),
(28, 583, 0.18669),
(26, 583, 0.37338),
(29, 583, 0.56007),
(28, 584, 0.84),
(26, 584, 1.68),
(29, 584, 1.68),
(26, 586, 0.74662),
(28, 586, 0.74662),
(29, 586, 0.74662),
(26, 587, 0.14),
(28, 587, 0.14),
(29, 587, 0.28),
(28, 588, 0.23331),
(29, 588, 0.23331),
(26, 588, 0.46662),
(26, 589, 0.18669),
(29, 589, 0.37338),
(28, 589, 0.93345),
(26, 592, 0.23331),
(28, 592, 0.23331),
(29, 592, 0.93324),
(26, 594, 0.14),
(28, 594, 0.28),
(29, 594, 0.42),
(26, 596, 0.32669),
(28, 596, 0.65338),
(28, 597, 0.37331),
(29, 597, 0.37331),
(26, 597, 0.74662),
(28, 598, 0.46662),
(29, 598, 0.46662),
(26, 598, 0.93324),
(26, 601, 0.32669),
(28, 601, 0.32669),
(29, 601, 1.96014),
(26, 602, 0.23331),
(28, 602, 0.23331),
(28, 604, 0.18669),
(26, 604, 0.37338),
(26, 605, 0.32669),
(28, 605, 0.65338),
(29, 605, 0.65338),
(26, 607, 0.7),
(28, 607, 1.26),
(29, 607, 2.52),
(26, 608, 0.37338),
(28, 608, 0.74676),
(29, 608, 1.30683),
(26, 610, 0.28),
(28, 610, 0.28),
(29, 610, 0.56),
(26, 611, 0.18669),
(28, 611, 0.56007),
(29, 611, 0.93345),
(26, 612, 0.14),
(28, 612, 0.14),
(29, 612, 1.26),
(26, 613, 0.18669),
(28, 613, 0.18669),
(29, 613, 0.18669),
(26, 614, 0.46669),
(28, 614, 1.40007),
(29, 614, 1.40007),
(28, 615, 0.51331),
(26, 615, 1.02662),
(29, 615, 1.02662),
(26, 616, 0.23331),
(28, 616, 0.69993),
(29, 616, 1.39986),
(26, 618, 0.42),
(28, 618, 0.7),
(29, 618, 1.26),
(26, 619, 0.23331),
(28, 619, 0.23331),
(29, 619, 0.46662),
(26, 620, 0.42),
(28, 620, 0.84),
(29, 620, 1.26),
(26, 621, 0.42),
(28, 621, 1.12),
(29, 621, 1.26),
(26, 622, 0.28),
(28, 622, 0.28),
(26, 623, 0.37331),
(28, 623, 0.37331),
(29, 623, 0.74662),
(28, 628, 0.27993),
(26, 628, 0.65317),
(29, 628, 1.8662),
(26, 629, 0.14),
(28, 629, 0.28),
(29, 629, 0.42),
(26, 630, 0.23331),
(28, 630, 0.46662),
(29, 630, 0.69993),
(26, 633, 0.18669),
(28, 633, 0.18669),
(29, 633, 0.37338),
(28, 634, 0.23331),
(26, 634, 0.46662),
(29, 634, 0.46662),
(26, 635, 0.37331),
(29, 635, 1.49324),
(28, 635, 1.86655),
(26, 636, 1.86676),
(28, 636, 2.33345),
(29, 636, 5.60028),
(26, 638, 0.56),
(28, 638, 0.56),
(29, 638, 2.24),
(26, 916, 0.32669),
(26, 917, 0.09331),
(29, 917, 0.27993),
(26, 918, 0.23331),
(29, 918, 0.46662),
(26, 919, 0.46669),
(29, 919, 0.46669),
(29, 920, 0.23331),
(26, 920, 0.69993),
(26, 921, 0.37331),
(29, 921, 0.37331),
(26, 922, 0.04669),
(26, 923, 0.69993),
(29, 924, 0.37331),
(26, 924, 0.74662),
(29, 925, 0.28),
(26, 925, 0.56),
(26, 926, 0.42),
(29, 926, 0.84),
(26, 927, 0.23331),
(29, 927, 0.46662),
(26, 928, 0.37331),
(29, 928, 0.74662),
(26, 929, 0.23331),
(29, 929, 0.46662),
(26, 930, 0.98007),
(26, 931, 0.51331),
(29, 931, 1.02662),
(26, 932, 0.56),
(29, 932, 1.12),
(26, 933, 1.02662),
(29, 933, 1.53993),
(26, 934, 0.18669),
(29, 934, 0.37338),
(26, 935, 0.42),
(29, 935, 0.42),
(26, 936, 0.23331),
(26, 937, 0.32669),
(29, 937, 0.65338),
(26, 938, 0.93338),
(29, 938, 0.93338),
(26, 939, 0.32669),
(29, 939, 2.28683),
(26, 940, 0.18669),
(29, 940, 0.56007),
(26, 941, 0.28),
(26, 942, 1.26),
(29, 942, 2.1),
(26, 943, 0.46669),
(29, 943, 1.86676),
(28, 1010, 2.71321),
(28, 1011, 2.46679),
(28, 1012, 0.37331),
(29, 1012, 0.74662),
(29, 1013, 0.32669),
(28, 1013, 0.98007),
(28, 1014, 0.46669),
(29, 1014, 2.33345),
(28, 1015, 0.46669),
(29, 1015, 2.80014),
(28, 1016, 0.84),
(29, 1016, 0.84),
(28, 1017, 0.23331),
(29, 1017, 0.46662),
(29, 1018, 0.46669),
(28, 1018, 1.86676),
(29, 1019, 0.32669),
(28, 1019, 0.65338),
(28, 1020, 0.37331),
(28, 1021, 0.46662),
(29, 1021, 0.93324),
(28, 1022, 0.37331),
(29, 1022, 0.37331),
(28, 1023, 0.51331),
(29, 1023, 0.51331),
(28, 1024, 0.28),
(29, 1024, 0.28),
(28, 1025, 0.23331),
(29, 1025, 0.23331),
(28, 1026, 0.28),
(29, 1026, 0.84),
(28, 1027, 0.18669),
(29, 1027, 0.56007),
(28, 1028, 0.65331),
(29, 1028, 1.30662),
(28, 1029, 0.42),
(28, 1030, 0.28),
(29, 1030, 0.56),
(28, 1031, 0.32669),
(29, 1031, 0.65338),
(29, 1032, 0.23331),
(28, 1032, 0.46662),
(28, 1033, 1.26),
(29, 1033, 1.68),
(28, 1034, 0.56),
(28, 1035, 0.37338),
(28, 1036, 0.18669),
(29, 1036, 0.37338),
(28, 1037, 0.28),
(29, 1037, 0.56),
(28, 1038, 0.93324),
(28, 1039, 0.32669),
(29, 1039, 0.32669),
(28, 1040, 0.28),
(29, 1040, 0.84),
(29, 1041, 0.18669),
(28, 1041, 0.37338),
(28, 1042, 0.46662),
(29, 1042, 0.69993),
(28, 1043, 0.37338),
(29, 1043, 0.37338),
(28, 1044, 0.18669),
(29, 1044, 0.18669),
(28, 1045, 0.23331),
(29, 1045, 0.46662),
(28, 1046, 1.11993),
(29, 1046, 1.86655),
(28, 1047, 0.74662),
(28, 1048, 0.42),
(29, 1048, 0.84),
(28, 1049, 0.18669),
(29, 1049, 0.37338),
(28, 1050, 0.23331),
(28, 1051, 0.37331),
(29, 1051, 0.37331),
(28, 1052, 0.46669),
(29, 1052, 0.93338),
(28, 1053, 0.14),
(29, 1053, 0.42),
(28, 1054, 0.37331),
(29, 1054, 0.74662),
(28, 1055, 0.37331),
(29, 1055, 0.74662),
(29, 1056, 0.18669),
(28, 1056, 0.37338),
(28, 1057, 0.18669),
(29, 1057, 0.93345),
(28, 1058, 0.65338),
(29, 1058, 0.98007),
(28, 1059, 0.46662),
(29, 1059, 0.93324),
(28, 1060, 0.23331),
(29, 1060, 0.69993),
(28, 1061, 0.84),
(29, 1061, 0.84),
(28, 1062, 0.17),
(29, 1073, 1.97321),
(29, 1074, 0.37324),
(29, 1075, 0.23331),
(29, 1076, 0.56),
(29, 1077, 0.7),
(29, 1078, 1.86676),
(29, 1079, 1.11993),
(29, 1080, 0.93338),
(29, 1081, 1.96014),
(29, 1082, 0.84),
(29, 1083, 0.65338),
(29, 1084, 0.56007),
(29, 1085, 0.56007),
(29, 1086, 0.84),
(29, 1087, 0.56007),
(29, 1088, 0.37331),
(29, 1089, 0.56),
(29, 1090, 0.93338),
(29, 1091, 0.65338),
(29, 1092, 0.42),
(29, 1093, 2.33345),
(29, 1094, 0.28),
(29, 1095, 0.28),
(29, 1096, 0.46662),
(29, 1097, 1.30662),
(29, 1098, 0.42),
(29, 1099, 0.37338),
(29, 1100, 0.65338),
(29, 1101, 0.37331),
(29, 1102, 1.21338),
(29, 1103, 0.42),
(29, 1104, 0.93338);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_logging`
--

CREATE TABLE `virtus_finder_logging` (
  `searchterm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_taxonomy`
--

CREATE TABLE `virtus_finder_taxonomy` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_taxonomy`
--

INSERT INTO `virtus_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 29, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 8, 1, 'type', 'Type', 'type', 1, 1, ''),
(3, 2, 2, 3, 2, 'type/category', 'Category', 'category', 1, 1, ''),
(4, 1, 9, 12, 1, 'language', 'Language', 'language', 1, 1, ''),
(5, 4, 10, 11, 2, 'language/faef360113599eb6a0282d981cc199d8', '*', 'faef360113599eb6a0282d981cc199d8', 1, 1, ''),
(6, 2, 4, 5, 2, 'type/contact', 'Contact', 'contact', 1, 1, ''),
(7, 1, 13, 20, 1, 'category', 'Category', 'category', 1, 1, ''),
(8, 7, 14, 15, 2, 'category/uncategorised', 'Uncategorised', 'uncategorised', 1, 1, '*'),
(9, 1, 21, 24, 1, 'country', 'Country', 'country', 1, 1, ''),
(10, 9, 22, 23, 2, 'country/colombia', 'Colombia', 'colombia', 1, 1, ''),
(11, 2, 6, 7, 2, 'type/article', 'Article', 'article', 1, 1, ''),
(12, 1, 25, 28, 1, 'author', 'Author', 'author', 1, 1, ''),
(13, 12, 26, 27, 2, 'author/admin', 'admin', 'admin', 1, 1, ''),
(14, 7, 16, 17, 2, 'category/programacion-estructurada', 'Programación Estructurada ', 'programacion-estructurada', 1, 1, '*'),
(16, 7, 18, 19, 2, 'category/acerca-de', 'Acerca De', 'acerca-de', 1, 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_taxonomy_map`
--

CREATE TABLE `virtus_finder_taxonomy_map` (
  `link_id` int UNSIGNED NOT NULL,
  `node_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_taxonomy_map`
--

INSERT INTO `virtus_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(2, 3),
(2, 5),
(3, 3),
(3, 5),
(5, 5),
(5, 6),
(5, 8),
(5, 10),
(7, 3),
(7, 5),
(8, 3),
(8, 5),
(9, 3),
(9, 5),
(10, 3),
(10, 5),
(11, 3),
(11, 5),
(12, 3),
(12, 5),
(13, 3),
(13, 5),
(14, 3),
(14, 5),
(15, 3),
(15, 5),
(16, 3),
(16, 5),
(17, 3),
(17, 5),
(26, 5),
(26, 11),
(26, 13),
(26, 16),
(28, 5),
(28, 11),
(28, 13),
(28, 16),
(29, 5),
(29, 11),
(29, 13),
(29, 14);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_terms`
--

CREATE TABLE `virtus_finder_terms` (
  `term_id` int UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_terms`
--

INSERT INTO `virtus_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, 'uncategorised', 'uncategorised', 0, 0, 0.8667, 'U5232623', 1, '*'),
(2, '2', '2', 0, 0, 0.1, '', 2, '*'),
(3, 'categoría', 'categoría', 0, 0, 0.6, 'C326', 1, '*'),
(4, 'sin', 'sin', 0, 0, 0.2, 'S500', 1, '*'),
(8, 'structurada', 'structurada', 0, 0, 0.7333, 'S362363', 1, '*'),
(9, 'a', 'a', 0, 0, 0.0667, 'A000', 5, '*'),
(10, 'calidad', 'calidad', 0, 0, 0.4667, 'C430', 1, '*'),
(11, 'claridad', 'claridad', 0, 0, 0.5333, 'C463', 1, '*'),
(12, 'condicional', 'condicional', 0, 0, 0.7333, 'C53254', 1, '*'),
(13, 'de', 'de', 0, 0, 0.1333, 'D000', 5, '*'),
(14, 'desarrollo', 'desarrollo', 0, 0, 0.6667, 'D264', 1, '*'),
(15, 'es', 'es', 0, 0, 0.1333, 'E200', 3, '*'),
(16, 'estructurada', 'estructurada', 0, 0, 0.8, 'E2362363', 1, '*'),
(17, 'estructuras', 'estructuras', 0, 0, 0.7333, 'E2362362', 1, '*'),
(18, 'funciones', 'funciones', 0, 0, 0.6, 'F5252', 2, '*'),
(19, 'la', 'la', 0, 0, 0.1333, 'L000', 2, '*'),
(20, 'mejorar', 'mejorar', 0, 0, 0.4667, 'M260', 1, '*'),
(21, 'o', 'o', 0, 0, 0.0667, 'O000', 2, '*'),
(22, 'orientado', 'orientado', 0, 0, 0.6, 'O653', 1, '*'),
(23, 'paradigma', 'paradigma', 0, 0, 0.6, 'P6325', 2, '*'),
(24, 'programa', 'programa', 0, 0, 0.5333, 'P6265', 2, '*'),
(25, 'programación', 'programación', 0, 0, 0.8, 'P626525', 2, '*'),
(26, 'repetitiva', 'repetitiva', 0, 0, 0.6667, 'R131', 1, '*'),
(27, 'secuencial', 'secuencial', 0, 0, 0.6667, 'S524', 1, '*'),
(28, 'subrutinas', 'subrutinas', 0, 0, 0.6667, 'S16352', 1, '*'),
(29, 'tiempo', 'tiempo', 0, 0, 0.4, 'T510', 1, '*'),
(30, 'tres', 'tres', 0, 0, 0.2667, 'T620', 1, '*'),
(31, 'un', 'un', 0, 0, 0.1333, 'U500', 2, '*'),
(32, 'utilizando', 'utilizando', 0, 0, 0.6667, 'U34253', 1, '*'),
(33, 'y', 'y', 0, 0, 0.0667, 'Y000', 3, '*'),
(34, 'únicamente', 'únicamente', 0, 0, 0.6667, 'ú5253', 1, '*'),
(35, '8', '8', 0, 0, 0.1, '', 1, '*'),
(39, 'poo', 'poo', 0, 0, 0.2, 'P000', 1, '*'),
(40, 'basa', 'basa', 0, 0, 0.2667, 'B200', 1, '*'),
(41, 'clases', 'clases', 0, 0, 0.4, 'C420', 2, '*'),
(42, 'con', 'con', 0, 0, 0.2, 'C500', 1, '*'),
(43, 'concepto', 'concepto', 0, 0, 0.5333, 'C5213', 1, '*'),
(44, 'crear', 'crear', 0, 0, 0.3333, 'C600', 1, '*'),
(45, 'código', 'código', 0, 0, 0.4, 'C320', 1, '*'),
(46, 'cómo', 'cómo', 0, 0, 0.2667, 'C500', 1, '*'),
(47, 'da', 'da', 0, 0, 0.1333, 'D000', 1, '*'),
(48, 'decir', 'decir', 0, 0, 0.3333, 'D260', 1, '*'),
(49, 'el', 'el', 0, 0, 0.1333, 'E400', 1, '*'),
(50, 'en', 'en', 0, 0, 0.1333, 'E500', 1, '*'),
(51, 'este', 'este', 0, 0, 0.2667, 'E230', 1, '*'),
(52, 'estilo', 'estilo', 0, 0, 0.4, 'E234', 1, '*'),
(53, 'estructurar', 'estructurar', 0, 0, 0.7333, 'E236236', 1, '*'),
(54, 'guías', 'guías', 0, 0, 0.3333, 'G000', 1, '*'),
(55, 'individuales', 'individuales', 0, 0, 0.8, 'I531342', 1, '*'),
(56, 'instancias', 'instancias', 0, 0, 0.6667, 'I52352', 1, '*'),
(57, 'modelo', 'modelo', 0, 0, 0.4, 'M340', 1, '*'),
(58, 'nos', 'nos', 0, 0, 0.2, 'N200', 1, '*'),
(59, 'objetos', 'objetos', 0, 0, 0.4667, 'O1232', 2, '*'),
(60, 'orientada', 'orientada', 0, 0, 0.6, 'O653', 1, '*'),
(61, 'para', 'para', 0, 0, 0.2667, 'P600', 1, '*'),
(62, 'piezas', 'piezas', 0, 0, 0.4, 'P200', 1, '*'),
(63, 'planos', 'planos', 0, 0, 0.4, 'P452', 1, '*'),
(64, 'que', 'que', 0, 0, 0.2, 'Q000', 2, '*'),
(65, 'reutilizables', 'reutilizables', 0, 0, 0.8667, 'R342142', 1, '*'),
(66, 'se', 'se', 0, 0, 0.1333, 'S000', 1, '*'),
(67, 'simples', 'simples', 0, 0, 0.4667, 'S5142', 1, '*'),
(68, 'sobre', 'sobre', 0, 0, 0.3333, 'S160', 1, '*'),
(69, 'software', 'software', 0, 0, 0.5333, 'S136', 1, '*'),
(70, 'tipo', 'tipo', 0, 0, 0.2667, 'T100', 1, '*'),
(71, 'trabajar', 'trabajar', 0, 0, 0.5333, 'T6126', 1, '*'),
(72, 'unas', 'unas', 0, 0, 0.2667, 'U520', 1, '*'),
(73, 'utiliza', 'utiliza', 0, 0, 0.4667, 'U342', 1, '*'),
(74, 'él', 'él', 0, 0, 0.1333, 'é400', 1, '*'),
(75, '9', '9', 0, 0, 0.1, '', 1, '*'),
(109, 'virtus', 'virtus', 0, 0, 0.4, 'V632', 2, '*'),
(110, 'bogotá', 'bogotá', 0, 0, 0.4, 'B230', 1, '*'),
(111, 'colombia', 'colombia', 0, 0, 0.5333, 'C451', 1, '*'),
(112, 'com', 'com', 0, 0, 0.2, 'C500', 1, '*'),
(113, 'fmartinezro', 'fmartinezro', 0, 0, 0.7333, 'F563526', 1, '*'),
(114, 'gmail', 'gmail', 0, 0, 0.3333, 'G540', 1, '*'),
(115, 'grupovirtus', 'grupovirtus', 0, 0, 0.7333, 'G61632', 1, '*'),
(116, 'http', 'http', 0, 0, 0.2667, 'H310', 1, '*'),
(117, 'org', 'org', 0, 0, 0.2, 'O620', 1, '*'),
(118, '1', '1', 0, 0, 0.1, '', 2, '*'),
(124, 'alias', 'alias', 0, 0, 0.3333, 'A420', 2, '*'),
(126, 'admin', 'admin', 0, 0, 0.3333, 'A350', 3, '*'),
(127, 'basicos', 'basicos', 0, 0, 0.4667, 'B200', 2, '*'),
(128, 'conceptos', 'conceptos', 0, 0, 0.6, 'C52132', 4, '*'),
(129, '10', '10', 0, 0, 0.2, '', 1, '*'),
(130, 'básicos', 'básicos', 0, 0, 0.4667, 'B200', 2, '*'),
(134, 'control', 'control', 0, 0, 0.4667, 'C5364', 1, '*'),
(135, 'flujo', 'flujo', 0, 0, 0.3333, 'F420', 1, '*'),
(136, '11', '11', 0, 0, 0.2, '', 1, '*'),
(137, '12', '12', 0, 0, 0.2, '', 1, '*'),
(138, 'avanzados', 'avanzados', 0, 0, 0.6, 'A15232', 2, '*'),
(139, '13', '13', 0, 0, 0.2, '', 1, '*'),
(141, '14', '14', 0, 0, 0.2, '', 1, '*'),
(142, '15', '15', 0, 0, 0.2, '', 1, '*'),
(143, 'herencia', 'herencia', 0, 0, 0.5333, 'H652', 1, '*'),
(144, '16', '16', 0, 0, 0.2, '', 1, '*'),
(146, 'encapsulamiento', 'encapsulamiento', 0, 0, 1, 'E5212453', 2, '*'),
(147, '17', '17', 0, 0, 0.2, '', 2, '*'),
(149, 'polimorfismo', 'polimorfismo', 0, 0, 0.8, 'P456125', 1, '*'),
(150, '18', '18', 0, 0, 0.2, '', 1, '*'),
(152, '19', '19', 0, 0, 0.2, '', 1, '*'),
(153, 'acerca', 'acerca', 0, 0, 0.4, 'A262', 2, '*'),
(154, '20', '20', 0, 0, 0.2, '', 1, '*'),
(537, '33', '33', 0, 0, 0.2, '', 3, '*'),
(538, 'ab', 'ab', 0, 0, 0.1333, 'A100', 3, '*'),
(539, 'accusamus', 'accusamus', 0, 0, 0.6, 'A252', 2, '*'),
(540, 'accusantium', 'accusantium', 0, 0, 0.7333, 'A2535', 2, '*'),
(541, 'aliquam', 'aliquam', 0, 0, 0.4667, 'A425', 2, '*'),
(543, 'amet', 'amet', 0, 0, 0.2667, 'A530', 3, '*'),
(544, 'aspernatur', 'aspernatur', 0, 0, 0.6667, 'A216536', 3, '*'),
(546, 'aut', 'aut', 0, 0, 0.2, 'A300', 3, '*'),
(547, 'autem', 'autem', 0, 0, 0.3333, 'A350', 3, '*'),
(548, 'consectetur', 'consectetur', 0, 0, 0.7333, 'C5236', 3, '*'),
(549, 'consequatur', 'consequatur', 0, 0, 0.7333, 'C5236', 3, '*'),
(550, 'corrupti', 'corrupti', 0, 0, 0.5333, 'C613', 3, '*'),
(551, 'debitis', 'debitis', 0, 0, 0.4667, 'D132', 3, '*'),
(552, 'delectus', 'delectus', 0, 0, 0.5333, 'D4232', 3, '*'),
(554, 'dolor', 'dolor', 0, 0, 0.3333, 'D460', 3, '*'),
(555, 'dolorem', 'dolorem', 0, 0, 0.4667, 'D465', 3, '*'),
(557, 'ducimus', 'ducimus', 0, 0, 0.4667, 'D252', 3, '*'),
(558, 'ea', 'ea', 0, 0, 0.1333, 'E000', 3, '*'),
(560, 'eligendi', 'eligendi', 0, 0, 0.5333, 'E4253', 3, '*'),
(561, 'error', 'error', 0, 0, 0.3333, 'E600', 3, '*'),
(562, 'est', 'est', 0, 0, 0.2, 'E230', 3, '*'),
(563, 'et', 'et', 0, 0, 0.1333, 'E300', 3, '*'),
(564, 'eum', 'eum', 0, 0, 0.2, 'E500', 3, '*'),
(565, 'ex', 'ex', 0, 0, 0.1333, 'E200', 3, '*'),
(567, 'fuga', 'fuga', 0, 0, 0.2667, 'F200', 3, '*'),
(568, 'fugiat', 'fugiat', 0, 0, 0.4, 'F230', 3, '*'),
(569, 'galisum', 'galisum', 0, 0, 0.4667, 'G425', 3, '*'),
(570, 'harum', 'harum', 0, 0, 0.3333, 'H650', 3, '*'),
(571, 'hic', 'hic', 0, 0, 0.2, 'H200', 3, '*'),
(573, 'id', 'id', 0, 0, 0.1333, 'I300', 3, '*'),
(575, 'impedit', 'impedit', 0, 0, 0.4667, 'I513', 3, '*'),
(576, 'in', 'in', 0, 0, 0.1333, 'I500', 3, '*'),
(578, 'ipsam', 'ipsam', 0, 0, 0.3333, 'I125', 3, '*'),
(579, 'ipsum', 'ipsum', 0, 0, 0.3333, 'I125', 3, '*'),
(581, 'iusto', 'iusto', 0, 0, 0.3333, 'I230', 3, '*'),
(582, 'lorem', 'lorem', 0, 0, 0.3333, 'L650', 3, '*'),
(583, 'modi', 'modi', 0, 0, 0.2667, 'M300', 3, '*'),
(584, 'molestiae', 'molestiae', 0, 0, 0.6, 'M423', 3, '*'),
(586, 'mollitia', 'mollitia', 0, 0, 0.5333, 'M430', 3, '*'),
(587, 'nam', 'nam', 0, 0, 0.2, 'N000', 3, '*'),
(588, 'natus', 'natus', 0, 0, 0.3333, 'N320', 3, '*'),
(589, 'nemo', 'nemo', 0, 0, 0.2667, 'N000', 3, '*'),
(592, 'nihil', 'nihil', 0, 0, 0.3333, 'N400', 3, '*'),
(594, 'non', 'non', 0, 0, 0.2, 'N000', 3, '*'),
(596, 'officia', 'officia', 0, 0, 0.4667, 'O120', 2, '*'),
(597, 'officiis', 'officiis', 0, 0, 0.5333, 'O120', 3, '*'),
(598, 'omnis', 'omnis', 0, 0, 0.3333, 'O520', 3, '*'),
(601, 'placeat', 'placeat', 0, 0, 0.4667, 'P423', 3, '*'),
(602, 'porro', 'porro', 0, 0, 0.3333, 'P600', 2, '*'),
(604, 'quae', 'quae', 0, 0, 0.2667, 'Q000', 2, '*'),
(605, 'quaerat', 'quaerat', 0, 0, 0.4667, 'Q630', 3, '*'),
(607, 'qui', 'qui', 0, 0, 0.2, 'Q000', 3, '*'),
(608, 'quia', 'quia', 0, 0, 0.2667, 'Q000', 3, '*'),
(610, 'quidem', 'quidem', 0, 0, 0.4, 'Q350', 3, '*'),
(611, 'quis', 'quis', 0, 0, 0.2667, 'Q000', 3, '*'),
(612, 'quo', 'quo', 0, 0, 0.2, 'Q000', 3, '*'),
(613, 'quod', 'quod', 0, 0, 0.2667, 'Q300', 3, '*'),
(614, 'recusandae', 'recusandae', 0, 0, 0.6667, 'R253', 3, '*'),
(615, 'repudiandae', 'repudiandae', 0, 0, 0.7333, 'R1353', 3, '*'),
(616, 'rerum', 'rerum', 0, 0, 0.3333, 'R500', 3, '*'),
(618, 'sed', 'sed', 0, 0, 0.2, 'S300', 3, '*'),
(619, 'sequi', 'sequi', 0, 0, 0.3333, 'S000', 3, '*'),
(620, 'similique', 'similique', 0, 0, 0.6, 'S542', 3, '*'),
(621, 'sit', 'sit', 0, 0, 0.2, 'S300', 3, '*'),
(622, 'soluta', 'soluta', 0, 0, 0.4, 'S430', 2, '*'),
(623, 'suscipit', 'suscipit', 0, 0, 0.5333, 'S130', 3, '*'),
(628, 'ut', 'ut', 0, 0, 0.1333, 'U300', 3, '*'),
(629, 'vel', 'vel', 0, 0, 0.2, 'V400', 3, '*'),
(630, 'velit', 'velit', 0, 0, 0.3333, 'V430', 3, '*'),
(633, 'vero', 'vero', 0, 0, 0.2667, 'V600', 3, '*'),
(634, 'vitae', 'vitae', 0, 0, 0.3333, 'V300', 3, '*'),
(635, 'voluptas', 'voluptas', 0, 0, 0.5333, 'V4132', 3, '*'),
(636, 'voluptatem', 'voluptatem', 0, 0, 0.6667, 'V4135', 3, '*'),
(638, 'voluptatibus', 'voluptatibus', 0, 0, 0.8, 'V41312', 3, '*'),
(916, 'aliquid', 'aliquid', 0, 0, 0.4667, 'A423', 1, '*'),
(917, 'at', 'at', 0, 0, 0.1333, 'A300', 2, '*'),
(918, 'dicta', 'dicta', 0, 0, 0.3333, 'D230', 2, '*'),
(919, 'doloremque', 'doloremque', 0, 0, 0.6667, 'D4652', 2, '*'),
(920, 'eaque', 'eaque', 0, 0, 0.3333, 'E200', 2, '*'),
(921, 'expedita', 'expedita', 0, 0, 0.5333, 'E213', 2, '*'),
(922, 'i', 'i', 0, 0, 0.0667, 'I000', 1, '*'),
(923, 'illum', 'illum', 0, 0, 0.3333, 'I450', 1, '*'),
(924, 'incidunt', 'incidunt', 0, 0, 0.5333, 'I52353', 2, '*'),
(925, 'itaque', 'itaque', 0, 0, 0.4, 'I320', 2, '*'),
(926, 'molestias', 'molestias', 0, 0, 0.6, 'M4232', 2, '*'),
(927, 'neque', 'neque', 0, 0, 0.3333, 'N200', 2, '*'),
(928, 'nesciunt', 'nesciunt', 0, 0, 0.5333, 'N253', 2, '*'),
(929, 'nobis', 'nobis', 0, 0, 0.3333, 'N120', 2, '*'),
(930, 'numquam', 'numquam', 0, 0, 0.4667, 'N250', 1, '*'),
(931, 'perferendis', 'perferendis', 0, 0, 0.7333, 'P616532', 2, '*'),
(932, 'perspiciatis', 'perspiciatis', 0, 0, 0.8, 'P621232', 2, '*'),
(933, 'praesentium', 'praesentium', 0, 0, 0.7333, 'P62535', 2, '*'),
(934, 'quas', 'quas', 0, 0, 0.2667, 'Q000', 2, '*'),
(935, 'quibusdam', 'quibusdam', 0, 0, 0.6, 'Q1235', 2, '*'),
(936, 'saepe', 'saepe', 0, 0, 0.3333, 'S100', 1, '*'),
(937, 'tempora', 'tempora', 0, 0, 0.4667, 'T516', 2, '*'),
(938, 'temporibus', 'temporibus', 0, 0, 0.6667, 'T51612', 2, '*'),
(939, 'tenetur', 'tenetur', 0, 0, 0.4667, 'T536', 2, '*'),
(940, 'unde', 'unde', 0, 0, 0.2667, 'U530', 2, '*'),
(941, 'veniam', 'veniam', 0, 0, 0.4, 'V500', 1, '*'),
(942, 'veritatis', 'veritatis', 0, 0, 0.6, 'V632', 2, '*'),
(943, 'voluptates', 'voluptates', 0, 0, 0.6667, 'V4132', 2, '*'),
(1010, 'aprendizaje', 'aprendizaje', 0, 0, 0.7333, 'A16532', 1, '*'),
(1011, 'plataforma', 'plataforma', 0, 0, 0.6667, 'P43165', 1, '*'),
(1012, 'adipisci', 'adipisci', 0, 0, 0.5333, 'A312', 2, '*'),
(1013, 'aperiam', 'aperiam', 0, 0, 0.4667, 'A165', 2, '*'),
(1014, 'architecto', 'architecto', 0, 0, 0.6667, 'A62323', 2, '*'),
(1015, 'asperiores', 'asperiores', 0, 0, 0.6667, 'A2162', 2, '*'),
(1016, 'assumenda', 'assumenda', 0, 0, 0.6, 'A253', 2, '*'),
(1017, 'atque', 'atque', 0, 0, 0.3333, 'A320', 2, '*'),
(1018, 'blanditiis', 'blanditiis', 0, 0, 0.6667, 'B4532', 2, '*'),
(1019, 'commodi', 'commodi', 0, 0, 0.4667, 'C530', 2, '*'),
(1020, 'corporis', 'corporis', 0, 0, 0.5333, 'C6162', 1, '*'),
(1021, 'culpa', 'culpa', 0, 0, 0.3333, 'C410', 2, '*'),
(1022, 'deserunt', 'deserunt', 0, 0, 0.5333, 'D2653', 2, '*'),
(1023, 'dignissimos', 'dignissimos', 0, 0, 0.7333, 'D25252', 2, '*'),
(1024, 'dolore', 'dolore', 0, 0, 0.4, 'D460', 2, '*'),
(1025, 'earum', 'earum', 0, 0, 0.3333, 'E650', 2, '*'),
(1026, 'eos', 'eos', 0, 0, 0.2, 'E200', 2, '*'),
(1027, 'esse', 'esse', 0, 0, 0.2667, 'E200', 2, '*'),
(1028, 'exercitationem', 'exercitationem', 0, 0, 0.9333, 'E26235', 2, '*'),
(1029, 'explicabo', 'explicabo', 0, 0, 0.6, 'E21421', 1, '*'),
(1030, 'facere', 'facere', 0, 0, 0.4, 'F260', 2, '*'),
(1031, 'facilis', 'facilis', 0, 0, 0.4667, 'F242', 2, '*'),
(1032, 'fugit', 'fugit', 0, 0, 0.3333, 'F230', 2, '*'),
(1033, 'inventore', 'inventore', 0, 0, 0.6, 'I51536', 2, '*'),
(1034, 'inventoreaut', 'inventoreaut', 0, 0, 0.8, 'I515363', 1, '*'),
(1035, 'ipsa', 'ipsa', 0, 0, 0.2667, 'I120', 1, '*'),
(1036, 'iure', 'iure', 0, 0, 0.2667, 'I600', 2, '*'),
(1037, 'libero', 'libero', 0, 0, 0.4, 'L160', 2, '*'),
(1038, 'magni', 'magni', 0, 0, 0.3333, 'M250', 1, '*'),
(1039, 'maiores', 'maiores', 0, 0, 0.4667, 'M620', 2, '*'),
(1040, 'maxime', 'maxime', 0, 0, 0.4, 'M250', 2, '*'),
(1041, 'nisi', 'nisi', 0, 0, 0.2667, 'N200', 2, '*'),
(1042, 'nulla', 'nulla', 0, 0, 0.3333, 'N400', 2, '*'),
(1043, 'odio', 'odio', 0, 0, 0.2667, 'O300', 2, '*'),
(1044, 'odit', 'odit', 0, 0, 0.2667, 'O300', 2, '*'),
(1045, 'optio', 'optio', 0, 0, 0.3333, 'O130', 2, '*'),
(1046, 'pariatur', 'pariatur', 0, 0, 0.5333, 'P636', 2, '*'),
(1047, 'possimus', 'possimus', 0, 0, 0.5333, 'P252', 1, '*'),
(1048, 'provident', 'provident', 0, 0, 0.6, 'P61353', 2, '*'),
(1049, 'quam', 'quam', 0, 0, 0.2667, 'Q500', 2, '*'),
(1050, 'quasi', 'quasi', 0, 0, 0.3333, 'Q000', 1, '*'),
(1051, 'quisquam', 'quisquam', 0, 0, 0.5333, 'Q500', 2, '*'),
(1052, 'reiciendis', 'reiciendis', 0, 0, 0.6667, 'R2532', 2, '*'),
(1053, 'rem', 'rem', 0, 0, 0.2, 'R500', 2, '*'),
(1054, 'repellat', 'repellat', 0, 0, 0.5333, 'R143', 2, '*'),
(1055, 'sapiente', 'sapiente', 0, 0, 0.5333, 'S153', 2, '*'),
(1056, 'sint', 'sint', 0, 0, 0.2667, 'S530', 2, '*'),
(1057, 'sunt', 'sunt', 0, 0, 0.2667, 'S530', 2, '*'),
(1058, 'tempore', 'tempore', 0, 0, 0.4667, 'T516', 2, '*'),
(1059, 'totam', 'totam', 0, 0, 0.3333, 'T500', 2, '*'),
(1060, 'ullam', 'ullam', 0, 0, 0.3333, 'U450', 2, '*'),
(1061, 'voluptate', 'voluptate', 0, 0, 0.6, 'V413', 2, '*'),
(1062, '3', '3', 0, 0, 0.1, '', 1, '*'),
(1073, 'tematica', 'tematica', 0, 0, 0.5333, 'T532', 1, '*'),
(1074, 'ad', 'ad', 0, 0, 0.1333, 'A300', 1, '*'),
(1075, 'animi', 'animi', 0, 0, 0.3333, 'A500', 1, '*'),
(1076, 'consequuntur', 'consequuntur', 0, 0, 0.8, 'C52536', 1, '*'),
(1077, 'cum', 'cum', 0, 0, 0.2, 'C500', 1, '*'),
(1078, 'cupiditate', 'cupiditate', 0, 0, 0.6667, 'C130', 1, '*'),
(1079, 'deleniti', 'deleniti', 0, 0, 0.5333, 'D453', 1, '*'),
(1080, 'distinctio', 'distinctio', 0, 0, 0.6667, 'D23523', 1, '*'),
(1081, 'dolores', 'dolores', 0, 0, 0.4667, 'D462', 1, '*'),
(1082, 'doloribus', 'doloribus', 0, 0, 0.6, 'D4612', 1, '*'),
(1083, 'dolorum', 'dolorum', 0, 0, 0.4667, 'D465', 1, '*'),
(1084, 'eius', 'eius', 0, 0, 0.2667, 'E200', 1, '*'),
(1085, 'enim', 'enim', 0, 0, 0.2667, 'E500', 1, '*'),
(1086, 'excepturi', 'excepturi', 0, 0, 0.6, 'E2136', 1, '*'),
(1087, 'illo', 'illo', 0, 0, 0.2667, 'I400', 1, '*'),
(1088, 'internos', 'internos', 0, 0, 0.5333, 'I53652', 1, '*'),
(1089, 'labore', 'labore', 0, 0, 0.4, 'L160', 1, '*'),
(1090, 'laboriosam', 'laboriosam', 0, 0, 0.6667, 'L1625', 1, '*'),
(1091, 'laborum', 'laborum', 0, 0, 0.4667, 'L165', 1, '*'),
(1092, 'laborumet', 'laborumet', 0, 0, 0.6, 'L1653', 1, '*'),
(1093, 'laudantium', 'laudantium', 0, 0, 0.6667, 'L3535', 1, '*'),
(1094, 'magnam', 'magnam', 0, 0, 0.4, 'M250', 1, '*'),
(1095, 'minima', 'minima', 0, 0, 0.4, 'M000', 1, '*'),
(1096, 'minus', 'minus', 0, 0, 0.3333, 'M200', 1, '*'),
(1097, 'necessitatibus', 'necessitatibus', 0, 0, 0.9333, 'N2312', 1, '*'),
(1098, 'obcaecati', 'obcaecati', 0, 0, 0.6, 'O123', 1, '*'),
(1099, 'quos', 'quos', 0, 0, 0.2667, 'Q000', 1, '*'),
(1100, 'ratione', 'ratione', 0, 0, 0.4667, 'R350', 1, '*'),
(1101, 'remvelit', 'remvelit', 0, 0, 0.5333, 'R5143', 1, '*'),
(1102, 'reprehenderit', 'reprehenderit', 0, 0, 0.8667, 'R165363', 1, '*'),
(1103, 'temporain', 'temporain', 0, 0, 0.6, 'T5165', 1, '*'),
(1104, 'voluptatum', 'voluptatum', 0, 0, 0.6667, 'V4135', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_terms_common`
--

CREATE TABLE `virtus_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_terms_common`
--

INSERT INTO `virtus_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('about', 'en', 0),
('above', 'en', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('don\'t', 'en', 0),
('down', 'en', 0),
('during', 'en', 0),
('each', 'en', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('if', 'en', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('let\'s', 'en', 0),
('me', 'en', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('no', 'en', 0),
('nor', 'en', 0),
('not', 'en', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('or', 'en', 0),
('other', 'en', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('same', 'en', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('so', 'en', 0),
('some', 'en', 0),
('such', 'en', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('under', 'en', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_tokens`
--

CREATE TABLE `virtus_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_tokens_aggregate`
--

CREATE TABLE `virtus_finder_tokens_aggregate` (
  `term_id` int UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `context` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `total_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_finder_types`
--

CREATE TABLE `virtus_finder_types` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_finder_types`
--

INSERT INTO `virtus_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_history`
--

CREATE TABLE `virtus_history` (
  `version_id` int UNSIGNED NOT NULL,
  `item_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_history`
--

INSERT INTO `virtus_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 'com_content.category.2', '', '2022-07-30 02:37:23', 565, 607, 'fe630bb73ff334afa259ad4b05df49d7f1bf3ea0', '{\"id\":\"2\",\"asset_id\":27,\"parent_id\":1,\"lft\":1,\"rgt\":2,\"level\":1,\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Sin categor\\u00eda\",\"alias\":\"uncategorised\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":565,\"checked_out_time\":\"2022-07-30 02:37:04\",\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"565\",\"created_time\":\"2022-07-09 22:52:00\",\"modified_user_id\":565,\"modified_time\":\"2022-07-30 02:37:23\",\"hits\":0,\"language\":\"*\",\"version\":1}', 0),
(2, 'com_content.category.8', '', '2022-07-30 03:09:36', 565, 860, '013e7334d3736cc0a53bff0a5d8173a4e8f42e6d', '{\"id\":8,\"asset_id\":92,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Programaci\\u00f3n Estructurada \",\"alias\":\"structurada\",\"note\":\"\",\"description\":\"<p>La programaci\\u00f3n estructurada es un paradigma de programaci\\u00f3n orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando \\u00fanicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva.<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-07-30 03:09:36\",\"modified_user_id\":565,\"modified_time\":\"2022-07-30 03:09:36\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(3, 'com_content.category.9', '', '2022-07-30 03:26:06', 565, 1051, '7ad29b1b5ccb91017d2e550faef98f3425a2967a', '{\"id\":9,\"asset_id\":93,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"alias\":\"poo\",\"note\":\"\",\"description\":\"<p>La Programaci\\u00f3n Orientada a Objetos (POO) es un paradigma de programaci\\u00f3n, es decir, un modelo o un estilo de programaci\\u00f3n que nos da unas gu\\u00edas sobre c\\u00f3mo trabajar con \\u00e9l. Se basa en el concepto de clases y objetos. Este tipo de programaci\\u00f3n se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de c\\u00f3digo (clases) para crear instancias individuales de objetos.\\u00a0<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-07-30 03:26:06\",\"modified_user_id\":565,\"modified_time\":\"2022-07-30 03:26:06\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(4, 'com_contact.contact.1', '', '2022-07-30 03:41:50', 565, 1570, '1325e92676d9b7674a6cc839dfa14ffcaedd0b9f', '{\"id\":1,\"name\":\"VIRTUS\",\"alias\":\"virtus\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"Bogot\\u00e1\",\"state\":\"\",\"country\":\"Colombia\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":\\\"\\\",\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":\\\"\\\",\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":\\\"\\\",\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":\\\"\\\",\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":4,\"access\":1,\"mobile\":\"\",\"webpage\":\"http:\\/\\/grupovirtus.org\\/\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2022-07-30 03:41:50\",\"created_by\":565,\"created_by_alias\":\"\",\"modified\":\"2022-07-30 03:41:50\",\"modified_by\":565,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"publish_up\":null,\"publish_down\":null,\"version\":\"1\",\"hits\":0}', 0),
(5, 'com_contact.contact.1', '', '2022-07-30 03:47:28', 565, 1609, '7e18e96ba05d2537c9a5828a6bcab66b2b17786e', '{\"id\":\"1\",\"name\":\"VIRTUS\",\"alias\":\"virtus\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"Bogot\\u00e1\",\"state\":\"\",\"country\":\"Colombia\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"fmartinezro@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":565,\"checked_out_time\":\"2022-07-30 03:43:10\",\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":\\\"\\\",\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":\\\"\\\",\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":\\\"\\\",\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":\\\"\\\",\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":4,\"access\":1,\"mobile\":\"\",\"webpage\":\"http:\\/\\/grupovirtus.org\\/\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2022-07-30 03:41:50\",\"created_by\":\"565\",\"created_by_alias\":\"\",\"modified\":\"2022-07-30 03:47:28\",\"modified_by\":565,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"publish_up\":null,\"publish_down\":null,\"version\":2,\"hits\":3}', 0),
(6, 'com_content.article.1', '', '2022-08-09 01:48:25', 565, 1888, '7272c60e0c751e36540e3efc4010a6bf6d6d9e7d', '{\"id\":1,\"asset_id\":97,\"title\":\"Tematica 1\",\"alias\":\"alias-tematica\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2022-08-09 01:48:25\",\"created_by\":565,\"created_by_alias\":\"\",\"modified\":\"2022-08-09 01:48:25\",\"modified_by\":565,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-08-09 01:48:25\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(7, 'com_content.category.10', '', '2022-08-09 02:03:19', 565, 878, '220925e0da5b2ba85c24ac0e94211a676e1df8e4', '{\"id\":10,\"asset_id\":98,\"parent_id\":8,\"lft\":12,\"rgt\":13,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Conceptos B\\u00e1sicos\",\"alias\":\"conceptos-basicos\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:03:19\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:03:19\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(8, 'com_content.category.11', '', '2022-08-09 02:04:03', 565, 868, '50f5251191037f266095990473ccd6d550919268', '{\"id\":11,\"asset_id\":99,\"parent_id\":8,\"lft\":14,\"rgt\":15,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Control de Flujo\",\"alias\":\"control-flujo\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:04:03\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:04:03\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(9, 'com_content.category.12', '', '2022-08-09 02:04:30', 565, 858, '6a1993ab4dd8bf58cfa9cea65e17b210b57299b9', '{\"id\":12,\"asset_id\":100,\"parent_id\":8,\"lft\":16,\"rgt\":17,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Funciones\",\"alias\":\"funciones\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:04:30\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:04:30\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(10, 'com_content.category.13', '', '2022-08-09 02:05:42', 565, 878, 'dc8e3abbdef0cae1a348b0aaed4c9809908756d2', '{\"id\":13,\"asset_id\":101,\"parent_id\":8,\"lft\":18,\"rgt\":19,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Conceptos Avanzados\",\"alias\":\"conceptos-avanzados\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:05:42\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:05:42\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(11, 'com_content.category.14', '', '2022-08-09 02:06:33', 565, 879, 'a13a3ecbc8cb5e99e1cd30606994d605899e0583', '{\"id\":14,\"asset_id\":102,\"parent_id\":9,\"lft\":22,\"rgt\":23,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Conceptos B\\u00e1sicos\",\"alias\":\"conceptos-basicos\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:06:33\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:06:33\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(12, 'com_content.category.15', '', '2022-08-09 02:07:06', 565, 870, '2af6f8e65f06313c20165da377360d605670ef0b', '{\"id\":15,\"asset_id\":103,\"parent_id\":9,\"lft\":24,\"rgt\":25,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Clases y Objetos\",\"alias\":\"clases-objetos\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:07:06\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:07:06\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(13, 'com_content.category.16', '', '2022-08-09 02:07:40', 565, 856, '23bf796d749832924c1f8572361b9a8052f20804', '{\"id\":16,\"asset_id\":104,\"parent_id\":9,\"lft\":26,\"rgt\":27,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Herencia\",\"alias\":\"herencia\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:07:40\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:07:40\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(14, 'com_content.category.17', '', '2022-08-09 02:08:00', 565, 870, '8ea80ecfb53c1151c13ae9295822e211687fe6b3', '{\"id\":17,\"asset_id\":105,\"parent_id\":1,\"lft\":29,\"rgt\":30,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Encapsulamiento\",\"alias\":\"encapsulamiento\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:08:00\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:08:00\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(15, 'com_content.category.17', '', '2022-08-09 02:08:16', 565, 897, '1a28c9ca2f2f231ce9437e8b50a0c2c52a6aa4f7', '{\"id\":\"17\",\"asset_id\":105,\"parent_id\":9,\"lft\":28,\"rgt\":29,\"level\":2,\"path\":\"encapsulamiento\",\"extension\":\"com_content\",\"title\":\"Encapsulamiento\",\"alias\":\"encapsulamiento\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":565,\"checked_out_time\":\"2022-08-09 02:08:08\",\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"565\",\"created_time\":\"2022-08-09 02:08:00\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:08:16\",\"hits\":0,\"language\":\"*\",\"version\":1}', 0),
(16, 'com_content.category.18', '', '2022-08-09 02:08:40', 565, 864, 'ff94aa924a85b13f5dd85fe920025787836e9251', '{\"id\":18,\"asset_id\":106,\"parent_id\":9,\"lft\":30,\"rgt\":31,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Polimorfismo\",\"alias\":\"polimorfismo\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:08:40\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:08:40\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(17, 'com_content.category.19', '', '2022-08-09 02:09:19', 565, 878, '1b494aaf054c7d8a277bc31837db896a6796d729', '{\"id\":19,\"asset_id\":107,\"parent_id\":9,\"lft\":32,\"rgt\":33,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Conceptos Avanzados\",\"alias\":\"conceptos-avanzados\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:09:19\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:09:19\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(18, 'com_content.category.20', '', '2022-08-09 02:09:40', 565, 858, '4a6f369a2da6547db3ae3a1b93230feb51259965', '{\"id\":20,\"asset_id\":108,\"parent_id\":1,\"lft\":35,\"rgt\":36,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Acerca De\",\"alias\":\"acerca-de\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-08-09 02:09:40\",\"modified_user_id\":565,\"modified_time\":\"2022-08-09 02:09:40\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(19, 'com_content.article.2', '', '2022-08-09 02:28:48', 565, 3339, 'b20c29161884a3744a8b50c5c1fbc7720370cb27', '{\"id\":2,\"asset_id\":109,\"title\":\"\\u00bfQue es VIRTUS?\",\"alias\":\"acerca-de-virtus\",\"introtext\":\"<h1>Et quia incidunt sed ipsam molestiae.<\\/h1>\\r\\n<p>Lorem ipsum dolor sit amet. Nam numquam iusto quo modi ducimus ab illum omnis eum eligendi rerum. Et alias mollitia ut corrupti consequatur est eaque numquam. Ut impedit molestiae aut tempora alias est omnis doloremque a veniam voluptatibus. Qui vitae omnis aut nemo nihil aut perspiciatis dolor aut alias molestias qui harum harum ut accusantium veritatis.<\\/p>\\r\\n<h2>A illum ducimus ab quas consectetur ab voluptatem quaerat.<\\/h2>\\r\\n<p>Ut aliquam autem ut temporibus vitae et expedita praesentium ex accusamus itaque et recusandae aliquam id officiis consequatur. Est galisum Quis et numquam ipsum sed voluptatem ipsum. Ab dicta quae qui fuga aliquid vel dolorem saepe ea quod accusantium qui consectetur itaque sed voluptatem natus. Sit aspernatur praesentium in voluptas est error similique.<\\/p>\\r\\n<blockquote cite=\\\"https:\\/\\/www.loremipzum.com\\/\\\">Ut ipsam sequi aut unde porro non veritatis placeat hic repudiandae delectus et illum vero sit perferendis dolor.<\\/blockquote>\\r\\n<h3>Et voluptatem neque aut velit mollitia.<\\/h3>\\r\\n<p>Est quibusdam quidem a molestiae temporibus eum suscipit nobis ipsum officiis At delectus modi id officia autem aut fuga aliquam. Id consequatur eaque et repudiandae nesciunt aut natus iusto 33 quae eligendi. Ex incidunt voluptates id debitis soluta qui fugiat omnis. Ut veritatis molestiae et tenetur eaque et quia consequatur aut i<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2022-08-09 02:28:48\",\"created_by\":565,\"created_by_alias\":\"\",\"modified\":\"2022-08-09 02:28:48\",\"modified_by\":565,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-08-09 02:28:48\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(20, 'com_content.article.2', '', '2022-08-09 02:30:14', 565, 3353, 'a6f286473ec052764677090c611342748a5d76de', '{\"id\":\"2\",\"asset_id\":109,\"title\":\"\\u00bfQue es VIRTUS?\",\"alias\":\"acerca-de-virtus\",\"introtext\":\"<h1>Et quia incidunt sed ipsam molestiae.<\\/h1>\\r\\n<p>Lorem ipsum dolor sit amet. Nam numquam iusto quo modi ducimus ab illum omnis eum eligendi rerum. Et alias mollitia ut corrupti consequatur est eaque numquam. Ut impedit molestiae aut tempora alias est omnis doloremque a veniam voluptatibus. Qui vitae omnis aut nemo nihil aut perspiciatis dolor aut alias molestias qui harum harum ut accusantium veritatis.<\\/p>\\r\\n<h2>A illum ducimus ab quas consectetur ab voluptatem quaerat.<\\/h2>\\r\\n<p>Ut aliquam autem ut temporibus vitae et expedita praesentium ex accusamus itaque et recusandae aliquam id officiis consequatur. Est galisum Quis et numquam ipsum sed voluptatem ipsum. Ab dicta quae qui fuga aliquid vel dolorem saepe ea quod accusantium qui consectetur itaque sed voluptatem natus. Sit aspernatur praesentium in voluptas est error similique.<\\/p>\\r\\n<blockquote cite=\\\"https:\\/\\/www.loremipzum.com\\/\\\">Ut ipsam sequi aut unde porro non veritatis placeat hic repudiandae delectus et illum vero sit perferendis dolor.<\\/blockquote>\\r\\n<h3>Et voluptatem neque aut velit mollitia.<\\/h3>\\r\\n<p>Est quibusdam quidem a molestiae temporibus eum suscipit nobis ipsum officiis At delectus modi id officia autem aut fuga aliquam. Id consequatur eaque et repudiandae nesciunt aut natus iusto 33 quae eligendi. Ex incidunt voluptates id debitis soluta qui fugiat omnis. Ut veritatis molestiae et tenetur eaque et quia consequatur aut i<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2022-08-09 02:28:48\",\"created_by\":\"565\",\"created_by_alias\":\"\",\"modified\":\"2022-08-09 02:30:14\",\"modified_by\":565,\"checked_out\":565,\"checked_out_time\":\"2022-08-09 02:29:48\",\"publish_up\":\"2022-08-09 02:28:48\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"0\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":2,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(21, 'com_content.article.3', '', '2022-08-09 02:37:18', 565, 4082, 'f9d040978ad2bfff28eea79e9f29a332018b9cf3', '{\"id\":3,\"asset_id\":110,\"title\":\"Plataforma Aprendizaje\",\"alias\":\"plataforma-aprendizaje\",\"introtext\":\"<p>Lorem ipsum dolor sit amet. Est corrupti ipsa\\u00a0<em>Et odio aut commodi molestiae eos amet galisum<\\/em>\\u00a0est magni consequatur et nemo quia. Non sapiente autem qui voluptate aspernatur\\u00a0<strong>Ut odit et officia ipsa sit galisum aliquam<\\/strong>? Sit libero quia et similique voluptatem aut tempore porro aut nulla similique. Sed voluptas deserunt hic soluta voluptas ab rerum blanditiis.<\\/p>\\r\\n<p>Qui fugit amet ea dolor officiis\\u00a0<em>Aut recusandae et pariatur quidem et ducimus aut culpa blanditiis<\\/em>\\u00a0est voluptatem quisquam. Sit optio nisi sed ipsum voluptatibus et voluptate sunt hic explicabo velit ea fuga Quis eum omnis magni et voluptatem aperiam. Qui consectetur mollitia\\u00a0<strong>Ea aperiam a voluptatem asperiores non ipsam esse<\\/strong>\\u00a0a vitae consectetur sed culpa debitis. Qui totam nemo qui galisum iure qui nemo debitis aut modi omnis.<\\/p>\\r\\n<p>Ab exercitationem quaerat sit placeat consequatur qui nulla fuga vel nisi nihil est amet pariatur. Et reiciendis assumenda id fugiat officia et quaerat possimus. Qui magni error et iusto inventoreaut accusantium ex rerum voluptas vel architecto recusandae.<\\/p>\\r\\n<ul>\\r\\n<li>Et commodi nemo et repudiandae quia eos debitis quia.<\\/li>\\r\\n<li>Aut rerum qui totam inventore ut harum repellat et adipisci pariatur.<\\/li>\\r\\n<li>Aut fugit blanditiis et quis corporis tempore quod.<\\/li>\\r\\n<li>Sed facilis ullam atque facere aut provident suscipit?<\\/li>\\r\\n<\\/ul>\\r\\n<dl>\\r\\n<dt><dfn>Nam accusamus quam aut inventore natus.<\\/dfn><\\/dt>\\r\\n<dd>Id voluptas voluptatem 33 quae recusandae rem dignissimos vero quo inventore mollitia.<\\/dd>\\r\\n<dt><dfn>Aut velit eligendi.<\\/dfn><\\/dt>\\r\\n<dd>Eum dolorem fuga aut magni sequi.<\\/dd>\\r\\n<dt><dfn>Et assumenda ducimus sed molestiae sint.<\\/dfn><\\/dt>\\r\\n<dd>Est aperiam fugiat a voluptas impedit et delectus nemo sit maxime Quis.<\\/dd>\\r\\n<\\/dl>\\r\\n<pre><code>&lt;!-- Est quae saepe. --&gt;<br \\/>&lt;architecto&gt;Ut earum blanditiis.&lt;\\/architecto&gt;<br \\/>&lt;eligendi&gt;In odio dolor sit maiores dolore!&lt;\\/eligendi&gt;<br \\/>&lt;commodi&gt;Sit sint consectetur est possimus quasi.&lt;\\/commodi&gt;<\\/code><\\/pre>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2022-08-09 02:37:18\",\"created_by\":565,\"created_by_alias\":\"\",\"modified\":\"2022-08-09 02:37:18\",\"modified_by\":565,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-08-09 02:37:18\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(22, 'com_content.article.3', '', '2022-08-09 02:40:07', 565, 4096, '9ab0e9394c58be0f3036805fc7a38e8aa1546e24', '{\"id\":\"3\",\"asset_id\":110,\"title\":\"Plataforma Aprendizaje\",\"alias\":\"plataforma-aprendizaje\",\"introtext\":\"<p>Lorem ipsum dolor sit amet. Est corrupti ipsa\\u00a0<em>Et odio aut commodi molestiae eos amet galisum<\\/em>\\u00a0est magni consequatur et nemo quia. Non sapiente autem qui voluptate aspernatur\\u00a0<strong>Ut odit et officia ipsa sit galisum aliquam<\\/strong>? Sit libero quia et similique voluptatem aut tempore porro aut nulla similique. Sed voluptas deserunt hic soluta voluptas ab rerum blanditiis.<\\/p>\\r\\n<p>Qui fugit amet ea dolor officiis\\u00a0<em>Aut recusandae et pariatur quidem et ducimus aut culpa blanditiis<\\/em>\\u00a0est voluptatem quisquam. Sit optio nisi sed ipsum voluptatibus et voluptate sunt hic explicabo velit ea fuga Quis eum omnis magni et voluptatem aperiam. Qui consectetur mollitia\\u00a0<strong>Ea aperiam a voluptatem asperiores non ipsam esse<\\/strong>\\u00a0a vitae consectetur sed culpa debitis. Qui totam nemo qui galisum iure qui nemo debitis aut modi omnis.<\\/p>\\r\\n<p>Ab exercitationem quaerat sit placeat consequatur qui nulla fuga vel nisi nihil est amet pariatur. Et reiciendis assumenda id fugiat officia et quaerat possimus. Qui magni error et iusto inventoreaut accusantium ex rerum voluptas vel architecto recusandae.<\\/p>\\r\\n<ul>\\r\\n<li>Et commodi nemo et repudiandae quia eos debitis quia.<\\/li>\\r\\n<li>Aut rerum qui totam inventore ut harum repellat et adipisci pariatur.<\\/li>\\r\\n<li>Aut fugit blanditiis et quis corporis tempore quod.<\\/li>\\r\\n<li>Sed facilis ullam atque facere aut provident suscipit?<\\/li>\\r\\n<\\/ul>\\r\\n<dl>\\r\\n<dt><dfn>Nam accusamus quam aut inventore natus.<\\/dfn><\\/dt>\\r\\n<dd>Id voluptas voluptatem 33 quae recusandae rem dignissimos vero quo inventore mollitia.<\\/dd>\\r\\n<dt><dfn>Aut velit eligendi.<\\/dfn><\\/dt>\\r\\n<dd>Eum dolorem fuga aut magni sequi.<\\/dd>\\r\\n<dt><dfn>Et assumenda ducimus sed molestiae sint.<\\/dfn><\\/dt>\\r\\n<dd>Est aperiam fugiat a voluptas impedit et delectus nemo sit maxime Quis.<\\/dd>\\r\\n<\\/dl>\\r\\n<pre><code>&lt;!-- Est quae saepe. --&gt;<br \\/>&lt;architecto&gt;Ut earum blanditiis.&lt;\\/architecto&gt;<br \\/>&lt;eligendi&gt;In odio dolor sit maiores dolore!&lt;\\/eligendi&gt;<br \\/>&lt;commodi&gt;Sit sint consectetur est possimus quasi.&lt;\\/commodi&gt;<\\/code><\\/pre>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2022-08-09 02:37:18\",\"created_by\":\"565\",\"created_by_alias\":\"\",\"modified\":\"2022-08-09 02:40:07\",\"modified_by\":565,\"checked_out\":565,\"checked_out_time\":\"2022-08-09 02:39:59\",\"publish_up\":\"2022-08-09 02:37:18\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"0\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":3,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(23, 'com_content.article.2', '', '2022-08-09 02:40:40', 565, 3354, 'c95f01110b457379446e8f1720e44a2bf341517b', '{\"id\":\"2\",\"asset_id\":109,\"title\":\"\\u00bfQue es VIRTUS?\",\"alias\":\"acerca-de-virtus\",\"introtext\":\"<h1>Et quia incidunt sed ipsam molestiae.<\\/h1>\\r\\n<p>Lorem ipsum dolor sit amet. Nam numquam iusto quo modi ducimus ab illum omnis eum eligendi rerum. Et alias mollitia ut corrupti consequatur est eaque numquam. Ut impedit molestiae aut tempora alias est omnis doloremque a veniam voluptatibus. Qui vitae omnis aut nemo nihil aut perspiciatis dolor aut alias molestias qui harum harum ut accusantium veritatis.<\\/p>\\r\\n<h2>A illum ducimus ab quas consectetur ab voluptatem quaerat.<\\/h2>\\r\\n<p>Ut aliquam autem ut temporibus vitae et expedita praesentium ex accusamus itaque et recusandae aliquam id officiis consequatur. Est galisum Quis et numquam ipsum sed voluptatem ipsum. Ab dicta quae qui fuga aliquid vel dolorem saepe ea quod accusantium qui consectetur itaque sed voluptatem natus. Sit aspernatur praesentium in voluptas est error similique.<\\/p>\\r\\n<blockquote cite=\\\"https:\\/\\/www.loremipzum.com\\/\\\">Ut ipsam sequi aut unde porro non veritatis placeat hic repudiandae delectus et illum vero sit perferendis dolor.<\\/blockquote>\\r\\n<h3>Et voluptatem neque aut velit mollitia.<\\/h3>\\r\\n<p>Est quibusdam quidem a molestiae temporibus eum suscipit nobis ipsum officiis At delectus modi id officia autem aut fuga aliquam. Id consequatur eaque et repudiandae nesciunt aut natus iusto 33 quae eligendi. Ex incidunt voluptates id debitis soluta qui fugiat omnis. Ut veritatis molestiae et tenetur eaque et quia consequatur aut i<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":20,\"created\":\"2022-08-09 02:28:48\",\"created_by\":\"565\",\"created_by_alias\":\"\",\"modified\":\"2022-08-09 02:40:40\",\"modified_by\":565,\"checked_out\":565,\"checked_out_time\":\"2022-08-09 02:40:25\",\"publish_up\":\"2022-08-09 02:28:48\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"0\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":5,\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":5,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0);
INSERT INTO `virtus_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(24, 'com_content.article.3', '', '2022-08-09 02:41:04', 565, 4097, 'c8ad89298c45bf9788fec0a88d6a4fc9a8773349', '{\"id\":\"3\",\"asset_id\":110,\"title\":\"Plataforma Aprendizaje\",\"alias\":\"plataforma-aprendizaje\",\"introtext\":\"<p>Lorem ipsum dolor sit amet. Est corrupti ipsa\\u00a0<em>Et odio aut commodi molestiae eos amet galisum<\\/em>\\u00a0est magni consequatur et nemo quia. Non sapiente autem qui voluptate aspernatur\\u00a0<strong>Ut odit et officia ipsa sit galisum aliquam<\\/strong>? Sit libero quia et similique voluptatem aut tempore porro aut nulla similique. Sed voluptas deserunt hic soluta voluptas ab rerum blanditiis.<\\/p>\\r\\n<p>Qui fugit amet ea dolor officiis\\u00a0<em>Aut recusandae et pariatur quidem et ducimus aut culpa blanditiis<\\/em>\\u00a0est voluptatem quisquam. Sit optio nisi sed ipsum voluptatibus et voluptate sunt hic explicabo velit ea fuga Quis eum omnis magni et voluptatem aperiam. Qui consectetur mollitia\\u00a0<strong>Ea aperiam a voluptatem asperiores non ipsam esse<\\/strong>\\u00a0a vitae consectetur sed culpa debitis. Qui totam nemo qui galisum iure qui nemo debitis aut modi omnis.<\\/p>\\r\\n<p>Ab exercitationem quaerat sit placeat consequatur qui nulla fuga vel nisi nihil est amet pariatur. Et reiciendis assumenda id fugiat officia et quaerat possimus. Qui magni error et iusto inventoreaut accusantium ex rerum voluptas vel architecto recusandae.<\\/p>\\r\\n<ul>\\r\\n<li>Et commodi nemo et repudiandae quia eos debitis quia.<\\/li>\\r\\n<li>Aut rerum qui totam inventore ut harum repellat et adipisci pariatur.<\\/li>\\r\\n<li>Aut fugit blanditiis et quis corporis tempore quod.<\\/li>\\r\\n<li>Sed facilis ullam atque facere aut provident suscipit?<\\/li>\\r\\n<\\/ul>\\r\\n<dl>\\r\\n<dt><dfn>Nam accusamus quam aut inventore natus.<\\/dfn><\\/dt>\\r\\n<dd>Id voluptas voluptatem 33 quae recusandae rem dignissimos vero quo inventore mollitia.<\\/dd>\\r\\n<dt><dfn>Aut velit eligendi.<\\/dfn><\\/dt>\\r\\n<dd>Eum dolorem fuga aut magni sequi.<\\/dd>\\r\\n<dt><dfn>Et assumenda ducimus sed molestiae sint.<\\/dfn><\\/dt>\\r\\n<dd>Est aperiam fugiat a voluptas impedit et delectus nemo sit maxime Quis.<\\/dd>\\r\\n<\\/dl>\\r\\n<pre><code>&lt;!-- Est quae saepe. --&gt;<br \\/>&lt;architecto&gt;Ut earum blanditiis.&lt;\\/architecto&gt;<br \\/>&lt;eligendi&gt;In odio dolor sit maiores dolore!&lt;\\/eligendi&gt;<br \\/>&lt;commodi&gt;Sit sint consectetur est possimus quasi.&lt;\\/commodi&gt;<\\/code><\\/pre>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":20,\"created\":\"2022-08-09 02:37:18\",\"created_by\":\"565\",\"created_by_alias\":\"\",\"modified\":\"2022-08-09 02:41:04\",\"modified_by\":565,\"checked_out\":565,\"checked_out_time\":\"2022-08-09 02:40:50\",\"publish_up\":\"2022-08-09 02:37:18\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"0\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":5,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":4,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(25, 'com_content.article.1', '', '2022-08-09 03:05:23', 565, 6294, 'f3dd4d441d0ab92982dfca0bcece746efe63d9a0', '{\"id\":\"1\",\"asset_id\":97,\"title\":\"Tematica 1\",\"alias\":\"alias-tematica\",\"introtext\":\"<h1>Et dolor asperiores ea asperiores dolores.<\\/h1>\\r\\n<p>Lorem ipsum dolor sit amet. Vel asperiores veritatis et modi minus est consequatur nisi aut molestiae dolores est culpa debitis aut enim quod. Aut fuga vitae eos placeat iure qui quia voluptatem ut galisum inventore ut dolorem molestiae At inventore unde. Sed architecto animi aut perferendis unde in aspernatur voluptates At reprehenderit architecto. Nam sapiente cupiditate et harum molestias\\u00a0<em>Eum voluptatibus et similique dolorem et tenetur deleniti qui nulla architecto<\\/em>. Quo pariatur sed dicta harum\\u00a0<strong>Qui ullam eum molestiae facilis<\\/strong>\\u00a0eum maxime molestias id illo voluptatem est necessitatibus libero.<\\/p>\\r\\n<ol>\\r\\n<li>Quo obcaecati voluptatibus non quia sint pariatur voluptas et sunt architecto?<\\/li>\\r\\n<li>Et fuga quibusdam ut quos dolores!<\\/li>\\r\\n<\\/ol>\\r\\n<ul>\\r\\n<li>Ad autem quia vel voluptatem voluptates non nihil maxime.<\\/li>\\r\\n<li>Ad aspernatur amet eos tenetur praesentium.<\\/li>\\r\\n<li>Est eaque dolores qui dicta consectetur At ducimus voluptatem?<\\/li>\\r\\n<\\/ul>\\r\\n<h2>Ut similique expedita et Quis placeat?<\\/h2>\\r\\n<p>Ea illo harum\\u00a0<em>Vel perspiciatis est harum atque<\\/em>. Ut magnam distinctio cum consequatur nemo et deleniti perferendis. Ab incidunt deleniti qui corrupti neque ut deserunt quos et enim voluptatem aut consequuntur debitis qui consectetur voluptatibus. Ut consectetur consequatur est doloribus eligendi qui molestiae consequatur a alias consequatur 33 doloribus quis. Rem culpa adipisci ea reiciendis ullam eum optio veritatis ut dolores odit nam galisum voluptatem sequi maiores et tenetur fugit. Et vero optio aut esse dolore\\u00a0<strong>Hic autem rem similique internos aut repellat placeat in voluptas minima<\\/strong>. Ea laudantium rerum\\u00a0<a href=\\\"https:\\/\\/www.loremipzum.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Adipisci sit autem iusto aut praesentium distinctio<\\/a>\\u00a0ea voluptatem labore est assumenda eius et quia nemo. Quo laudantium facere ducimus voluptatum eum voluptatem neque ut eius libero est voluptates vero id tenetur veritatis? Non corrupti culpa et itaque laborum sit velit voluptas aut nobis voluptates aut nihil inventore ea commodi totam.<\\/p>\\r\\n<dl>\\r\\n<dt><dfn>Est placeat provident.<\\/dfn><\\/dt>\\r\\n<dd>Sed doloremque ullam sit tempora nesciunt!<\\/dd>\\r\\n<dt><dfn>Rem velit excepturi.<\\/dfn><\\/dt>\\r\\n<dd>Cum temporibus dolorum cum omnis recusandae et voluptatem odio.<\\/dd>\\r\\n<\\/dl>\\r\\n<h3>Eos sapiente ratione ut quaerat asperiores qui recusandae temporibus.<\\/h3>\\r\\n<p>Cum laudantium laborumet impedit rem inventore totam? Quo exercitationem repudiandae qui fuga cupiditate\\u00a0<strong>Aut blanditiis sed consequatur mollitia qui impedit aperiam ea delectus eligendi<\\/strong>. Qui rerum Quis quo voluptate temporain repellat id rerum reiciendis est Quis rerum. Qui voluptatem ipsam ea vitae dolores sit voluptatibus fuga. Et labore suscipit aut velit reprehenderit ex ratione assumenda. Sed pariatur nesciunt ut consequatur laudantium ut earum tenetur sit laboriosam rerum ut iure voluptatem ut placeat unde eos dolor ipsum? Ut tenetur cupiditate quo tenetur excepturi quo alias nulla!<\\/p>\\r\\n<blockquote cite=\\\"https:\\/\\/www.loremipzum.com\\/\\\">Et suscipit enim qui nulla praesentium et ducimus dignissimos aut facilis.<\\/blockquote>\\r\\n<h4>Ut asperiores tempore ad quaerat atque.<\\/h4>\\r\\n<p>Sed esse nihil qui odio voluptas\\u00a0<strong>In necessitatibus qui veritatis quisquam quo sunt illo eos ipsum fugiat<\\/strong>\\u00a0sed autem cupiditate. Eos minus debitis\\u00a0<em>Aut asperiores qui modi tempore sit velit quas<\\/em>\\u00a0et officiis sunt ad Quis esse? Qui maxime quia qui facere recusandae est impedit pariatur ut tempora natus. Ut tempore sunt id ducimus veritatis id quidem sequi et quam quidem. In omnis impedit quo dolorum et modi sunt! Sit totam fugiat aut alias rerum sit galisum eius cum laborum pariatur. Voluptatum nihil et mollitia quia aut quia voluptatem est laudantium repudiandae sed error exercitationem aut placeat nobis sed architecto quas.<\\/p>\\r\\n<pre><code>&lt;!-- Non amet reiciendis sit voluptatem voluptate. --&gt;<br \\/>&lt;sunt&gt;Provident voluptate.&lt;\\/sunt&gt;<br \\/>&lt;eveniet&gt;Ut totam culpa.&lt;\\/eveniet&gt;<br \\/>&lt;quod&gt;Et quam perspiciatis.&lt;\\/quod&gt;<br \\/>&lt;eaque&gt;Ut laboriosam consequatur?&lt;\\/eaque&gt;<\\/code><\\/pre>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2022-08-09 01:48:25\",\"created_by\":565,\"created_by_alias\":\"\",\"modified\":\"2022-08-09 03:05:23\",\"modified_by\":565,\"checked_out\":565,\"checked_out_time\":\"2022-08-09 03:05:14\",\"publish_up\":\"2022-08-09 01:48:25\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\",\\\"engage\\\":{\\\"comments_show\\\":\\\"-1\\\",\\\"comments_show_featured\\\":\\\"\\\",\\\"comments_show_category\\\":\\\"\\\",\\\"comments_show_article\\\":\\\"\\\",\\\"comments_ordering\\\":\\\"-1\\\",\\\"comments_enabled\\\":\\\"-1\\\",\\\"comments_close_after\\\":\\\"-1\\\",\\\"comments_notify_author\\\":\\\"\\\",\\\"comments_notify_users\\\":\\\"\\\"}}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":7,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_languages`
--

CREATE TABLE `virtus_languages` (
  `lang_id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_languages`
--

INSERT INTO `virtus_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 91, 'es-ES', 'Spanish (es-ES)', 'Español (España)', 'es', 'es_es', '', NULL, '', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_mail_templates`
--

CREATE TABLE `virtus_mail_templates` (
  `template_id` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_mail_templates`
--

INSERT INTO `virtus_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_engage.manage', 'com_engage', '', 'COM_ENGAGE_MAIL_MANAGE_SUBJECT', 'COM_ENGAGE_MAIL_MANAGE_BODY', 'COM_ENGAGE_MAIL_MANAGE_BODY_HTML', '', '{\"tags\":[\"SITEURL\",\"SITENAME\",\"RECIPIENT_NAME\",\"RECIPIENT_EMAIL\",\"CONTENT_LINK\",\"CONTENT_TITLE\",\"CONTENT_CATEGORY\",\"AVATAR_URL\",\"NAME\",\"EMAIL\",\"IP\",\"USER_AGENT\",\"DATE_LOCAL\",\"COMMENT_SANITIZED\",\"COMMENT_PLAINTEXT\",\"COMMENT_LINK\",\"PUBLISH_URL\",\"UNPUBLISH_URL\",\"DELETE_URL\",\"POSSIBLESPAM_URL\",\"SPAM_URL\",\"UNSPAM_URL\",\"UNSUBSCRIBE_URL\"]}'),
('com_engage.notify', 'com_engage', '', 'COM_ENGAGE_MAIL_NOTIFY_SUBJECT', 'COM_ENGAGE_MAIL_NOTIFY_BODY', 'COM_ENGAGE_MAIL_NOTIFY_BODY_HTML', '', '{\"tags\":[\"SITEURL\",\"SITENAME\",\"RECIPIENT_NAME\",\"RECIPIENT_EMAIL\",\"CONTENT_LINK\",\"CONTENT_TITLE\",\"CONTENT_CATEGORY\",\"AVATAR_URL\",\"NAME\",\"EMAIL\",\"IP\",\"USER_AGENT\",\"DATE_LOCAL\",\"COMMENT_SANITIZED\",\"COMMENT_PLAINTEXT\",\"COMMENT_LINK\",\"PUBLISH_URL\",\"UNPUBLISH_URL\",\"DELETE_URL\",\"POSSIBLESPAM_URL\",\"SPAM_URL\",\"UNSPAM_URL\",\"UNSUBSCRIBE_URL\"]}'),
('com_engage.notify_author', 'com_engage', '', 'COM_ENGAGE_MAIL_NOTIFY_AUTHOR_SUBJECT', 'COM_ENGAGE_MAIL_NOTIFY_AUTHOR_BODY', 'COM_ENGAGE_MAIL_NOTIFY_AUTHOR_BODY_HTML', '', '{\"tags\":[\"SITEURL\",\"SITENAME\",\"RECIPIENT_NAME\",\"RECIPIENT_EMAIL\",\"CONTENT_LINK\",\"CONTENT_TITLE\",\"CONTENT_CATEGORY\",\"AVATAR_URL\",\"NAME\",\"EMAIL\",\"IP\",\"USER_AGENT\",\"DATE_LOCAL\",\"COMMENT_SANITIZED\",\"COMMENT_PLAINTEXT\",\"COMMENT_LINK\",\"PUBLISH_URL\",\"UNPUBLISH_URL\",\"DELETE_URL\",\"POSSIBLESPAM_URL\",\"SPAM_URL\",\"UNSPAM_URL\",\"UNSUBSCRIBE_URL\"]}'),
('com_engage.notify_managers', 'com_engage', '', 'COM_ENGAGE_MAIL_NOTIFY_MANAGERS_SUBJECT', 'COM_ENGAGE_MAIL_NOTIFY_MANAGERS_BODY', 'COM_ENGAGE_MAIL_NOTIFY_MANAGERS_BODY_HTML', '', '{\"tags\":[\"SITEURL\",\"SITENAME\",\"RECIPIENT_NAME\",\"RECIPIENT_EMAIL\",\"CONTENT_LINK\",\"CONTENT_TITLE\",\"CONTENT_CATEGORY\",\"AVATAR_URL\",\"NAME\",\"EMAIL\",\"IP\",\"USER_AGENT\",\"DATE_LOCAL\",\"COMMENT_SANITIZED\",\"COMMENT_PLAINTEXT\",\"COMMENT_LINK\",\"PUBLISH_URL\",\"UNPUBLISH_URL\",\"DELETE_URL\",\"POSSIBLESPAM_URL\",\"SPAM_URL\",\"UNSPAM_URL\",\"UNSUBSCRIBE_URL\"]}'),
('com_engage.spam', 'com_engage', '', 'COM_ENGAGE_MAIL_SPAM_SUBJECT', 'COM_ENGAGE_MAIL_SPAM_BODY', 'COM_ENGAGE_MAIL_SPAM_BODY_HTML', '', '{\"tags\":[\"SITEURL\",\"SITENAME\",\"RECIPIENT_NAME\",\"RECIPIENT_EMAIL\",\"CONTENT_LINK\",\"CONTENT_TITLE\",\"CONTENT_CATEGORY\",\"AVATAR_URL\",\"NAME\",\"EMAIL\",\"IP\",\"USER_AGENT\",\"DATE_LOCAL\",\"COMMENT_SANITIZED\",\"COMMENT_PLAINTEXT\",\"COMMENT_LINK\",\"PUBLISH_URL\",\"UNPUBLISH_URL\",\"DELETE_URL\",\"POSSIBLESPAM_URL\",\"SPAM_URL\",\"UNSPAM_URL\",\"UNSUBSCRIBE_URL\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_system_privacyconsent.request.reminder', 'plg_system_privacyconsent', '', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_updatenotification.mail', 'plg_system_updatenotification', '', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_menu`
--

CREATE TABLE `virtus_menu` (
  `id` int NOT NULL,
  `menutype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_menu`
--

INSERT INTO `virtus_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 85, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 51, 60, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 52, 53, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 54, 55, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 63, 68, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 64, 65, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 66, 67, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 69, 78, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 79, 80, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 61, 62, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'Contacts/Contact Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 56, 57, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'Contacts/Contact Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 58, 59, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Smart-Search-Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 70, 71, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Smart-Search-Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 72, 73, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Smart-Search-Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 74, 75, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Smart-Search-Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 76, 77, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Inicio', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":3,\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":0,\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 11, 12, 1, '*', 0, NULL, NULL),
(102, 'mainmenu', 'Tematicas', 'tematicas', '', 'tematicas', '#', 'url', 1, 1, 1, 0, NULL, NULL, 0, 1, ' ', 13, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 13, 38, 0, '*', 0, NULL, NULL),
(103, 'mainmenu', 'Programación Estructurada', 'estructurada', '', 'tematicas/estructurada', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 102, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 14, 23, 0, '*', 0, NULL, NULL),
(104, 'mainmenu', 'Programación Orientada a Objetos', 'poo', '', 'tematicas/poo', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 102, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 24, 37, 0, '*', 0, NULL, NULL),
(105, 'mainmenu', 'Contacto', 'contacto', '', 'contacto', '#', 'url', 1, 1, 1, 0, NULL, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 47, 50, 0, '*', 0, NULL, NULL),
(106, 'mainmenu', 'Formulario de Contacto', 'formulario-contacto', '', 'contacto/formulario-contacto', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 105, 2, 7, NULL, NULL, 0, 1, ' ', 0, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 48, 49, 0, '*', 0, NULL, NULL),
(107, 'main', 'COM_ENGAGE', 'com-engage', '', 'com-engage', 'index.php?option=com_engage', 'component', 1, 1, 1, 231, NULL, NULL, 0, 1, 'class:component', 0, '{}', 81, 82, 0, '', 1, NULL, NULL),
(108, 'mainmenu', 'Conceptos Básicos', 'conceptos-basicos', '', 'tematicas/estructurada/conceptos-basicos', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 103, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 15, 16, 0, '*', 0, NULL, NULL),
(109, 'mainmenu', 'Control de Flujo', 'control-flujo', '', 'tematicas/estructurada/control-flujo', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', 1, 103, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 17, 18, 0, '*', 0, NULL, NULL),
(110, 'mainmenu', 'Funciones', 'funciones', '', 'tematicas/estructurada/funciones', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', 1, 103, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 19, 20, 0, '*', 0, NULL, NULL),
(111, 'mainmenu', 'Conceptos Avanzados', 'conceptos-avanzados', '', 'tematicas/estructurada/conceptos-avanzados', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', 1, 103, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 21, 22, 0, '*', 0, NULL, NULL),
(112, 'mainmenu', 'Conceptos Básicos', 'conceptos-basicos', '', 'tematicas/poo/conceptos-basicos', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 104, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 25, 26, 0, '*', 0, NULL, NULL),
(113, 'mainmenu', 'Clases y Objetos', 'clases-objetos', '', 'tematicas/poo/clases-objetos', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', 1, 104, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 27, 28, 0, '*', 0, NULL, NULL),
(114, 'mainmenu', 'Herencia', 'herencia', '', 'tematicas/poo/herencia', 'index.php?option=com_content&view=category&layout=blog&id=16', 'component', 1, 104, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 29, 30, 0, '*', 0, NULL, NULL),
(115, 'mainmenu', 'Encapsulamiento', 'encapsulamiento', '', 'tematicas/poo/encapsulamiento', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 104, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 31, 32, 0, '*', 0, NULL, NULL),
(116, 'mainmenu', 'Polimorfismo', 'polimorfismo', '', 'tematicas/poo/polimorfismo', 'index.php?option=com_content&view=category&layout=blog&id=18', 'component', 1, 104, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 33, 34, 0, '*', 0, NULL, NULL),
(117, 'mainmenu', 'Conceptos Avanzados', 'conceptos-avanzados', '', 'tematicas/poo/conceptos-avanzados', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 104, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 35, 36, 0, '*', 0, NULL, NULL),
(118, 'mainmenu', 'Búsqueda', 'busqueda', '', 'busqueda', '#', 'url', 1, 1, 1, 0, NULL, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 39, 40, 0, '*', 0, NULL, NULL),
(119, 'mainmenu', 'Acerca De', 'acerca-de', '', 'acerca-de', '#', 'url', 1, 1, 1, 0, NULL, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 41, 46, 0, '*', 0, NULL, NULL),
(120, 'mainmenu', '¿Que es VIRTUS?', 'acerca-de-virtus', '', 'acerca-de/acerca-de-virtus', 'index.php?option=com_content&view=article&id=2', 'component', 1, 119, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 42, 43, 0, '*', 0, NULL, NULL),
(121, 'mainmenu', 'Plataforma Aprendizaje', 'plataforma-aprendizaje', '', 'acerca-de/plataforma-aprendizaje', 'index.php?option=com_content&view=article&id=3', 'component', 1, 119, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 44, 45, 0, '*', 0, NULL, NULL),
(122, 'mainmenu', 'Usuario', 'usuario', '', 'usuario', '#', 'url', 1, 1, 1, 0, NULL, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}', 83, 84, 0, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_menu_types`
--

CREATE TABLE `virtus_menu_types` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_menu_types`
--

INSERT INTO `virtus_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_messages`
--

CREATE TABLE `virtus_messages` (
  `message_id` int UNSIGNED NOT NULL,
  `user_id_from` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_messages_cfg`
--

CREATE TABLE `virtus_messages_cfg` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_modules`
--

CREATE TABLE `virtus_modules` (
  `id` int NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_modules`
--

INSERT INTO `virtus_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', NULL, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', NULL, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'sidebar-2', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"customRegLinkMenu\":\"\",\"greeting\":1,\"name\":0,\"profilelink\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(17, 51, 'Ruta Navegación', '', '', 1, 'navhelper', NULL, NULL, NULL, NULL, 1, 'mod_breadcrumbs', 1, 1, '{\"showHere\":1,\"showHome\":1,\"homeText\":\"\",\"showLast\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":0,\"cache_time\":0,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 2, 'status', NULL, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Latest Actions', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Privacy Dashboard', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Login Support', '', '', 1, 'sidebar', NULL, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'System Dashboard', '', '', 1, 'cpanel-system', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Content Dashboard', '', '', 1, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus Dashboard', '', '', 1, 'cpanel-menus', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Components Dashboard', '', '', 1, 'cpanel-components', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Users Dashboard', '', '', 1, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Popular Articles', '', '', 3, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Recently Added Articles', '', '', 4, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Logged-in Users', '', '', 2, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Frontend Link', '', '', 5, 'status', NULL, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', NULL, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Post Install Messages', '', '', 3, 'status', NULL, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'User Status', '', '', 6, 'status', NULL, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'System', '', '', 2, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, '3rd Party', '', '', 4, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Help Dashboard', '', '', 1, 'cpanel-help', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Privacy Requests', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Privacy Status', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 94, 'Búsqueda', '', NULL, 1, '', NULL, NULL, NULL, NULL, 1, 'mod_finder', 1, 0, '{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":0,\"alt_label\":\"\",\"show_button\":1,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(110, 96, 'Akeeba Engage - Latest Comments', '', '', 1, '', NULL, NULL, NULL, NULL, 0, 'mod_engage_latest', 1, 1, '', 0, '*'),
(111, 111, 'Modulo Bienvenida Inicio', '', '<div class=\"jumbotron jumbotron-primary masthead\">\r\n<div class=\"col-md-6\" align=\"left\">\r\n<h1>Bienvenido</h1>\r\n<p>A la Plataforma de Enseñanza de Programación.</p>\r\n<div class=\"btn-actions\" style=\"margin-bottom: 20px;\">\r\n<p><a class=\"btn btn-success btn-lg\" href=\"index.php/acerca-de/plataforma-aprendizaje\">¿Que Somos?</a></p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<div class=\"video-wrapper\"><video controls=\"controls\" width=\"560\" height=\"315\">\r\n<source src=\"https://media.istockphoto.com/videos/black-male-creating-cellphone-app-on-computer-video-id1345397067\" /></video></div>\r\n</div>\r\n</div>', 1, 'masthead', NULL, NULL, NULL, NULL, 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"row-feature-primary\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_modules_menu`
--

CREATE TABLE `virtus_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_modules_menu`
--

INSERT INTO `virtus_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(111, 101);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_newsfeeds`
--

CREATE TABLE `virtus_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_overrider`
--

CREATE TABLE `virtus_overrider` (
  `id` int NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_postinstall_messages`
--

CREATE TABLE `virtus_postinstall_messages` (
  `postinstall_message_id` bigint UNSIGNED NOT NULL,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_postinstall_messages`
--

INSERT INTO `virtus_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 220, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 220, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 220, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 220, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 220, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_privacy_consents`
--

CREATE TABLE `virtus_privacy_consents` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_privacy_requests`
--

CREATE TABLE `virtus_privacy_requests` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_redirect_links`
--

CREATE TABLE `virtus_redirect_links` (
  `id` int UNSIGNED NOT NULL,
  `old_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_scheduler_tasks`
--

CREATE TABLE `virtus_scheduler_tasks` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint NOT NULL DEFAULT '0',
  `last_exit_code` int NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_schemas`
--

CREATE TABLE `virtus_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_schemas`
--

INSERT INTO `virtus_schemas` (`extension_id`, `version_id`) VALUES
(220, '4.1.3-2022-04-08'),
(231, '3.0.2-20220107');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_session`
--

CREATE TABLE `virtus_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint UNSIGNED DEFAULT NULL,
  `guest` tinyint UNSIGNED DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_session`
--

INSERT INTO `virtus_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x30646c3868716f346271647138386c6d636b6736397139336a64, 1, 0, 1660014201, 'joomla|s:3964:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjYwMDEwMzA1O3M6NDoibGFzdCI7aToxNjYwMDE0MTA2O3M6Mzoibm93IjtpOjE2NjAwMTQyMDE7fXM6NzoiY291bnRlciI7aTozNzQ7czo1OiJ0b2tlbiI7czozMjoiODBiNjgwYTNkMjhjODc4NzdkYjA2ZTExMzNmYjk1MzIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6ODp7czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJlcy1FUyI7fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjo0OntzOjQ6ImRhdGEiO047czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjI6ImlkIjthOjA6e319fX1zOjE0OiJjb21fY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMDoiY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fXM6NToibW9kYWwiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMToiY29tX2NvbnRlbnQiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fX19czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjg6ImNhdGVnb3J5IjtPOjg6InN0ZENsYXNzIjozOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19fXM6MTE6ImNvbV9wbHVnaW5zIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InBsdWdpbnMiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjU6e3M6Njoic2VhcmNoIjtzOjM6ImNhcCI7czo3OiJlbmFibGVkIjtzOjA6IiI7czo2OiJmb2xkZXIiO3M6MDoiIjtzOjc6ImVsZW1lbnQiO3M6MDoiIjtzOjY6ImFjY2VzcyI7czowOiIiO31zOjQ6Imxpc3QiO2E6NDp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjEwOiJmb2xkZXIgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjk6InNvcnRUYWJsZSI7czo2OiJmb2xkZXIiO3M6MTQ6ImRpcmVjdGlvblRhYmxlIjtzOjM6IkFTQyI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjc6Im1vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6MToiMCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6MTA6ImEucG9zaXRpb24iO3M6NToic3RhcnQiO2Q6MDt9fXM6OToiY2xpZW50X2lkIjtzOjE6IjAiO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX1zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6InN0eWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO3M6MToiMCI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnRlbXBsYXRlIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTI7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo1NjU7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czoyOiJUMyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJ0M2xvY2siO047fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 565, 'Administrador'),
(0x68387073333435646f306b763933697231653366747271336974, 0, 0, 1660014496, 'joomla|s:1368:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjg2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY2MDAwOTQ0MTtzOjQ6Imxhc3QiO2k6MTY2MDAxNDQ5MDtzOjM6Im5vdyI7aToxNjYwMDE0NDk2O31zOjU6InRva2VuIjtzOjMyOiIyYzZhZDdlYjMyZTBhMDViNTAxNGE4NTdhODk4NGYzZSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjcxOiJodHRwOi8vbG9jYWxob3N0L3ZpcnR1cy9pbmRleC5waHAvdGVtYXRpY2FzL2VzdHJ1Y3R1cmFkYS9hbGlhcy10ZW1hdGljYSI7czo0OiJkYXRhIjthOjA6e319fX1zOjEwOiJjb21fZW5nYWdlIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY29tbWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aToyO31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NTY1O31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 565, 'Administrador'),
(0x743668766271356962336271733461636c693035637639336c38, 1, 1, 1660012927, 'joomla|s:620:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjU7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjYwMDA5NTU4O3M6NDoibGFzdCI7aToxNjYwMDEyMDc4O3M6Mzoibm93IjtpOjE2NjAwMTI5Mjc7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x74716875716a69726866397068647361637033736d3166366a32, 0, 1, 1660014543, 'joomla|s:688:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjc7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjYwMDA5NzgxO3M6NDoibGFzdCI7aToxNjYwMDE0MDA3O3M6Mzoibm93IjtpOjE2NjAwMTQ1NDM7fXM6NToidG9rZW4iO3M6MzI6IjhkYTllNGY2MzkzYTU0ZjJiNzYxMjc5MTQzN2JiYzBjIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_tags`
--

CREATE TABLE `virtus_tags` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_tags`
--

INSERT INTO `virtus_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 565, '2022-07-09 22:51:41', '', 565, '2022-07-09 22:51:41', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_template_overrides`
--

CREATE TABLE `virtus_template_overrides` (
  `id` int UNSIGNED NOT NULL,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_template_styles`
--

CREATE TABLE `virtus_template_styles` (
  `id` int UNSIGNED NOT NULL,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_template_styles`
--

INSERT INTO `virtus_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '0', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12, 'purity_iii', 0, '1', 'purity_III - Predeterminado', 0, '', '{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"link_titles\":\"\",\"theme\":\"orange\",\"logotype\":\"image\",\"sitename\":\"Plataforma de Ense\\u00f1anza de la Programaci\\u00f3n\",\"slogan\":\"\",\"logoimage\":\"images\\/logo_white.png#joomlaImage:\\/\\/local-images\\/logo_white.png?width=400&height=131\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"default\",\"sublayout\":\"\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"slide\",\"navigation_animation_duration\":\"400\",\"mm_config\":\"{\\\"mainmenu\\\":{\\\"item-101\\\":{\\\"xicon\\\":\\\"fa fa-home\\\"},\\\"item-102\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":103,\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-book\\\"},\\\"item-103\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":108,\\\"width\\\":12}]]}},\\\"item-104\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":112,\\\"width\\\":12}]]}},\\\"item-118\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"position\\\":\\\"109\\\",\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-search\\\"},\\\"item-119\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":120,\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-group\\\"},\\\"item-105\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":106,\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-comment\\\"},\\\"item-122\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"position\\\":\\\"16\\\",\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-user\\\"}}}\",\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\",\"snippet_debug\":\"0\"}'),
(13, 'purity_iii', 0, '0', 'purity_III - Corporate', 0, '', '{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":null,\"link_titles\":null,\"theme\":\"\",\"logotype\":\"image\",\"sitename\":\"Plataforma de Ense\\u00f1anza de la Programaci\\u00f3n\",\"slogan\":\"\",\"logoimage\":\"images\\/logo_white.png#joomlaImage:\\/\\/local-images\\/logo_white.png?width=400&height=131\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"corporate\",\"sublayout\":\"\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"slide\",\"navigation_animation_duration\":\"400\",\"mm_config\":\"{\\\"mainmenu\\\":{\\\"item-101\\\":{\\\"xicon\\\":\\\"fa fa-home\\\"},\\\"item-102\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":103,\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-book\\\"},\\\"item-103\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":108,\\\"width\\\":12}]]}},\\\"item-104\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":112,\\\"width\\\":12}]]}},\\\"item-118\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"position\\\":\\\"109\\\",\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-search\\\"},\\\"item-119\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":120,\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-group\\\"},\\\"item-105\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"item\\\":106,\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-comment\\\"},\\\"item-122\\\":{\\\"sub\\\":{\\\"rows\\\":[[{\\\"position\\\":\\\"16\\\",\\\"width\\\":12}]]},\\\"xicon\\\":\\\"fa fa-user\\\"}}}\",\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":null,\"snippet_close_head\":null,\"snippet_open_body\":null,\"snippet_close_body\":null,\"snippet_debug\":\"0\",\"theme_extras_com_community\":null,\"theme_extras_com_easyblog\":null,\"theme_extras_com_easydiscuss\":null,\"theme_extras_com_easysocial\":null,\"theme_extras_com_joomprofile\":null,\"theme_extras_com_kunena\":null,\"theme_extras_com_mijoshop\":null,\"theme_extras_layout_glossary\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_ucm_base`
--

CREATE TABLE `virtus_ucm_base` (
  `ucm_id` int UNSIGNED NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_ucm_content`
--

CREATE TABLE `virtus_ucm_content` (
  `core_content_id` int UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int UNSIGNED DEFAULT NULL,
  `core_access` int UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_hits` int UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_catid` int UNSIGNED NOT NULL DEFAULT '0',
  `core_type_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `virtus_updates`
--

CREATE TABLE `virtus_updates` (
  `update_id` int NOT NULL,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `virtus_updates`
--

INSERT INTO `virtus_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(442, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '4.0.2.1', '', 'https://update.joomla.org/language/details4/ar-AA_details.xml', '', '', ''),
(443, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/bg-BG_details.xml', '', '', ''),
(444, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '4.0.4.2', '', 'https://update.joomla.org/language/details4/ca-ES_details.xml', '', '', ''),
(445, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '4.1.0.3', '', 'https://update.joomla.org/language/details4/zh-CN_details.xml', '', '', ''),
(446, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '4.1.4.2', '', 'https://update.joomla.org/language/details4/zh-TW_details.xml', '', '', ''),
(447, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/cs-CZ_details.xml', '', '', ''),
(448, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/da-DK_details.xml', '', '', ''),
(449, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/nl-NL_details.xml', '', '', ''),
(450, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-AU_details.xml', '', '', ''),
(451, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-CA_details.xml', '', '', ''),
(452, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-NZ_details.xml', '', '', ''),
(453, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-US_details.xml', '', '', ''),
(454, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/et-EE_details.xml', '', '', ''),
(455, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '4.1.1.2', '', 'https://update.joomla.org/language/details4/fi-FI_details.xml', '', '', ''),
(456, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/nl-BE_details.xml', '', '', ''),
(457, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '4.1.5.3', '', 'https://update.joomla.org/language/details4/fr-FR_details.xml', '', '', ''),
(458, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/ka-GE_details.xml', '', '', ''),
(459, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/de-DE_details.xml', '', '', ''),
(460, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/de-AT_details.xml', '', '', ''),
(461, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/de-LI_details.xml', '', '', ''),
(462, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/de-LU_details.xml', '', '', ''),
(463, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/de-CH_details.xml', '', '', ''),
(464, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/el-GR_details.xml', '', '', ''),
(465, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/hu-HU_details.xml', '', '', ''),
(466, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/it-IT_details.xml', '', '', ''),
(467, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/ja-JP_details.xml', '', '', ''),
(468, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/kk-KZ_details.xml', '', '', ''),
(469, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '4.0.3.1', '', 'https://update.joomla.org/language/details4/lt-LT_details.xml', '', '', ''),
(470, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '4.0.1.1', '', 'https://update.joomla.org/language/details4/nb-NO_details.xml', '', '', ''),
(471, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/fa-IR_details.xml', '', '', ''),
(472, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '4.1.0.5', '', 'https://update.joomla.org/language/details4/pl-PL_details.xml', '', '', ''),
(473, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '4.0.3.1', '', 'https://update.joomla.org/language/details4/pt-BR_details.xml', '', '', ''),
(474, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '4.0.0-rc4.2', '', 'https://update.joomla.org/language/details4/pt-PT_details.xml', '', '', ''),
(475, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/ro-RO_details.xml', '', '', ''),
(476, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '4.1.3.1', '', 'https://update.joomla.org/language/details4/ru-RU_details.xml', '', '', ''),
(477, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/sr-YU_details.xml', '', '', ''),
(478, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '4.0.6.1', '', 'https://update.joomla.org/language/details4/sk-SK_details.xml', '', '', ''),
(479, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/sl-SI_details.xml', '', '', ''),
(480, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/sv-SE_details.xml', '', '', ''),
(481, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/ta-IN_details.xml', '', '', ''),
(482, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/th-TH_details.xml', '', '', ''),
(483, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/tr-TR_details.xml', '', '', ''),
(484, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '4.0.3.2', '', 'https://update.joomla.org/language/details4/uk-UA_details.xml', '', '', ''),
(485, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/cy-GB_details.xml', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_update_sites`
--

CREATE TABLE `virtus_update_sites` (
  `update_site_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `virtus_update_sites`
--

INSERT INTO `virtus_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1660009443, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_4.xml', 1, 1660010321, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1660010322, '', NULL, NULL),
(4, '', 'extension', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', 1, 1660010323, '', NULL, NULL),
(5, '', 'extension', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', 1, 1660010324, '', NULL, NULL),
(6, 'Akeeba Engage Updates', 'extension', 'https://cdn.akeeba.com/updates/pkgengage.xml', 1, 1660010324, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_update_sites_extensions`
--

CREATE TABLE `virtus_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `virtus_update_sites_extensions`
--

INSERT INTO `virtus_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 220),
(2, 221),
(2, 228),
(3, 24),
(4, 229),
(5, 230),
(6, 243);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_usergroups`
--

CREATE TABLE `virtus_usergroups` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_usergroups`
--

INSERT INTO `virtus_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_users`
--

CREATE TABLE `virtus_users` (
  `id` int NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_users`
--

INSERT INTO `virtus_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(565, 'admin', 'Administrador', 'jejaras@correo.udistrital.edu.co', '$2y$10$CVxND2nuthMFi/ADD7wQg.k4LYN4ToCcuD1bg3nFgYIux2n9EBcfC', 0, 1, '2022-07-09 22:53:22', '2022-08-09 01:58:34', '0', '', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_user_keys`
--

CREATE TABLE `virtus_user_keys` (
  `id` int UNSIGNED NOT NULL,
  `user_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_user_notes`
--

CREATE TABLE `virtus_user_notes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_user_profiles`
--

CREATE TABLE `virtus_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `virtus_user_usergroup_map`
--

CREATE TABLE `virtus_user_usergroup_map` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_user_usergroup_map`
--

INSERT INTO `virtus_user_usergroup_map` (`user_id`, `group_id`) VALUES
(565, 8);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_viewlevels`
--

CREATE TABLE `virtus_viewlevels` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_viewlevels`
--

INSERT INTO `virtus_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_webauthn_credentials`
--

CREATE TABLE `virtus_webauthn_credentials` (
  `id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtus_workflows`
--

CREATE TABLE `virtus_workflows` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_workflows`
--

INSERT INTO `virtus_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2022-07-09 22:51:53', 565, '2022-07-09 22:51:53', 565, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_workflow_associations`
--

CREATE TABLE `virtus_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_workflow_associations`
--

INSERT INTO `virtus_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article'),
(3, 1, 'com_content.article');

-- --------------------------------------------------------

--
-- Table structure for table `virtus_workflow_stages`
--

CREATE TABLE `virtus_workflow_stages` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_workflow_stages`
--

INSERT INTO `virtus_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtus_workflow_transitions`
--

CREATE TABLE `virtus_workflow_transitions` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtus_workflow_transitions`
--

INSERT INTO `virtus_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `virtus_action_logs`
--
ALTER TABLE `virtus_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `virtus_action_logs_extensions`
--
ALTER TABLE `virtus_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtus_action_logs_users`
--
ALTER TABLE `virtus_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `virtus_action_log_config`
--
ALTER TABLE `virtus_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtus_assets`
--
ALTER TABLE `virtus_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `virtus_associations`
--
ALTER TABLE `virtus_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `virtus_banners`
--
ALTER TABLE `virtus_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_banner_clients`
--
ALTER TABLE `virtus_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `virtus_banner_tracks`
--
ALTER TABLE `virtus_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `virtus_categories`
--
ALTER TABLE `virtus_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_contact_details`
--
ALTER TABLE `virtus_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_content`
--
ALTER TABLE `virtus_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `virtus_contentitem_tag_map`
--
ALTER TABLE `virtus_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `virtus_content_frontpage`
--
ALTER TABLE `virtus_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `virtus_content_rating`
--
ALTER TABLE `virtus_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `virtus_content_types`
--
ALTER TABLE `virtus_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `virtus_engage_comments`
--
ALTER TABLE `virtus_engage_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtus_engage_comments_asset` (`asset_id`),
  ADD KEY `virtus_engage_comments_created_on` (`DESC`);

--
-- Indexes for table `virtus_engage_unsubscribe`
--
ALTER TABLE `virtus_engage_unsubscribe`
  ADD PRIMARY KEY (`asset_id`,`email`(100));

--
-- Indexes for table `virtus_extensions`
--
ALTER TABLE `virtus_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `virtus_fields`
--
ALTER TABLE `virtus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_fields_categories`
--
ALTER TABLE `virtus_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `virtus_fields_groups`
--
ALTER TABLE `virtus_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_fields_values`
--
ALTER TABLE `virtus_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `virtus_finder_filters`
--
ALTER TABLE `virtus_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `virtus_finder_links`
--
ALTER TABLE `virtus_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `virtus_finder_links_terms`
--
ALTER TABLE `virtus_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `virtus_finder_logging`
--
ALTER TABLE `virtus_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Indexes for table `virtus_finder_taxonomy`
--
ALTER TABLE `virtus_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `virtus_finder_taxonomy_map`
--
ALTER TABLE `virtus_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `virtus_finder_terms`
--
ALTER TABLE `virtus_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_finder_terms_common`
--
ALTER TABLE `virtus_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `virtus_finder_tokens`
--
ALTER TABLE `virtus_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_finder_tokens_aggregate`
--
ALTER TABLE `virtus_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `virtus_finder_types`
--
ALTER TABLE `virtus_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `virtus_history`
--
ALTER TABLE `virtus_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `virtus_languages`
--
ALTER TABLE `virtus_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `virtus_mail_templates`
--
ALTER TABLE `virtus_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indexes for table `virtus_menu`
--
ALTER TABLE `virtus_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_menu_types`
--
ALTER TABLE `virtus_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `virtus_messages`
--
ALTER TABLE `virtus_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `virtus_messages_cfg`
--
ALTER TABLE `virtus_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `virtus_modules`
--
ALTER TABLE `virtus_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_modules_menu`
--
ALTER TABLE `virtus_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `virtus_newsfeeds`
--
ALTER TABLE `virtus_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_overrider`
--
ALTER TABLE `virtus_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtus_postinstall_messages`
--
ALTER TABLE `virtus_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `virtus_privacy_consents`
--
ALTER TABLE `virtus_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `virtus_privacy_requests`
--
ALTER TABLE `virtus_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtus_redirect_links`
--
ALTER TABLE `virtus_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indexes for table `virtus_scheduler_tasks`
--
ALTER TABLE `virtus_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `virtus_schemas`
--
ALTER TABLE `virtus_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `virtus_session`
--
ALTER TABLE `virtus_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `virtus_tags`
--
ALTER TABLE `virtus_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `virtus_template_overrides`
--
ALTER TABLE `virtus_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indexes for table `virtus_template_styles`
--
ALTER TABLE `virtus_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `virtus_ucm_base`
--
ALTER TABLE `virtus_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `virtus_ucm_content`
--
ALTER TABLE `virtus_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `virtus_updates`
--
ALTER TABLE `virtus_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `virtus_update_sites`
--
ALTER TABLE `virtus_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `virtus_update_sites_extensions`
--
ALTER TABLE `virtus_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `virtus_usergroups`
--
ALTER TABLE `virtus_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `virtus_users`
--
ALTER TABLE `virtus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `virtus_user_keys`
--
ALTER TABLE `virtus_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `virtus_user_notes`
--
ALTER TABLE `virtus_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `virtus_user_profiles`
--
ALTER TABLE `virtus_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `virtus_user_usergroup_map`
--
ALTER TABLE `virtus_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `virtus_viewlevels`
--
ALTER TABLE `virtus_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `virtus_webauthn_credentials`
--
ALTER TABLE `virtus_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indexes for table `virtus_workflows`
--
ALTER TABLE `virtus_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `virtus_workflow_associations`
--
ALTER TABLE `virtus_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indexes for table `virtus_workflow_stages`
--
ALTER TABLE `virtus_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indexes for table `virtus_workflow_transitions`
--
ALTER TABLE `virtus_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `virtus_action_logs`
--
ALTER TABLE `virtus_action_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `virtus_action_logs_extensions`
--
ALTER TABLE `virtus_action_logs_extensions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `virtus_action_log_config`
--
ALTER TABLE `virtus_action_log_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `virtus_assets`
--
ALTER TABLE `virtus_assets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `virtus_banners`
--
ALTER TABLE `virtus_banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_banner_clients`
--
ALTER TABLE `virtus_banner_clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_categories`
--
ALTER TABLE `virtus_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `virtus_contact_details`
--
ALTER TABLE `virtus_contact_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virtus_content`
--
ALTER TABLE `virtus_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `virtus_content_types`
--
ALTER TABLE `virtus_content_types`
  MODIFY `type_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `virtus_engage_comments`
--
ALTER TABLE `virtus_engage_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `virtus_extensions`
--
ALTER TABLE `virtus_extensions`
  MODIFY `extension_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `virtus_fields`
--
ALTER TABLE `virtus_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_fields_groups`
--
ALTER TABLE `virtus_fields_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_finder_filters`
--
ALTER TABLE `virtus_finder_filters`
  MODIFY `filter_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_finder_links`
--
ALTER TABLE `virtus_finder_links`
  MODIFY `link_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `virtus_finder_taxonomy`
--
ALTER TABLE `virtus_finder_taxonomy`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `virtus_finder_terms`
--
ALTER TABLE `virtus_finder_terms`
  MODIFY `term_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1136;

--
-- AUTO_INCREMENT for table `virtus_finder_types`
--
ALTER TABLE `virtus_finder_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `virtus_history`
--
ALTER TABLE `virtus_history`
  MODIFY `version_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `virtus_languages`
--
ALTER TABLE `virtus_languages`
  MODIFY `lang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `virtus_menu`
--
ALTER TABLE `virtus_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `virtus_menu_types`
--
ALTER TABLE `virtus_menu_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virtus_messages`
--
ALTER TABLE `virtus_messages`
  MODIFY `message_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_modules`
--
ALTER TABLE `virtus_modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `virtus_newsfeeds`
--
ALTER TABLE `virtus_newsfeeds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_overrider`
--
ALTER TABLE `virtus_overrider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `virtus_postinstall_messages`
--
ALTER TABLE `virtus_postinstall_messages`
  MODIFY `postinstall_message_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `virtus_privacy_consents`
--
ALTER TABLE `virtus_privacy_consents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_privacy_requests`
--
ALTER TABLE `virtus_privacy_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_redirect_links`
--
ALTER TABLE `virtus_redirect_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_scheduler_tasks`
--
ALTER TABLE `virtus_scheduler_tasks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_tags`
--
ALTER TABLE `virtus_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virtus_template_overrides`
--
ALTER TABLE `virtus_template_overrides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_template_styles`
--
ALTER TABLE `virtus_template_styles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `virtus_ucm_content`
--
ALTER TABLE `virtus_ucm_content`
  MODIFY `core_content_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_updates`
--
ALTER TABLE `virtus_updates`
  MODIFY `update_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `virtus_update_sites`
--
ALTER TABLE `virtus_update_sites`
  MODIFY `update_site_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `virtus_usergroups`
--
ALTER TABLE `virtus_usergroups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `virtus_users`
--
ALTER TABLE `virtus_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `virtus_user_keys`
--
ALTER TABLE `virtus_user_keys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_user_notes`
--
ALTER TABLE `virtus_user_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtus_viewlevels`
--
ALTER TABLE `virtus_viewlevels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `virtus_workflows`
--
ALTER TABLE `virtus_workflows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virtus_workflow_stages`
--
ALTER TABLE `virtus_workflow_stages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virtus_workflow_transitions`
--
ALTER TABLE `virtus_workflow_transitions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
