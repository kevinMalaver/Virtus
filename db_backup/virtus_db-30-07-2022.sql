-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: virtus_db
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `virtus_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `virtus_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `virtus_db`;

--
-- Table structure for table `virtus_action_log_config`
--

DROP TABLE IF EXISTS `virtus_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_action_log_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_action_log_config`
--

LOCK TABLES `virtus_action_log_config` WRITE;
/*!40000 ALTER TABLE `virtus_action_log_config` DISABLE KEYS */;
INSERT INTO `virtus_action_log_config` VALUES (1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `virtus_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_action_logs`
--

DROP TABLE IF EXISTS `virtus_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_action_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_action_logs`
--

LOCK TABLES `virtus_action_logs` WRITE;
/*!40000 ALTER TABLE `virtus_action_logs` DISABLE KEYS */;
INSERT INTO `virtus_action_logs` VALUES (1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2022-07-09 22:59:39','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(2,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2022-07-09 23:00:31','com_users',565,565,'COM_ACTIONLOGS_DISABLED'),(3,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2022-07-09 23:00:39','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(4,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-09 23:01:19','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(5,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-10 00:18:18','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(6,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-10 03:01:48','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(7,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-11 03:46:31','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(8,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-11 13:45:55','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(9,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":225,\"name\":\"Spanish (es-ES)\",\"extension_name\":\"Spanish (es-ES)\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-11 14:27:48','com_installer',565,225,'COM_ACTIONLOGS_DISABLED'),(10,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":226,\"name\":\"Spanish (es-ES)\",\"extension_name\":\"Spanish (es-ES)\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-11 14:27:48','com_installer',565,226,'COM_ACTIONLOGS_DISABLED'),(11,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":227,\"name\":\"Spanish (es-ES)\",\"extension_name\":\"Spanish (es-ES)\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-11 14:27:48','com_installer',565,227,'COM_ACTIONLOGS_DISABLED'),(12,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":228,\"name\":\"Spanish (es-ES) Language Pack\",\"extension_name\":\"Spanish (es-ES) Language Pack\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-11 14:27:48','com_installer',565,228,'COM_ACTIONLOGS_DISABLED'),(13,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-11 15:23:27','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(14,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-11 15:23:32','com_users',565,565,'COM_ACTIONLOGS_DISABLED'),(15,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-11 15:23:37','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(16,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-15 20:30:32','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(17,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-18 23:12:53','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(18,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}','2022-07-18 23:14:35','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(19,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-19 17:54:32','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(20,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-29 04:05:24','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(21,'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":229,\"name\":\"T3 Framework\",\"extension_name\":\"T3 Framework\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-29 04:07:45','com_installer',565,229,'COM_ACTIONLOGS_DISABLED'),(22,'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED','{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":230,\"name\":\"purity_III\",\"extension_name\":\"purity_III\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-29 04:10:32','com_installer',565,230,'COM_ACTIONLOGS_DISABLED'),(23,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-30 02:07:26','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(24,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:08:38','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(25,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:08:56','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(26,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:09:38','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(27,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_small.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:18:57','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(28,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:19:05','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(29,'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED','{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":null,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:19:32','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(30,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_white_large.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:23:07','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(31,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:23:16','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(32,'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED','{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":null,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:25:29','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(33,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_white_large.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:25:34','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(34,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:25:40','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(35,'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED','{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":null,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:26:50','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(36,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_white.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:26:55','com_media.file',565,0,'COM_ACTIONLOGS_DISABLED'),(37,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:27:01','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(38,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"purity_III - Predeterminado\",\"extension_name\":\"purity_III - Predeterminado\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:27:02','com_templates.style',565,12,'COM_ACTIONLOGS_DISABLED'),(39,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Inicio\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:35:33','com_menus.item',565,101,'COM_ACTIONLOGS_DISABLED'),(40,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}','2022-07-30 02:35:33','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(41,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"2\",\"title\":\"Sin categor\\u00eda\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=2\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:37:23','com_categories.category',565,2,'COM_ACTIONLOGS_DISABLED'),(42,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}','2022-07-30 02:37:23','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(43,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}','2022-07-30 02:37:34','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(44,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:40:48','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(45,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":13,\"title\":\"purity_III - Predeterminado (2)\",\"extension_name\":\"purity_III - Predeterminado (2)\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:43:19','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(46,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Magazine\",\"extension_name\":\"purity_III - Magazine\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:46:14','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(47,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Magazine\",\"extension_name\":\"purity_III - Magazine\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:48:01','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(48,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Inicio\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:51:47','com_menus.item',565,101,'COM_ACTIONLOGS_DISABLED'),(49,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__menu\"}','2022-07-30 02:51:47','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(50,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:54:32','com_modules.module',565,16,'COM_ACTIONLOGS_DISABLED'),(51,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:54:32','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(52,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2022-07-30 02:54:55','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(53,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:55:05','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(54,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Magazine\",\"extension_name\":\"purity_III - Magazine\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:57:05','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(55,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:57:13','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(56,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:58:21','com_modules.module',565,1,'COM_ACTIONLOGS_DISABLED'),(57,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:58:21','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(58,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:58:32','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(59,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta navegaci\\u00f3n\",\"extension_name\":\"Ruta navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:59:00','com_modules.module',565,17,'COM_ACTIONLOGS_DISABLED'),(60,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:59:00','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(61,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:59:04','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(62,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 02:59:17','com_modules.module',565,17,'COM_ACTIONLOGS_DISABLED'),(63,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:59:17','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(64,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 02:59:19','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(65,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:00:07','com_modules.module',565,17,'COM_ACTIONLOGS_DISABLED'),(66,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 03:00:07','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(67,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:00:31','com_modules.module',565,17,'COM_ACTIONLOGS_DISABLED'),(68,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 03:00:31','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(69,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:04:23','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(70,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 03:04:29','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(71,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"extension_name\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:04:51','com_modules.module',565,17,'COM_ACTIONLOGS_DISABLED'),(72,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 03:04:51','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(73,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 03:05:10','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(74,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 03:06:03','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(75,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED','{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Ruta Navegaci\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:06:03','com_modules.module',565,17,'COM_ACTIONLOGS_DISABLED'),(76,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}','2022-07-30 03:07:17','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(77,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Programaci\\u00f3n Estructurada \",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:09:36','com_categories.category',565,8,'COM_ACTIONLOGS_DISABLED'),(78,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}','2022-07-30 03:09:53','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(79,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Tematicas\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:16:48','com_menus.item',565,102,'COM_ACTIONLOGS_DISABLED'),(80,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Programaci\\u00f3n Estructurada\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:23:01','com_menus.item',565,103,'COM_ACTIONLOGS_DISABLED'),(81,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Programaci\\u00f3n Estructurada\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:23:24','com_menus.item',565,103,'COM_ACTIONLOGS_DISABLED'),(82,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:26:06','com_categories.category',565,9,'COM_ACTIONLOGS_DISABLED'),(83,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__categories\"}','2022-07-30 03:26:23','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(84,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:27:50','com_menus.item',565,104,'COM_ACTIONLOGS_DISABLED'),(85,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:28:16','com_menus.item',565,104,'COM_ACTIONLOGS_DISABLED'),(86,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Contacto\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:30:26','com_menus.item',565,105,'COM_ACTIONLOGS_DISABLED'),(87,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CONTACT\",\"id\":1,\"title\":\"VIRTUS\",\"itemlink\":\"index.php?option=com_contact&task=contact.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:41:50','com_contact.contact',565,1,'COM_ACTIONLOGS_DISABLED'),(88,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__contact_details\"}','2022-07-30 03:42:01','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(89,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Formulario de Contacto\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:42:44','com_menus.item',565,106,'COM_ACTIONLOGS_DISABLED'),(90,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT','{\"action\":\"logout\",\"id\":565,\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2022-07-30 03:45:02','com_users',565,565,'COM_ACTIONLOGS_DISABLED'),(91,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CONTACT\",\"id\":\"1\",\"title\":\"VIRTUS\",\"itemlink\":\"index.php?option=com_contact&task=contact.edit&id=1\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:47:28','com_contact.contact',565,1,'COM_ACTIONLOGS_DISABLED'),(92,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__contact_details\"}','2022-07-30 03:47:28','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(93,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}','2022-07-30 03:49:07','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(94,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}','2022-07-30 03:49:10','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(95,'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED','{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":93,\"title\":\"plg_captcha_recaptcha\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=93\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:49:10','com_plugins.plugin',565,93,'COM_ACTIONLOGS_DISABLED'),(96,'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:49:23','com_config.application',565,0,'COM_ACTIONLOGS_DISABLED'),(97,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"93\",\"title\":\"plg_captcha_recaptcha\",\"extension_name\":\"plg_captcha_recaptcha\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=93\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 03:55:35','com_plugins.plugin',565,93,'COM_ACTIONLOGS_DISABLED'),(98,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}','2022-07-30 03:55:35','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(99,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2022-07-30 03:55:55','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(100,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}','2022-07-30 03:56:11','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(101,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__extensions\"}','2022-07-30 03:56:30','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(102,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 04:34:12','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(103,'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":229,\"name\":\"T3 Framework\",\"extension_name\":\"T3 Framework\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 04:35:29','com_installer',565,229,'COM_ACTIONLOGS_DISABLED'),(104,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2022-07-30 22:48:11','com_users',565,0,'COM_ACTIONLOGS_DISABLED'),(105,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 22:56:35','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(106,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 22:56:50','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(107,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 22:58:07','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED'),(108,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:05:07','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(109,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:05:21','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(110,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:06:39','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(111,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:06:39','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(112,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:09:46','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(113,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:09:46','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(114,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:16:51','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(115,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:16:51','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(116,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:17:09','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(117,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:17:09','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(118,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:17:37','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(119,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:17:37','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(120,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:17:50','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(121,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:17:50','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(122,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:18:07','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(123,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:18:07','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(124,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:18:23','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(125,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:19:32','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(126,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:19:37','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(127,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:19:51','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(128,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:19:51','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(129,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:20:12','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(130,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:20:12','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(131,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:22:28','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(132,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:22:28','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(133,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"B\\u00fasqueda\",\"extension_name\":\"B\\u00fasqueda\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:22:44','com_modules.module',565,109,'COM_ACTIONLOGS_DISABLED'),(134,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":565,\"title\":\"Administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\",\"table\":\"#__modules\"}','2022-07-30 23:22:44','com_checkin',565,565,'COM_ACTIONLOGS_DISABLED'),(135,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"13\",\"title\":\"purity_III - Corporate\",\"extension_name\":\"purity_III - Corporate\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=13\",\"userid\":565,\"username\":\"Administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=565\"}','2022-07-30 23:25:33','com_templates.style',565,13,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `virtus_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_action_logs_extensions`
--

DROP TABLE IF EXISTS `virtus_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_action_logs_extensions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_action_logs_extensions`
--

LOCK TABLES `virtus_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `virtus_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `virtus_action_logs_extensions` VALUES (1,'com_banners'),(2,'com_cache'),(3,'com_categories'),(4,'com_config'),(5,'com_contact'),(6,'com_content'),(7,'com_installer'),(8,'com_media'),(9,'com_menus'),(10,'com_messages'),(11,'com_modules'),(12,'com_newsfeeds'),(13,'com_plugins'),(14,'com_redirect'),(15,'com_tags'),(16,'com_templates'),(17,'com_users'),(18,'com_checkin'),(19,'com_scheduler');
/*!40000 ALTER TABLE `virtus_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_action_logs_users`
--

DROP TABLE IF EXISTS `virtus_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_action_logs_users` (
  `user_id` int unsigned NOT NULL,
  `notify` tinyint unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_action_logs_users`
--

LOCK TABLES `virtus_action_logs_users` WRITE;
/*!40000 ALTER TABLE `virtus_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_assets`
--

DROP TABLE IF EXISTS `virtus_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_assets`
--

LOCK TABLES `virtus_assets` WRITE;
/*!40000 ALTER TABLE `virtus_assets` DISABLE KEYS */;
INSERT INTO `virtus_assets` VALUES (1,0,0,173,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(8,1,17,42,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),(9,1,43,44,1,'com_cpanel','com_cpanel','{}'),(10,1,45,46,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,47,50,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),(12,1,51,52,1,'com_login','com_login','{}'),(14,1,53,54,1,'com_massmail','com_massmail','{}'),(15,1,55,56,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,57,60,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),(17,1,61,62,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,63,138,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),(19,1,139,142,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(20,1,143,144,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),(21,1,145,146,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),(23,1,147,148,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),(24,1,153,156,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),(26,1,157,158,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Sin categoría','{}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),(30,19,140,141,2,'com_newsfeeds.category.5','Uncategorised','{}'),(32,24,154,155,2,'com_users.category.7','Uncategorised','{}'),(33,1,159,160,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,161,162,1,'com_joomlaupdate','com_joomlaupdate','{}'),(35,1,163,164,1,'com_tags','com_tags','{}'),(36,1,165,166,1,'com_contenthistory','com_contenthistory','{}'),(37,1,167,168,1,'com_ajax','com_ajax','{}'),(38,1,169,170,1,'com_postinstall','com_postinstall','{}'),(39,18,64,65,2,'com_modules.module.1','Main Menu','{}'),(40,18,66,67,2,'com_modules.module.2','Login','{}'),(41,18,68,69,2,'com_modules.module.3','Popular Articles','{}'),(42,18,70,71,2,'com_modules.module.4','Recently Added Articles','{}'),(43,18,72,73,2,'com_modules.module.8','Toolbar','{}'),(44,18,74,75,2,'com_modules.module.9','Notifications','{}'),(45,18,76,77,2,'com_modules.module.10','Logged-in Users','{}'),(46,18,78,79,2,'com_modules.module.12','Admin Menu','{}'),(48,18,84,85,2,'com_modules.module.14','User Status','{}'),(49,18,86,87,2,'com_modules.module.15','Title','{}'),(50,18,88,89,2,'com_modules.module.16','Login Form','{}'),(51,18,90,91,2,'com_modules.module.17','Ruta Navegación','{}'),(52,18,92,93,2,'com_modules.module.79','Multilanguage status','{}'),(53,18,96,97,2,'com_modules.module.86','Joomla Version','{}'),(54,16,58,59,2,'com_menus.menu.1','Main Menu','{}'),(55,18,100,101,2,'com_modules.module.87','Sample Data','{}'),(56,8,20,37,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}'),(57,56,21,22,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}'),(58,56,23,24,3,'com_content.transition.1','Unpublish','{}'),(59,56,25,26,3,'com_content.transition.2','Publish','{}'),(60,56,27,28,3,'com_content.transition.3','Trash','{}'),(61,56,29,30,3,'com_content.transition.4','Archive','{}'),(62,56,31,32,3,'com_content.transition.5','Feature','{}'),(63,56,33,34,3,'com_content.transition.6','Unfeature','{}'),(64,56,35,36,3,'com_content.transition.7','Publish & Feature','{}'),(65,1,149,150,1,'com_privacy','com_privacy','{}'),(66,1,151,152,1,'com_actionlogs','com_actionlogs','{}'),(67,18,80,81,2,'com_modules.module.88','Latest Actions','{}'),(68,18,82,83,2,'com_modules.module.89','Privacy Dashboard','{}'),(70,18,94,95,2,'com_modules.module.103','Site','{}'),(71,18,98,99,2,'com_modules.module.104','System','{}'),(72,18,102,103,2,'com_modules.module.91','System Dashboard','{}'),(73,18,104,105,2,'com_modules.module.92','Content Dashboard','{}'),(74,18,106,107,2,'com_modules.module.93','Menus Dashboard','{}'),(75,18,108,109,2,'com_modules.module.94','Components Dashboard','{}'),(76,18,110,111,2,'com_modules.module.95','Users Dashboard','{}'),(77,18,112,113,2,'com_modules.module.99','Frontend Link','{}'),(78,18,114,115,2,'com_modules.module.100','Messages','{}'),(79,18,116,117,2,'com_modules.module.101','Post Install Messages','{}'),(80,18,118,119,2,'com_modules.module.102','User Status','{}'),(82,18,120,121,2,'com_modules.module.105','3rd Party','{}'),(83,18,122,123,2,'com_modules.module.106','Help Dashboard','{}'),(84,18,124,125,2,'com_modules.module.107','Privacy Requests','{}'),(85,18,126,127,2,'com_modules.module.108','Privacy Status','{}'),(86,18,128,129,2,'com_modules.module.96','Popular Articles','{}'),(87,18,130,131,2,'com_modules.module.97','Recently Added Articles','{}'),(88,18,132,133,2,'com_modules.module.98','Logged-in Users','{}'),(89,18,134,135,2,'com_modules.module.90','Login Support','{}'),(90,1,171,172,1,'com_scheduler','com_scheduler','{}'),(91,11,48,49,2,'com_languages.language.2','Spanish (es-ES)','{}'),(92,8,38,39,2,'com_content.category.8','Programación Estructurada ','{}'),(93,8,40,41,2,'com_content.category.9','Programación Orientada a Objetos','{}'),(94,18,136,137,2,'com_modules.module.109','Búsqueda','{}');
/*!40000 ALTER TABLE `virtus_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_associations`
--

DROP TABLE IF EXISTS `virtus_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_associations`
--

LOCK TABLES `virtus_associations` WRITE;
/*!40000 ALTER TABLE `virtus_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_banner_clients`
--

DROP TABLE IF EXISTS `virtus_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_banner_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_banner_clients`
--

LOCK TABLES `virtus_banner_clients` WRITE;
/*!40000 ALTER TABLE `virtus_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_banner_tracks`
--

DROP TABLE IF EXISTS `virtus_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int unsigned NOT NULL,
  `banner_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_banner_tracks`
--

LOCK TABLES `virtus_banner_tracks` WRITE;
/*!40000 ALTER TABLE `virtus_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_banners`
--

DROP TABLE IF EXISTS `virtus_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_banners`
--

LOCK TABLES `virtus_banners` WRITE;
/*!40000 ALTER TABLE `virtus_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_categories`
--

DROP TABLE IF EXISTS `virtus_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_categories`
--

LOCK TABLES `virtus_categories` WRITE;
/*!40000 ALTER TABLE `virtus_categories` DISABLE KEYS */;
INSERT INTO `virtus_categories` VALUES (1,0,0,0,15,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',565,'2022-07-09 22:52:00',565,'2022-07-09 22:52:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Sin categoría','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-09 22:52:00',565,'2022-07-30 02:37:23',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-09 22:52:00',565,'2022-07-09 22:52:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-09 22:52:00',565,'2022-07-09 22:52:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-09 22:52:00',565,'2022-07-09 22:52:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-09 22:52:00',565,'2022-07-09 22:52:00',0,'*',1),(8,92,1,11,12,1,'structurada','com_content','Programación Estructurada ','structurada','','<p>La programación estructurada es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando únicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva.</p>',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-30 03:09:36',565,'2022-07-30 03:09:36',0,'*',1),(9,93,1,13,14,1,'poo','com_content','Programación Orientada a Objetos','poo','','<p>La Programación Orientada a Objetos (POO) es un paradigma de programación, es decir, un modelo o un estilo de programación que nos da unas guías sobre cómo trabajar con él. Se basa en el concepto de clases y objetos. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. </p>',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\",\"t3_extrafields\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',565,'2022-07-30 03:26:06',565,'2022-07-30 03:26:06',0,'*',1);
/*!40000 ALTER TABLE `virtus_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_contact_details`
--

DROP TABLE IF EXISTS `virtus_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_contact_details`
--

LOCK TABLES `virtus_contact_details` WRITE;
/*!40000 ALTER TABLE `virtus_contact_details` DISABLE KEYS */;
INSERT INTO `virtus_contact_details` VALUES (1,'VIRTUS','virtus','','','Bogotá','','Colombia','','','','','','fmartinezro@gmail.com',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"contact_layout\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,4,1,'','http://grupovirtus.org/','','','','*','2022-07-30 03:41:50',565,'','2022-07-30 03:47:28',565,'','','{\"robots\":\"\",\"rights\":\"\"}',0,NULL,NULL,2,8);
/*!40000 ALTER TABLE `virtus_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_content`
--

DROP TABLE IF EXISTS `virtus_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_content`
--

LOCK TABLES `virtus_content` WRITE;
/*!40000 ALTER TABLE `virtus_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_content_frontpage`
--

DROP TABLE IF EXISTS `virtus_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_content_frontpage`
--

LOCK TABLES `virtus_content_frontpage` WRITE;
/*!40000 ALTER TABLE `virtus_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_content_rating`
--

DROP TABLE IF EXISTS `virtus_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int unsigned NOT NULL DEFAULT '0',
  `rating_count` int unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_content_rating`
--

LOCK TABLES `virtus_content_rating` WRITE;
/*!40000 ALTER TABLE `virtus_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_content_types`
--

DROP TABLE IF EXISTS `virtus_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_content_types` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_content_types`
--

LOCK TABLES `virtus_content_types` WRITE;
/*!40000 ALTER TABLE `virtus_content_types` DISABLE KEYS */;
INSERT INTO `virtus_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `virtus_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_contentitem_tag_map`
--

DROP TABLE IF EXISTS `virtus_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_contentitem_tag_map`
--

LOCK TABLES `virtus_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `virtus_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_extensions`
--

DROP TABLE IF EXISTS `virtus_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_extensions` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_extensions`
--

LOCK TABLES `virtus_extensions` WRITE;
/*!40000 ALTER TABLE `virtus_extensions` DISABLE KEYS */;
INSERT INTO `virtus_extensions` VALUES (1,0,'com_wrapper','component','com_wrapper',NULL,'',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL),(2,0,'com_admin','component','com_admin',NULL,'',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(3,0,'com_banners','component','com_banners',NULL,'',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL),(4,0,'com_cache','component','com_cache',NULL,'',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(5,0,'com_categories','component','com_categories',NULL,'',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(6,0,'com_checkin','component','com_checkin',NULL,'',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(7,0,'com_contact','component','com_contact',NULL,'',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL),(8,0,'com_cpanel','component','com_cpanel',NULL,'',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(9,0,'com_installer','component','com_installer',NULL,'',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL),(10,0,'com_languages','component','com_languages',NULL,'',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"es-ES\"}','',NULL,NULL,0,0,NULL),(11,0,'com_login','component','com_login',NULL,'',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(12,0,'com_media','component','com_media',NULL,'',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL),(13,0,'com_menus','component','com_menus',NULL,'',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL),(14,0,'com_messages','component','com_messages',NULL,'',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(15,0,'com_modules','component','com_modules',NULL,'',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL),(16,0,'com_newsfeeds','component','com_newsfeeds',NULL,'',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL),(17,0,'com_plugins','component','com_plugins',NULL,'',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(18,0,'com_templates','component','com_templates',NULL,'',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','',NULL,NULL,0,0,NULL),(19,0,'com_content','component','com_content',NULL,'',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL),(20,0,'com_config','component','com_config',NULL,'',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL),(21,0,'com_redirect','component','com_redirect',NULL,'',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(22,0,'com_users','component','com_users',NULL,'',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL),(23,0,'com_finder','component','com_finder',NULL,'',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL),(24,0,'com_joomlaupdate','component','com_joomlaupdate',NULL,'',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','',NULL,NULL,0,0,NULL),(25,0,'com_tags','component','com_tags',NULL,'',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL),(26,0,'com_contenthistory','component','com_contenthistory',NULL,'',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL),(27,0,'com_ajax','component','com_ajax',NULL,'',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL),(28,0,'com_postinstall','component','com_postinstall',NULL,'',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(29,0,'com_fields','component','com_fields',NULL,'',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL),(30,0,'com_associations','component','com_associations',NULL,'',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(31,0,'com_privacy','component','com_privacy',NULL,'',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL),(32,0,'com_actionlogs','component','com_actionlogs',NULL,'',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL),(33,0,'com_workflow','component','com_workflow',NULL,'',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"June 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL),(34,0,'com_mails','component','com_mails',NULL,'',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"January 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(35,0,'com_scheduler','component','com_scheduler',NULL,'',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL),(36,0,'lib_joomla','library','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"1bcfd27fc7a43b08993eac5272e008fd\"}','',NULL,NULL,0,0,NULL),(37,0,'lib_phpass','library','phpass',NULL,'',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL),(38,0,'mod_articles_archive','module','mod_articles_archive',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL),(39,0,'mod_articles_latest','module','mod_articles_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL),(40,0,'mod_articles_popular','module','mod_articles_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL),(41,0,'mod_banners','module','mod_banners',NULL,'',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL),(42,0,'mod_breadcrumbs','module','mod_breadcrumbs',NULL,'',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL),(43,0,'mod_custom','module','mod_custom',NULL,'',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),(44,0,'mod_feed','module','mod_feed',NULL,'',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),(45,0,'mod_footer','module','mod_footer',NULL,'',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL),(46,0,'mod_login','module','mod_login',NULL,'',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),(47,0,'mod_menu','module','mod_menu',NULL,'',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),(48,0,'mod_articles_news','module','mod_articles_news',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL),(49,0,'mod_random_image','module','mod_random_image',NULL,'',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL),(50,0,'mod_related_items','module','mod_related_items',NULL,'',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL),(51,0,'mod_stats','module','mod_stats',NULL,'',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL),(52,0,'mod_syndicate','module','mod_syndicate',NULL,'',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL),(53,0,'mod_users_latest','module','mod_users_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL),(54,0,'mod_whosonline','module','mod_whosonline',NULL,'',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL),(55,0,'mod_wrapper','module','mod_wrapper',NULL,'',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL),(56,0,'mod_articles_category','module','mod_articles_category',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL),(57,0,'mod_articles_categories','module','mod_articles_categories',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL),(58,0,'mod_languages','module','mod_languages',NULL,'',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL),(59,0,'mod_finder','module','mod_finder',NULL,'',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL),(60,0,'mod_custom','module','mod_custom',NULL,'',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),(61,0,'mod_feed','module','mod_feed',NULL,'',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),(62,0,'mod_latest','module','mod_latest',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL),(63,0,'mod_logged','module','mod_logged',NULL,'',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL),(64,0,'mod_login','module','mod_login',NULL,'',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),(65,0,'mod_loginsupport','module','mod_loginsupport',NULL,'',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"June 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL),(66,0,'mod_menu','module','mod_menu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),(67,0,'mod_popular','module','mod_popular',NULL,'',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL),(68,0,'mod_quickicon','module','mod_quickicon',NULL,'',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL),(69,0,'mod_frontend','module','mod_frontend',NULL,'',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL),(70,0,'mod_messages','module','mod_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL),(71,0,'mod_post_installation_messages','module','mod_post_installation_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"July2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL),(72,0,'mod_user','module','mod_user',NULL,'',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL),(73,0,'mod_title','module','mod_title',NULL,'',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL),(74,0,'mod_toolbar','module','mod_toolbar',NULL,'',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL),(75,0,'mod_multilangstatus','module','mod_multilangstatus',NULL,'',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(76,0,'mod_version','module','mod_version',NULL,'',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),(77,0,'mod_stats_admin','module','mod_stats_admin',NULL,'',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),(78,0,'mod_tags_popular','module','mod_tags_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),(79,0,'mod_tags_similar','module','mod_tags_similar',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),(80,0,'mod_sampledata','module','mod_sampledata',NULL,'',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL),(81,0,'mod_latestactions','module','mod_latestactions',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL),(82,0,'mod_privacy_dashboard','module','mod_privacy_dashboard',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL),(83,0,'mod_submenu','module','mod_submenu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL),(84,0,'mod_privacy_status','module','mod_privacy_status',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL),(85,0,'plg_actionlog_joomla','plugin','joomla',NULL,'actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL),(86,0,'plg_api-authentication_basic','plugin','basic',NULL,'api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL),(87,0,'plg_api-authentication_token','plugin','token',NULL,'api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"November 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL),(88,0,'plg_authentication_cookie','plugin','cookie',NULL,'authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL),(89,0,'plg_authentication_joomla','plugin','joomla',NULL,'authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),(90,0,'plg_authentication_ldap','plugin','ldap',NULL,'authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL),(91,0,'plg_behaviour_taggable','plugin','taggable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"taggable\"}','{}','',NULL,NULL,1,0,NULL),(92,0,'plg_behaviour_versionable','plugin','versionable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"versionable\"}','{}','',NULL,NULL,2,0,NULL),(93,0,'plg_captcha_recaptcha','plugin','recaptcha',NULL,'captcha',0,1,1,0,1,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"version\":\"2.0\",\"public_key\":\"6LdAhjEhAAAAABESYZeNBIsuEWHf6nV8ex_2yShD\",\"private_key\":\"6LdAhjEhAAAAAFwnC_lbnhLi5SgzPnMDde0shoeS\",\"theme2\":\"light\",\"size\":\"normal\",\"tabindex\":0,\"callback\":\"\",\"expired_callback\":\"\",\"error_callback\":\"\"}','',NULL,NULL,1,0,''),(94,0,'plg_captcha_recaptcha_invisible','plugin','recaptcha_invisible',NULL,'captcha',0,0,1,0,1,'{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','',NULL,NULL,2,0,NULL),(95,0,'plg_content_confirmconsent','plugin','confirmconsent',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL),(96,0,'plg_content_contact','plugin','contact',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),(97,0,'plg_content_emailcloak','plugin','emailcloak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL),(98,0,'plg_content_fields','plugin','fields',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL),(99,0,'plg_content_finder','plugin','finder',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL),(100,0,'plg_content_joomla','plugin','joomla',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL),(101,0,'plg_content_loadmodule','plugin','loadmodule',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL),(102,0,'plg_content_pagebreak','plugin','pagebreak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL),(103,0,'plg_content_pagenavigation','plugin','pagenavigation',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL),(104,0,'plg_content_vote','plugin','vote',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL),(105,0,'plg_editors-xtd_article','plugin','article',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL),(106,0,'plg_editors-xtd_contact','plugin','contact',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),(107,0,'plg_editors-xtd_fields','plugin','fields',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL),(108,0,'plg_editors-xtd_image','plugin','image',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL),(109,0,'plg_editors-xtd_menu','plugin','menu',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL),(110,0,'plg_editors-xtd_module','plugin','module',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL),(111,0,'plg_editors-xtd_pagebreak','plugin','pagebreak',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL),(112,0,'plg_editors-xtd_readmore','plugin','readmore',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL),(113,0,'plg_editors_codemirror','plugin','codemirror',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.65.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL),(114,0,'plg_editors_none','plugin','none',NULL,'editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL),(115,0,'plg_editors_tinymce','plugin','tinymce',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2021\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"5.10.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL),(116,0,'plg_extension_finder','plugin','finder',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL),(117,0,'plg_extension_joomla','plugin','joomla',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),(118,0,'plg_extension_namespacemap','plugin','namespacemap',NULL,'extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,3,0,NULL),(119,0,'plg_fields_calendar','plugin','calendar',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL),(120,0,'plg_fields_checkboxes','plugin','checkboxes',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL),(121,0,'plg_fields_color','plugin','color',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL),(122,0,'plg_fields_editor','plugin','editor',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','',NULL,NULL,4,0,NULL),(123,0,'plg_fields_imagelist','plugin','imagelist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL),(124,0,'plg_fields_integer','plugin','integer',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL),(125,0,'plg_fields_list','plugin','list',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL),(126,0,'plg_fields_media','plugin','media',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL),(127,0,'plg_fields_radio','plugin','radio',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','',NULL,NULL,9,0,NULL),(128,0,'plg_fields_sql','plugin','sql',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','',NULL,NULL,10,0,NULL),(129,0,'plg_fields_subform','plugin','subform',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"June 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"subform\"}','','',NULL,NULL,11,0,NULL),(130,0,'plg_fields_text','plugin','text',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','',NULL,NULL,12,0,NULL),(131,0,'plg_fields_textarea','plugin','textarea',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','',NULL,NULL,13,0,NULL),(132,0,'plg_fields_url','plugin','url',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','',NULL,NULL,14,0,NULL),(133,0,'plg_fields_user','plugin','user',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','',NULL,NULL,15,0,NULL),(134,0,'plg_fields_usergrouplist','plugin','usergrouplist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,16,0,NULL),(135,0,'plg_filesystem_local','plugin','local',NULL,'filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL),(136,0,'plg_finder_categories','plugin','categories',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL),(137,0,'plg_finder_contacts','plugin','contacts',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL),(138,0,'plg_finder_content','plugin','content',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL),(139,0,'plg_finder_newsfeeds','plugin','newsfeeds',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL),(140,0,'plg_finder_tags','plugin','tags',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL),(141,0,'plg_installer_folderinstaller','plugin','folderinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL),(142,0,'plg_installer_override','plugin','override',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL),(143,0,'plg_installer_packageinstaller','plugin','packageinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL),(144,0,'plg_installer_urlinstaller','plugin','urlinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL),(145,0,'plg_installer_webinstaller','plugin','webinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL),(146,0,'plg_media-action_crop','plugin','crop',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL),(147,0,'plg_media-action_resize','plugin','resize',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL),(148,0,'plg_media-action_rotate','plugin','rotate',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL),(149,0,'plg_privacy_actionlogs','plugin','actionlogs',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL),(150,0,'plg_privacy_consents','plugin','consents',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL),(151,0,'plg_privacy_contact','plugin','contact',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),(152,0,'plg_privacy_content','plugin','content',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),(153,0,'plg_privacy_message','plugin','message',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL),(154,0,'plg_privacy_user','plugin','user',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL),(155,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,1,0,NULL),(156,0,'plg_quickicon_extensionupdate','plugin','extensionupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,2,0,NULL),(157,0,'plg_quickicon_overridecheck','plugin','overridecheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"overridecheck\"}','','',NULL,NULL,3,0,NULL),(158,0,'plg_quickicon_downloadkey','plugin','downloadkey',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"October 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"downloadkey\"}','','',NULL,NULL,4,0,NULL),(159,0,'plg_quickicon_privacycheck','plugin','privacycheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,5,0,NULL),(160,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,6,0,NULL),(161,0,'plg_sampledata_blog','plugin','blog',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL),(162,0,'plg_sampledata_multilang','plugin','multilang',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL),(163,0,'plg_system_accessibility','plugin','accessibility',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL),(164,0,'plg_system_actionlogs','plugin','actionlogs',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL),(165,0,'plg_system_cache','plugin','cache',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL),(166,0,'plg_system_debug','plugin','debug',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL),(167,0,'plg_system_fields','plugin','fields',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL),(168,0,'plg_system_highlight','plugin','highlight',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL),(169,0,'plg_system_httpheaders','plugin','httpheaders',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"October 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL),(170,0,'plg_system_jooa11y','plugin','jooa11y',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"February 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL),(171,0,'plg_system_languagecode','plugin','languagecode',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL),(172,0,'plg_system_languagefilter','plugin','languagefilter',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL),(173,0,'plg_system_log','plugin','log',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL),(174,0,'plg_system_logout','plugin','logout',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL),(175,0,'plg_system_logrotation','plugin','logrotation',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}','{\"lastrun\":1657407462}','',NULL,NULL,13,0,NULL),(176,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL),(177,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL),(178,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL),(179,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,0,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL),(180,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','',NULL,NULL,18,0,NULL),(181,0,'plg_system_sessiongc','plugin','sessiongc',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}','','',NULL,NULL,19,0,NULL),(182,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"February 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"skipto\"}','{}','',NULL,NULL,20,0,NULL),(183,0,'plg_system_stats','plugin','stats',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1657412434,\"unique_id\":\"044f23430e39828a438a41bc50b39df167a82167\",\"interval\":12}','',NULL,NULL,21,0,NULL),(184,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tasknotification\"}','','',NULL,NULL,22,0,NULL),(185,0,'plg_system_updatenotification','plugin','updatenotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1659217123}','',NULL,NULL,23,0,NULL),(186,0,'plg_system_webauthn','plugin','webauthn',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,23,0,NULL),(187,0,'plg_task_check_files','plugin','checkfiles',NULL,'task',0,1,1,0,0,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL),(188,0,'plg_task_demo_tasks','plugin','demotasks',NULL,'task',0,1,1,0,0,'{\"name\":\"plg_task_demo_tasks\",\"type\":\"plugin\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_DEMO_TASKS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"demotasks\"}','{}','',NULL,NULL,2,0,NULL),(189,0,'plg_task_requests','plugin','requests',NULL,'task',0,1,1,0,0,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"requests\"}','{}','',NULL,NULL,3,0,NULL),(190,0,'plg_task_site_status','plugin','sitestatus',NULL,'task',0,1,1,0,0,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,4,0,NULL),(191,0,'plg_twofactorauth_totp','plugin','totp',NULL,'twofactorauth',0,0,1,0,1,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL),(192,0,'plg_twofactorauth_yubikey','plugin','yubikey',NULL,'twofactorauth',0,0,1,0,1,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL),(193,0,'plg_user_contactcreator','plugin','contactcreator',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL),(194,0,'plg_user_joomla','plugin','joomla',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL),(195,0,'plg_user_profile','plugin','profile',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL),(196,0,'plg_user_terms','plugin','terms',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL),(197,0,'plg_user_token','plugin','token',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"November 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL),(198,0,'plg_webservices_banners','plugin','banners',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL),(199,0,'plg_webservices_config','plugin','config',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL),(200,0,'plg_webservices_contact','plugin','contact',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),(201,0,'plg_webservices_content','plugin','content',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),(202,0,'plg_webservices_installer','plugin','installer',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"June 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL),(203,0,'plg_webservices_languages','plugin','languages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languages\"}','{}','',NULL,NULL,6,0,NULL),(204,0,'plg_webservices_media','plugin','media',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"May 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{}','',NULL,NULL,7,0,NULL),(205,0,'plg_webservices_menus','plugin','menus',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}','{}','',NULL,NULL,7,0,NULL),(206,0,'plg_webservices_messages','plugin','messages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"messages\"}','{}','',NULL,NULL,8,0,NULL),(207,0,'plg_webservices_modules','plugin','modules',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}','{}','',NULL,NULL,9,0,NULL),(208,0,'plg_webservices_newsfeeds','plugin','newsfeeds',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,10,0,NULL),(209,0,'plg_webservices_plugins','plugin','plugins',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"plugins\"}','{}','',NULL,NULL,11,0,NULL),(210,0,'plg_webservices_privacy','plugin','privacy',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}','{}','',NULL,NULL,12,0,NULL),(211,0,'plg_webservices_redirect','plugin','redirect',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','{}','',NULL,NULL,13,0,NULL),(212,0,'plg_webservices_tags','plugin','tags',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{}','',NULL,NULL,14,0,NULL),(213,0,'plg_webservices_templates','plugin','templates',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templates\"}','{}','',NULL,NULL,15,0,NULL),(214,0,'plg_webservices_users','plugin','users',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{}','',NULL,NULL,16,0,NULL),(215,0,'plg_workflow_featuring','plugin','featuring',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"March 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL),(216,0,'plg_workflow_notification','plugin','notification',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"May 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL),(217,0,'plg_workflow_publishing','plugin','publishing',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"March 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL),(218,0,'atum','template','atum',NULL,'',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL),(219,0,'cassiopeia','template','cassiopeia',NULL,'',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"logoFile\":\"\",\"fluidContainer\":\"0\",\"sidebarLeftWidth\":\"3\",\"sidebarRightWidth\":\"3\"}','',NULL,NULL,0,0,NULL),(220,0,'files_joomla','file','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(221,0,'English (en-GB) Language Pack','package','pkg_en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL),(222,221,'English (en-GB)','language','en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(223,221,'English (en-GB)','language','en-GB',NULL,'',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(224,221,'English (en-GB)','language','en-GB',NULL,'',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.5\",\"description\":\"en-GB api language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),(225,228,'Spanish (es-ES)','language','es-ES','','',1,1,0,0,0,'{\"name\":\"Spanish (es-ES)\",\"type\":\"language\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<p>Spanish [es-ES] language pack (administrator) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}','{}','',NULL,NULL,0,0,NULL),(226,228,'Spanish (es-ES)','language','es-ES','','',3,1,0,0,0,'{\"name\":\"Spanish (es-ES)\",\"type\":\"language\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<p>Spanish [es-ES] language pack (api) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}','{}','',NULL,NULL,0,0,NULL),(227,228,'Spanish (es-ES)','language','es-ES','','',0,1,0,0,0,'{\"name\":\"Spanish (es-ES)\",\"type\":\"language\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<p>Spanish [es-ES] language pack (site) for Joomla!<\\/p>\",\"group\":\"\",\"filename\":\"install\"}','{}','',NULL,NULL,0,0,NULL),(228,0,'Spanish (es-ES) Language Pack','package','pkg_es-ES','','',0,1,1,0,0,'{\"name\":\"Spanish (es-ES) Language Pack\",\"type\":\"package\",\"creationDate\":\"2022\\/6\\/23\",\"author\":\"Spanish [es-ES] Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2023 Open Source Matters, Inc.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/traduccion.joomlaes.org\\/\",\"version\":\"4.1.5.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 4.1.5.1<\\/h2><p><\\/p><p>Please report any bugs or issues at the Spanish Translation Team using the mail: es.es.translation.team@gmail.com<\\/p><p>If you wanna help with translations matters the site is at: <a href=\'https:\\/\\/traduccion.joomlaes.org\' target=\'_blank\' rel=\'noopener noreferrer\'>JomlaEs.org<\\/a> Contact Us!<\\/p><p><\\/p><p>Translated by: The Spanish Translation Team [es-ES]<\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 4.1.5.1 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestra direcci\\u00f3n de correo electr\\u00f3nico: es.es.translation.team@gmail.com<\\/p><p>Si quiere colaborar con el trabajo de traducci\\u00f3n estamos en: <a href=\'https:\\/\\/traduccion.joomlaes.org\' target=\'_blank\' rel=\'noopener noreferrer\'>JomlaEs.org<\\/a> \\u00a1Contacte con nosotros!<\\/p><p><\\/p><p>Traducci\\u00f3n: Spanish Translation Team [es-ES]<\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}','{}','',NULL,NULL,0,0,NULL),(229,0,'T3 Framework','plugin','t3','','system',0,1,1,0,0,'{\"name\":\"T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jul 14, 2022\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C) 2005 - 2022 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"3.1.0\",\"description\":\"\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/static.joomlart.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2021 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"t3\"}','{}','',NULL,NULL,0,0,NULL),(230,0,'purity_III','template','purity_iii','','',0,1,1,0,0,'{\"name\":\"purity_III\",\"type\":\"template\",\"creationDate\":\"August 31th, 2021\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"2.0.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\\" title=\\\"Purity III Template demo\\\">Live Demo<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\\" title=\\\"purity iii template documentation\\\">Documentation<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\\" title=\\\"purity iii forum\\\">Forum<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\\" title=\\\"Purity III template more info\\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2020 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"tpl_article_info_datetime_format\":\"d M Y\"}','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `virtus_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_fields`
--

DROP TABLE IF EXISTS `virtus_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_fields`
--

LOCK TABLES `virtus_fields` WRITE;
/*!40000 ALTER TABLE `virtus_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_fields_categories`
--

DROP TABLE IF EXISTS `virtus_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_fields_categories`
--

LOCK TABLES `virtus_fields_categories` WRITE;
/*!40000 ALTER TABLE `virtus_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_fields_groups`
--

DROP TABLE IF EXISTS `virtus_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_fields_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_fields_groups`
--

LOCK TABLES `virtus_fields_groups` WRITE;
/*!40000 ALTER TABLE `virtus_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_fields_values`
--

DROP TABLE IF EXISTS `virtus_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_fields_values` (
  `field_id` int unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_fields_values`
--

LOCK TABLES `virtus_fields_values` WRITE;
/*!40000 ALTER TABLE `virtus_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_filters`
--

DROP TABLE IF EXISTS `virtus_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_filters` (
  `filter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_filters`
--

LOCK TABLES `virtus_finder_filters` WRITE;
/*!40000 ALTER TABLE `virtus_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_links`
--

DROP TABLE IF EXISTS `virtus_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_links`
--

LOCK TABLES `virtus_finder_links` WRITE;
/*!40000 ALTER TABLE `virtus_finder_links` DISABLE KEYS */;
INSERT INTO `virtus_finder_links` VALUES (1,'index.php?option=com_content&view=category&id=2','index.php?option=com_content&view=category&id=2','Sin categoría','','2022-07-30 02:37:23','557dd533e53d63edd37d709473d995ae',1,1,1,'*',NULL,NULL,'2022-07-09 22:52:00',NULL,0,0,1,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"es-ES\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:2;s:5:\"alias\";s:13:\"uncategorised\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:6:\"author\";s:0:\"\";s:6:\"robots\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:3:\"lft\";i:1;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":4:{s:15:\"category_layout\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"image_alt\";s:0:\"\";s:14:\"t3_extrafields\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:565;s:8:\"modified\";s:19:\"2022-07-30 02:37:23\";s:11:\"modified_by\";i:565;s:4:\"slug\";s:15:\"2:uncategorised\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=2\";i:12;N;i:13;s:19:\"2022-07-09 22:52:00\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:14:\"Sin categoría\";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=2\";}'),(2,'index.php?option=com_content&view=category&id=8','index.php?option=com_content&view=category&id=8','Programación Estructurada ',' La programación estructurada es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando únicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva. ','2022-07-30 03:09:36','bd6b992019ffb13311605d27188c37b3',1,1,1,'*',NULL,NULL,'2022-07-30 03:09:36',NULL,0,0,1,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"es-ES\";i:2;s:247:\" La programación estructurada es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando únicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva. \";i:3;a:17:{s:2:\"id\";i:8;s:5:\"alias\";s:11:\"structurada\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:6:\"author\";s:0:\"\";s:6:\"robots\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:3:\"lft\";i:11;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":4:{s:15:\"category_layout\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"image_alt\";s:0:\"\";s:14:\"t3_extrafields\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"summary\";s:252:\"<p>La programación estructurada es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando únicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva.</p>\";s:10:\"created_by\";i:565;s:8:\"modified\";s:19:\"2022-07-30 03:09:36\";s:11:\"modified_by\";i:565;s:4:\"slug\";s:13:\"8:structurada\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=8\";i:12;N;i:13;s:19:\"2022-07-30 03:09:36\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:27:\"Programación Estructurada \";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=8\";}'),(3,'index.php?option=com_content&view=category&id=9','index.php?option=com_content&view=category&id=9','Programación Orientada a Objetos',' La Programación Orientada a Objetos (POO) es un paradigma de programación, es decir, un modelo o un estilo de programación que nos da unas guías sobre cómo trabajar con él. Se basa en el concepto de clases y objetos. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. ','2022-07-30 03:26:06','152e56f91690a50c313a36122821ba2d',1,1,1,'*',NULL,NULL,'2022-07-30 03:26:06',NULL,0,0,1,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"es-ES\";i:2;s:414:\" La Programación Orientada a Objetos (POO) es un paradigma de programación, es decir, un modelo o un estilo de programación que nos da unas guías sobre cómo trabajar con él. Se basa en el concepto de clases y objetos. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. \";i:3;a:17:{s:2:\"id\";i:9;s:5:\"alias\";s:3:\"poo\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:6:\"author\";s:0:\"\";s:6:\"robots\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:3:\"lft\";i:13;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":4:{s:15:\"category_layout\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"image_alt\";s:0:\"\";s:14:\"t3_extrafields\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"summary\";s:421:\"<p>La Programación Orientada a Objetos (POO) es un paradigma de programación, es decir, un modelo o un estilo de programación que nos da unas guías sobre cómo trabajar con él. Se basa en el concepto de clases y objetos. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. </p>\";s:10:\"created_by\";i:565;s:8:\"modified\";s:19:\"2022-07-30 03:26:06\";s:11:\"modified_by\";i:565;s:4:\"slug\";s:5:\"9:poo\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=9\";i:12;N;i:13;s:19:\"2022-07-30 03:26:06\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}}i:16;s:33:\"Programación Orientada a Objetos\";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=9\";}'),(5,'index.php?option=com_contact&view=contact&id=1','index.php?option=com_contact&view=contact&id=1:virtus&catid=4:uncategorised','VIRTUS','','2022-07-30 03:47:28','4363ddf2dd14f6eb2835f68db1bc098b',1,1,1,'*',NULL,NULL,'2022-07-30 03:41:50',NULL,0,0,2,_binary 'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"es-ES\";i:2;s:0:\"\";i:3;a:33:{s:2:\"id\";i:1;s:5:\"alias\";s:6:\"virtus\";s:8:\"position\";s:0:\"\";s:7:\"address\";s:0:\"\";s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2022-07-30 03:47:28\";s:11:\"modified_by\";i:565;s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";s:25:\"{\"robots\":\"\",\"rights\":\"\"}\";s:9:\"sortname1\";s:0:\"\";s:9:\"sortname2\";s:0:\"\";s:9:\"sortname3\";s:0:\"\";s:4:\"city\";s:7:\"Bogotá\";s:6:\"region\";s:0:\"\";s:7:\"country\";s:8:\"Colombia\";s:3:\"zip\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:7:\"summary\";s:0:\"\";s:5:\"email\";s:21:\"fmartinezro@gmail.com\";s:6:\"mobile\";s:0:\"\";s:7:\"webpage\";s:23:\"http://grupovirtus.org/\";s:8:\"ordering\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":40:{s:21:\"show_contact_category\";s:0:\"\";s:17:\"show_contact_list\";s:0:\"\";s:9:\"show_tags\";s:0:\"\";s:9:\"show_info\";s:0:\"\";s:9:\"show_name\";s:0:\"\";s:13:\"show_position\";s:0:\"\";s:10:\"show_email\";s:0:\"\";s:15:\"add_mailto_link\";s:0:\"\";s:19:\"show_street_address\";s:0:\"\";s:11:\"show_suburb\";s:0:\"\";s:10:\"show_state\";s:0:\"\";s:13:\"show_postcode\";s:0:\"\";s:12:\"show_country\";s:0:\"\";s:14:\"show_telephone\";s:0:\"\";s:11:\"show_mobile\";s:0:\"\";s:8:\"show_fax\";s:0:\"\";s:12:\"show_webpage\";s:0:\"\";s:10:\"show_image\";s:0:\"\";s:9:\"show_misc\";s:0:\"\";s:11:\"allow_vcard\";s:0:\"\";s:13:\"show_articles\";s:0:\"\";s:20:\"articles_display_num\";s:0:\"\";s:12:\"show_profile\";s:0:\"\";s:14:\"contact_layout\";s:0:\"\";s:10:\"show_links\";s:0:\"\";s:10:\"linka_name\";s:0:\"\";s:5:\"linka\";s:0:\"\";s:10:\"linkb_name\";s:0:\"\";s:5:\"linkb\";s:0:\"\";s:10:\"linkc_name\";s:0:\"\";s:5:\"linkc\";s:0:\"\";s:10:\"linkd_name\";s:0:\"\";s:5:\"linkd\";s:0:\"\";s:10:\"linke_name\";s:0:\"\";s:5:\"linke\";s:0:\"\";s:15:\"show_email_form\";s:0:\"\";s:15:\"show_email_copy\";s:0:\"\";s:16:\"validate_session\";s:0:\"\";s:12:\"custom_reply\";s:0:\"\";s:8:\"redirect\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:5:\"catid\";i:4;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:8:\"1:virtus\";s:7:\"catslug\";s:15:\"4:uncategorised\";s:4:\"name\";N;s:6:\"layout\";s:7:\"contact\";}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:15:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:8:\"position\";i:4;s:7:\"address\";i:5;s:4:\"city\";i:6;s:6:\"region\";i:7;s:7:\"country\";i:8;s:3:\"zip\";i:9;s:9:\"telephone\";i:10;s:3:\"fax\";i:11;s:5:\"email\";i:12;s:6:\"mobile\";i:13;s:7:\"webpage\";i:14;s:4:\"user\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:75:\"index.php?option=com_contact&view=contact&id=1:virtus&catid=4:uncategorised\";i:12;N;i:13;s:19:\"2022-07-30 03:41:50\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Contact\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:6;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:8;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:7:\"Country\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Colombia\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}}i:16;s:6:\"VIRTUS\";i:17;i:2;i:18;s:46:\"index.php?option=com_contact&view=contact&id=1\";}');
/*!40000 ALTER TABLE `virtus_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_links_terms`
--

DROP TABLE IF EXISTS `virtus_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_links_terms` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_links_terms`
--

LOCK TABLES `virtus_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `virtus_finder_links_terms` DISABLE KEYS */;
INSERT INTO `virtus_finder_links_terms` VALUES (1,1,1.7334),(1,2,0.17),(1,3,1.02),(1,4,0.34),(2,8,1.4666),(2,9,0.04669),(3,9,0.16008),(2,10,0.32669),(2,11,0.37331),(2,12,0.51331),(2,13,0.27993),(3,13,0.74648),(2,14,0.46669),(2,15,0.09331),(3,15,0.18662),(2,16,1.92),(2,17,0.51331),(2,18,0.42),(3,19,0.09331),(2,19,0.18662),(2,20,0.32669),(2,21,0.04669),(3,21,0.04669),(2,22,0.42),(2,23,0.42),(3,23,0.42),(2,24,0.37331),(3,24,0.37331),(2,25,2.48),(3,25,3.6),(2,26,0.46669),(2,27,0.46669),(2,28,0.46669),(2,29,0.28),(2,30,0.18669),(2,31,0.18662),(3,31,0.37324),(2,32,0.46669),(3,33,0.09338),(2,33,0.14007),(2,34,0.46669),(2,35,0.17),(3,39,0.54),(3,40,0.18669),(3,41,0.56),(3,42,0.14),(3,43,0.37331),(3,44,0.23331),(3,45,0.28),(3,46,0.18669),(3,47,0.09331),(3,48,0.23331),(3,49,0.09331),(3,50,0.18662),(3,51,0.18669),(3,52,0.28),(3,53,0.51331),(3,54,0.23331),(3,55,0.56),(3,56,0.46669),(3,57,0.28),(3,58,0.14),(3,59,1.77346),(3,60,1.44),(3,61,0.37338),(3,62,0.28),(3,63,0.28),(3,64,0.14),(3,65,0.60669),(3,66,0.18662),(3,67,0.32669),(3,68,0.23331),(3,69,0.37331),(3,70,0.18669),(3,71,0.37331),(3,72,0.18669),(3,73,0.32669),(3,74,0.09331),(3,75,0.17),(5,109,1.48),(5,110,0.48),(5,111,0.63996),(5,112,0.24),(5,113,0.87996),(5,114,0.39996),(5,115,0.87996),(5,116,0.32004),(5,117,0.24),(5,118,0.17);
/*!40000 ALTER TABLE `virtus_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_logging`
--

DROP TABLE IF EXISTS `virtus_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_logging` (
  `searchterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_logging`
--

LOCK TABLES `virtus_finder_logging` WRITE;
/*!40000 ALTER TABLE `virtus_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_taxonomy`
--

DROP TABLE IF EXISTS `virtus_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_taxonomy` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `access` tinyint unsigned NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_taxonomy`
--

LOCK TABLES `virtus_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `virtus_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `virtus_finder_taxonomy` VALUES (1,0,0,19,0,'','ROOT','root',1,1,'*'),(2,1,1,6,1,'type','Type','type',1,1,''),(3,2,2,3,2,'type/category','Category','category',1,1,''),(4,1,7,10,1,'language','Language','language',1,1,''),(5,4,8,9,2,'language/faef360113599eb6a0282d981cc199d8','*','faef360113599eb6a0282d981cc199d8',1,1,''),(6,2,4,5,2,'type/contact','Contact','contact',1,1,''),(7,1,11,14,1,'category','Category','category',1,1,''),(8,7,12,13,2,'category/uncategorised','Uncategorised','uncategorised',1,1,'*'),(9,1,15,18,1,'country','Country','country',1,1,''),(10,9,16,17,2,'country/colombia','Colombia','colombia',1,1,'');
/*!40000 ALTER TABLE `virtus_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `virtus_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_taxonomy_map` (
  `link_id` int unsigned NOT NULL,
  `node_id` int unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_taxonomy_map`
--

LOCK TABLES `virtus_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `virtus_finder_taxonomy_map` DISABLE KEYS */;
INSERT INTO `virtus_finder_taxonomy_map` VALUES (1,3),(1,5),(2,3),(2,5),(3,3),(3,5),(5,5),(5,6),(5,8),(5,10);
/*!40000 ALTER TABLE `virtus_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_terms`
--

DROP TABLE IF EXISTS `virtus_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_terms` (
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_terms`
--

LOCK TABLES `virtus_finder_terms` WRITE;
/*!40000 ALTER TABLE `virtus_finder_terms` DISABLE KEYS */;
INSERT INTO `virtus_finder_terms` VALUES (1,'uncategorised','uncategorised',0,0,0.8667,'U5232623',1,'*'),(2,'2','2',0,0,0.1,'',1,'*'),(3,'categoría','categoría',0,0,0.6,'C326',1,'*'),(4,'sin','sin',0,0,0.2,'S500',1,'*'),(8,'structurada','structurada',0,0,0.7333,'S362363',1,'*'),(9,'a','a',0,0,0.0667,'A000',2,'*'),(10,'calidad','calidad',0,0,0.4667,'C430',1,'*'),(11,'claridad','claridad',0,0,0.5333,'C463',1,'*'),(12,'condicional','condicional',0,0,0.7333,'C53254',1,'*'),(13,'de','de',0,0,0.1333,'D000',2,'*'),(14,'desarrollo','desarrollo',0,0,0.6667,'D264',1,'*'),(15,'es','es',0,0,0.1333,'E200',2,'*'),(16,'estructurada','estructurada',0,0,0.8,'E2362363',1,'*'),(17,'estructuras','estructuras',0,0,0.7333,'E2362362',1,'*'),(18,'funciones','funciones',0,0,0.6,'F5252',1,'*'),(19,'la','la',0,0,0.1333,'L000',2,'*'),(20,'mejorar','mejorar',0,0,0.4667,'M260',1,'*'),(21,'o','o',0,0,0.0667,'O000',2,'*'),(22,'orientado','orientado',0,0,0.6,'O653',1,'*'),(23,'paradigma','paradigma',0,0,0.6,'P6325',2,'*'),(24,'programa','programa',0,0,0.5333,'P6265',2,'*'),(25,'programación','programación',0,0,0.8,'P626525',2,'*'),(26,'repetitiva','repetitiva',0,0,0.6667,'R131',1,'*'),(27,'secuencial','secuencial',0,0,0.6667,'S524',1,'*'),(28,'subrutinas','subrutinas',0,0,0.6667,'S16352',1,'*'),(29,'tiempo','tiempo',0,0,0.4,'T510',1,'*'),(30,'tres','tres',0,0,0.2667,'T620',1,'*'),(31,'un','un',0,0,0.1333,'U500',2,'*'),(32,'utilizando','utilizando',0,0,0.6667,'U34253',1,'*'),(33,'y','y',0,0,0.0667,'Y000',2,'*'),(34,'únicamente','únicamente',0,0,0.6667,'ú5253',1,'*'),(35,'8','8',0,0,0.1,'',1,'*'),(39,'poo','poo',0,0,0.2,'P000',1,'*'),(40,'basa','basa',0,0,0.2667,'B200',1,'*'),(41,'clases','clases',0,0,0.4,'C420',1,'*'),(42,'con','con',0,0,0.2,'C500',1,'*'),(43,'concepto','concepto',0,0,0.5333,'C5213',1,'*'),(44,'crear','crear',0,0,0.3333,'C600',1,'*'),(45,'código','código',0,0,0.4,'C320',1,'*'),(46,'cómo','cómo',0,0,0.2667,'C500',1,'*'),(47,'da','da',0,0,0.1333,'D000',1,'*'),(48,'decir','decir',0,0,0.3333,'D260',1,'*'),(49,'el','el',0,0,0.1333,'E400',1,'*'),(50,'en','en',0,0,0.1333,'E500',1,'*'),(51,'este','este',0,0,0.2667,'E230',1,'*'),(52,'estilo','estilo',0,0,0.4,'E234',1,'*'),(53,'estructurar','estructurar',0,0,0.7333,'E236236',1,'*'),(54,'guías','guías',0,0,0.3333,'G000',1,'*'),(55,'individuales','individuales',0,0,0.8,'I531342',1,'*'),(56,'instancias','instancias',0,0,0.6667,'I52352',1,'*'),(57,'modelo','modelo',0,0,0.4,'M340',1,'*'),(58,'nos','nos',0,0,0.2,'N200',1,'*'),(59,'objetos','objetos',0,0,0.4667,'O1232',1,'*'),(60,'orientada','orientada',0,0,0.6,'O653',1,'*'),(61,'para','para',0,0,0.2667,'P600',1,'*'),(62,'piezas','piezas',0,0,0.4,'P200',1,'*'),(63,'planos','planos',0,0,0.4,'P452',1,'*'),(64,'que','que',0,0,0.2,'Q000',1,'*'),(65,'reutilizables','reutilizables',0,0,0.8667,'R342142',1,'*'),(66,'se','se',0,0,0.1333,'S000',1,'*'),(67,'simples','simples',0,0,0.4667,'S5142',1,'*'),(68,'sobre','sobre',0,0,0.3333,'S160',1,'*'),(69,'software','software',0,0,0.5333,'S136',1,'*'),(70,'tipo','tipo',0,0,0.2667,'T100',1,'*'),(71,'trabajar','trabajar',0,0,0.5333,'T6126',1,'*'),(72,'unas','unas',0,0,0.2667,'U520',1,'*'),(73,'utiliza','utiliza',0,0,0.4667,'U342',1,'*'),(74,'él','él',0,0,0.1333,'é400',1,'*'),(75,'9','9',0,0,0.1,'',1,'*'),(109,'virtus','virtus',0,0,0.4,'V632',1,'*'),(110,'bogotá','bogotá',0,0,0.4,'B230',1,'*'),(111,'colombia','colombia',0,0,0.5333,'C451',1,'*'),(112,'com','com',0,0,0.2,'C500',1,'*'),(113,'fmartinezro','fmartinezro',0,0,0.7333,'F563526',1,'*'),(114,'gmail','gmail',0,0,0.3333,'G540',1,'*'),(115,'grupovirtus','grupovirtus',0,0,0.7333,'G61632',1,'*'),(116,'http','http',0,0,0.2667,'H310',1,'*'),(117,'org','org',0,0,0.2,'O620',1,'*'),(118,'1','1',0,0,0.1,'',1,'*');
/*!40000 ALTER TABLE `virtus_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_terms_common`
--

DROP TABLE IF EXISTS `virtus_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_terms_common`
--

LOCK TABLES `virtus_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `virtus_finder_terms_common` DISABLE KEYS */;
INSERT INTO `virtus_finder_terms_common` VALUES ('a','en',0),('about','en',0),('above','en',0),('after','en',0),('again','en',0),('against','en',0),('all','en',0),('am','en',0),('an','en',0),('and','en',0),('any','en',0),('are','en',0),('aren\'t','en',0),('as','en',0),('at','en',0),('be','en',0),('because','en',0),('been','en',0),('before','en',0),('being','en',0),('below','en',0),('between','en',0),('both','en',0),('but','en',0),('by','en',0),('can\'t','en',0),('cannot','en',0),('could','en',0),('couldn\'t','en',0),('did','en',0),('didn\'t','en',0),('do','en',0),('does','en',0),('doesn\'t','en',0),('doing','en',0),('don\'t','en',0),('down','en',0),('during','en',0),('each','en',0),('few','en',0),('for','en',0),('from','en',0),('further','en',0),('had','en',0),('hadn\'t','en',0),('has','en',0),('hasn\'t','en',0),('have','en',0),('haven\'t','en',0),('having','en',0),('he','en',0),('he\'d','en',0),('he\'ll','en',0),('he\'s','en',0),('her','en',0),('here','en',0),('here\'s','en',0),('hers','en',0),('herself','en',0),('him','en',0),('himself','en',0),('his','en',0),('how','en',0),('how\'s','en',0),('i','en',0),('i\'d','en',0),('i\'ll','en',0),('i\'m','en',0),('i\'ve','en',0),('if','en',0),('in','en',0),('into','en',0),('is','en',0),('isn\'t','en',0),('it','en',0),('it\'s','en',0),('its','en',0),('itself','en',0),('let\'s','en',0),('me','en',0),('more','en',0),('most','en',0),('mustn\'t','en',0),('my','en',0),('myself','en',0),('no','en',0),('nor','en',0),('not','en',0),('of','en',0),('off','en',0),('on','en',0),('once','en',0),('only','en',0),('or','en',0),('other','en',0),('ought','en',0),('our','en',0),('ours','en',0),('ourselves','en',0),('out','en',0),('over','en',0),('own','en',0),('same','en',0),('shan\'t','en',0),('she','en',0),('she\'d','en',0),('she\'ll','en',0),('she\'s','en',0),('should','en',0),('shouldn\'t','en',0),('so','en',0),('some','en',0),('such','en',0),('than','en',0),('that','en',0),('that\'s','en',0),('the','en',0),('their','en',0),('theirs','en',0),('them','en',0),('themselves','en',0),('then','en',0),('there','en',0),('there\'s','en',0),('these','en',0),('they','en',0),('they\'d','en',0),('they\'ll','en',0),('they\'re','en',0),('they\'ve','en',0),('this','en',0),('those','en',0),('through','en',0),('to','en',0),('too','en',0),('under','en',0),('until','en',0),('up','en',0),('very','en',0),('was','en',0),('wasn\'t','en',0),('we','en',0),('we\'d','en',0),('we\'ll','en',0),('we\'re','en',0),('we\'ve','en',0),('were','en',0),('weren\'t','en',0),('what','en',0),('what\'s','en',0),('when','en',0),('when\'s','en',0),('where','en',0),('where\'s','en',0),('which','en',0),('while','en',0),('who','en',0),('who\'s','en',0),('whom','en',0),('why','en',0),('why\'s','en',0),('with','en',0),('won\'t','en',0),('would','en',0),('wouldn\'t','en',0),('you','en',0),('you\'d','en',0),('you\'ll','en',0),('you\'re','en',0),('you\'ve','en',0),('your','en',0),('yours','en',0),('yourself','en',0),('yourselves','en',0);
/*!40000 ALTER TABLE `virtus_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_tokens`
--

DROP TABLE IF EXISTS `virtus_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_tokens`
--

LOCK TABLES `virtus_finder_tokens` WRITE;
/*!40000 ALTER TABLE `virtus_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `virtus_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_tokens_aggregate` (
  `term_id` int unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL DEFAULT '0',
  `total_weight` float unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_tokens_aggregate`
--

LOCK TABLES `virtus_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `virtus_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_finder_types`
--

DROP TABLE IF EXISTS `virtus_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_finder_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_finder_types`
--

LOCK TABLES `virtus_finder_types` WRITE;
/*!40000 ALTER TABLE `virtus_finder_types` DISABLE KEYS */;
INSERT INTO `virtus_finder_types` VALUES (1,'Category',''),(2,'Contact',''),(3,'Article',''),(4,'News Feed',''),(5,'Tag','');
/*!40000 ALTER TABLE `virtus_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_history`
--

DROP TABLE IF EXISTS `virtus_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_history` (
  `version_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int unsigned NOT NULL DEFAULT '0',
  `character_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_history`
--

LOCK TABLES `virtus_history` WRITE;
/*!40000 ALTER TABLE `virtus_history` DISABLE KEYS */;
INSERT INTO `virtus_history` VALUES (1,'com_content.category.2','','2022-07-30 02:37:23',565,607,'fe630bb73ff334afa259ad4b05df49d7f1bf3ea0','{\"id\":\"2\",\"asset_id\":27,\"parent_id\":1,\"lft\":1,\"rgt\":2,\"level\":1,\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Sin categor\\u00eda\",\"alias\":\"uncategorised\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":565,\"checked_out_time\":\"2022-07-30 02:37:04\",\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"565\",\"created_time\":\"2022-07-09 22:52:00\",\"modified_user_id\":565,\"modified_time\":\"2022-07-30 02:37:23\",\"hits\":0,\"language\":\"*\",\"version\":1}',0),(2,'com_content.category.8','','2022-07-30 03:09:36',565,860,'013e7334d3736cc0a53bff0a5d8173a4e8f42e6d','{\"id\":8,\"asset_id\":92,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Programaci\\u00f3n Estructurada \",\"alias\":\"structurada\",\"note\":\"\",\"description\":\"<p>La programaci\\u00f3n estructurada es un paradigma de programaci\\u00f3n orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa utilizando \\u00fanicamente subrutinas o funciones y tres estructuras: secuencial, condicional y repetitiva.<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-07-30 03:09:36\",\"modified_user_id\":565,\"modified_time\":\"2022-07-30 03:09:36\",\"hits\":null,\"language\":\"*\",\"version\":null}',0),(3,'com_content.category.9','','2022-07-30 03:26:06',565,1051,'7ad29b1b5ccb91017d2e550faef98f3425a2967a','{\"id\":9,\"asset_id\":93,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Programaci\\u00f3n Orientada a Objetos\",\"alias\":\"poo\",\"note\":\"\",\"description\":\"<p>La Programaci\\u00f3n Orientada a Objetos (POO) es un paradigma de programaci\\u00f3n, es decir, un modelo o un estilo de programaci\\u00f3n que nos da unas gu\\u00edas sobre c\\u00f3mo trabajar con \\u00e9l. Se basa en el concepto de clases y objetos. Este tipo de programaci\\u00f3n se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de c\\u00f3digo (clases) para crear instancias individuales de objetos.\\u00a0<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":565,\"created_time\":\"2022-07-30 03:26:06\",\"modified_user_id\":565,\"modified_time\":\"2022-07-30 03:26:06\",\"hits\":null,\"language\":\"*\",\"version\":null}',0),(4,'com_contact.contact.1','','2022-07-30 03:41:50',565,1570,'1325e92676d9b7674a6cc839dfa14ffcaedd0b9f','{\"id\":1,\"name\":\"VIRTUS\",\"alias\":\"virtus\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"Bogot\\u00e1\",\"state\":\"\",\"country\":\"Colombia\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":\\\"\\\",\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":\\\"\\\",\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":\\\"\\\",\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":\\\"\\\",\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":4,\"access\":1,\"mobile\":\"\",\"webpage\":\"http:\\/\\/grupovirtus.org\\/\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2022-07-30 03:41:50\",\"created_by\":565,\"created_by_alias\":\"\",\"modified\":\"2022-07-30 03:41:50\",\"modified_by\":565,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"publish_up\":null,\"publish_down\":null,\"version\":\"1\",\"hits\":0}',0),(5,'com_contact.contact.1','','2022-07-30 03:47:28',565,1609,'7e18e96ba05d2537c9a5828a6bcab66b2b17786e','{\"id\":\"1\",\"name\":\"VIRTUS\",\"alias\":\"virtus\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"Bogot\\u00e1\",\"state\":\"\",\"country\":\"Colombia\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"fmartinezro@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":565,\"checked_out_time\":\"2022-07-30 03:43:10\",\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":\\\"\\\",\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":\\\"\\\",\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":\\\"\\\",\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":\\\"\\\",\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":4,\"access\":1,\"mobile\":\"\",\"webpage\":\"http:\\/\\/grupovirtus.org\\/\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2022-07-30 03:41:50\",\"created_by\":\"565\",\"created_by_alias\":\"\",\"modified\":\"2022-07-30 03:47:28\",\"modified_by\":565,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"publish_up\":null,\"publish_down\":null,\"version\":2,\"hits\":3}',0);
/*!40000 ALTER TABLE `virtus_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_languages`
--

DROP TABLE IF EXISTS `virtus_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_languages`
--

LOCK TABLES `virtus_languages` WRITE;
/*!40000 ALTER TABLE `virtus_languages` DISABLE KEYS */;
INSERT INTO `virtus_languages` VALUES (1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,2),(2,91,'es-ES','Spanish (es-ES)','Español (España)','es','es_es','',NULL,'','',0,1,1);
/*!40000 ALTER TABLE `virtus_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_mail_templates`
--

DROP TABLE IF EXISTS `virtus_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_mail_templates`
--

LOCK TABLES `virtus_mail_templates` WRITE;
/*!40000 ALTER TABLE `virtus_mail_templates` DISABLE KEYS */;
INSERT INTO `virtus_mail_templates` VALUES ('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),('plg_system_privacyconsent.request.reminder','plg_system_privacyconsent','','PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),('plg_system_updatenotification.mail','plg_system_updatenotification','','PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `virtus_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_menu`
--

DROP TABLE IF EXISTS `virtus_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_menu`
--

LOCK TABLES `virtus_menu` WRITE;
/*!40000 ALTER TABLE `virtus_menu` DISABLE KEYS */;
INSERT INTO `virtus_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,53,0,'*',0,NULL,NULL),(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL),(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL),(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL),(10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL),(11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL),(12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL),(13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL),(14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL),(15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL),(16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL),(17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL),(18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL),(19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL),(20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL),(21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL),(101,'mainmenu','Inicio','home','','home','index.php?option=com_content&view=featured','component',1,1,1,19,565,'2022-07-30 03:10:13',0,1,' ',13,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":3,\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":0,\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',41,42,1,'*',0,NULL,NULL),(102,'mainmenu','Tematicas','tematicas','','tematicas','#','url',1,1,1,0,NULL,NULL,0,1,' ',13,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',43,48,0,'*',0,NULL,NULL),(103,'mainmenu','Programación Estructurada','estructurada','','tematicas/estructurada','index.php?option=com_content&view=category&layout=blog&id=8','component',1,102,2,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',44,45,0,'*',0,NULL,NULL),(104,'mainmenu','Programación Orientada a Objetos','poo','','tematicas/poo','index.php?option=com_content&view=category&layout=blog&id=9','component',1,102,2,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',46,47,0,'*',0,NULL,NULL),(105,'mainmenu','Contacto','contacto','','contacto','#','url',1,1,1,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',49,52,0,'*',0,NULL,NULL),(106,'mainmenu','Formulario de Contacto','formulario-contacto','','contacto/formulario-contacto','index.php?option=com_contact&view=contact&id=1','component',1,105,2,7,NULL,NULL,0,1,' ',0,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',50,51,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `virtus_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_menu_types`
--

DROP TABLE IF EXISTS `virtus_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_menu_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_menu_types`
--

LOCK TABLES `virtus_menu_types` WRITE;
/*!40000 ALTER TABLE `virtus_menu_types` DISABLE KEYS */;
INSERT INTO `virtus_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site',0);
/*!40000 ALTER TABLE `virtus_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_messages`
--

DROP TABLE IF EXISTS `virtus_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int unsigned NOT NULL DEFAULT '0',
  `user_id_to` int unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_messages`
--

LOCK TABLES `virtus_messages` WRITE;
/*!40000 ALTER TABLE `virtus_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_messages_cfg`
--

DROP TABLE IF EXISTS `virtus_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_messages_cfg` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_messages_cfg`
--

LOCK TABLES `virtus_messages_cfg` WRITE;
/*!40000 ALTER TABLE `virtus_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_modules`
--

DROP TABLE IF EXISTS `virtus_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_modules`
--

LOCK TABLES `virtus_modules` WRITE;
/*!40000 ALTER TABLE `virtus_modules` DISABLE KEYS */;
INSERT INTO `virtus_modules` VALUES (1,39,'Main Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',1,'sidebar-2',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"customRegLinkMenu\":\"\",\"greeting\":1,\"name\":0,\"profilelink\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Ruta Navegación','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,0,'mod_breadcrumbs',1,1,'{\"showHere\":1,\"showHome\":1,\"homeText\":\"\",\"showLast\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":0,\"cache_time\":0,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,55,'Sample Data','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(88,67,'Latest Actions','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(89,68,'Privacy Dashboard','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),(96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),(99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),(100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),(101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),(102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),(103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),(109,94,'Búsqueda','',NULL,1,'breadcrumbs',565,'2022-07-30 23:22:44',NULL,NULL,1,'mod_finder',1,0,'{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":0,\"alt_label\":\"\",\"show_button\":1,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `virtus_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_modules_menu`
--

DROP TABLE IF EXISTS `virtus_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_modules_menu`
--

LOCK TABLES `virtus_modules_menu` WRITE;
/*!40000 ALTER TABLE `virtus_modules_menu` DISABLE KEYS */;
INSERT INTO `virtus_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0);
/*!40000 ALTER TABLE `virtus_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_newsfeeds`
--

DROP TABLE IF EXISTS `virtus_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int unsigned NOT NULL DEFAULT '1',
  `cache_time` int unsigned NOT NULL DEFAULT '3600',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_newsfeeds`
--

LOCK TABLES `virtus_newsfeeds` WRITE;
/*!40000 ALTER TABLE `virtus_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_overrider`
--

DROP TABLE IF EXISTS `virtus_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_overrider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_overrider`
--

LOCK TABLES `virtus_overrider` WRITE;
/*!40000 ALTER TABLE `virtus_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_postinstall_messages`
--

DROP TABLE IF EXISTS `virtus_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_postinstall_messages` (
  `postinstall_message_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_postinstall_messages`
--

LOCK TABLES `virtus_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `virtus_postinstall_messages` DISABLE KEYS */;
INSERT INTO `virtus_postinstall_messages` VALUES (1,220,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,220,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,220,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,220,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),(5,220,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1);
/*!40000 ALTER TABLE `virtus_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_privacy_consents`
--

DROP TABLE IF EXISTS `virtus_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_privacy_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_privacy_consents`
--

LOCK TABLES `virtus_privacy_consents` WRITE;
/*!40000 ALTER TABLE `virtus_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_privacy_requests`
--

DROP TABLE IF EXISTS `virtus_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_privacy_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_privacy_requests`
--

LOCK TABLES `virtus_privacy_requests` WRITE;
/*!40000 ALTER TABLE `virtus_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_redirect_links`
--

DROP TABLE IF EXISTS `virtus_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_redirect_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_redirect_links`
--

LOCK TABLES `virtus_redirect_links` WRITE;
/*!40000 ALTER TABLE `virtus_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_scheduler_tasks`
--

DROP TABLE IF EXISTS `virtus_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_scheduler_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
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
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_scheduler_tasks`
--

LOCK TABLES `virtus_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `virtus_scheduler_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_schemas`
--

DROP TABLE IF EXISTS `virtus_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_schemas`
--

LOCK TABLES `virtus_schemas` WRITE;
/*!40000 ALTER TABLE `virtus_schemas` DISABLE KEYS */;
INSERT INTO `virtus_schemas` VALUES (220,'4.1.3-2022-04-08');
/*!40000 ALTER TABLE `virtus_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_session`
--

DROP TABLE IF EXISTS `virtus_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint unsigned DEFAULT NULL,
  `guest` tinyint unsigned DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_session`
--

LOCK TABLES `virtus_session` WRITE;
/*!40000 ALTER TABLE `virtus_session` DISABLE KEYS */;
INSERT INTO `virtus_session` VALUES (_binary '5ahmpt9333kp2vocpj64shodlr',NULL,1,1659234464,'joomla|s:340:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU5MjM0NDY0O3M6NDoibGFzdCI7aToxNjU5MjM0NDY0O3M6Mzoibm93IjtpOjE2NTkyMzQ0NjQ7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),(_binary 'eb5cqkbqrmo7l4tn4b96diqidr',1,1,1659235129,'joomla|s:620:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU5MjM0Mjg5O3M6NDoibGFzdCI7aToxNjU5MjM0NDU3O3M6Mzoibm93IjtpOjE2NTkyMzUxMjk7fXM6NzoiY291bnRlciI7aToyO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,'');
/*!40000 ALTER TABLE `virtus_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_tags`
--

DROP TABLE IF EXISTS `virtus_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_tags`
--

LOCK TABLES `virtus_tags` WRITE;
/*!40000 ALTER TABLE `virtus_tags` DISABLE KEYS */;
INSERT INTO `virtus_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',565,'2022-07-09 22:51:41','',565,'2022-07-09 22:51:41','','',0,'*',1,NULL,NULL);
/*!40000 ALTER TABLE `virtus_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_template_overrides`
--

DROP TABLE IF EXISTS `virtus_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_template_overrides` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_template_overrides`
--

LOCK TABLES `virtus_template_overrides` WRITE;
/*!40000 ALTER TABLE `virtus_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_template_styles`
--

DROP TABLE IF EXISTS `virtus_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_template_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_template_styles`
--

LOCK TABLES `virtus_template_styles` WRITE;
/*!40000 ALTER TABLE `virtus_template_styles` DISABLE KEYS */;
INSERT INTO `virtus_template_styles` VALUES (10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),(11,'cassiopeia',0,'0','Cassiopeia - Default',1,'','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),(12,'purity_iii',0,'0','purity_III - Predeterminado',0,'','{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":null,\"link_titles\":null,\"theme\":\"red\",\"logotype\":\"image\",\"sitename\":\"Plataforma de Ense\\u00f1anza de la Programaci\\u00f3n\",\"slogan\":\"\",\"logoimage\":\"images\\/logo_white.png#joomlaImage:\\/\\/local-images\\/logo_white.png?width=400&height=131\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"blog\",\"sublayout\":\"\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"slide\",\"navigation_animation_duration\":\"400\",\"mm_config\":null,\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":null,\"snippet_close_head\":null,\"snippet_open_body\":null,\"snippet_close_body\":null,\"snippet_debug\":\"0\",\"theme_extras_com_community\":null,\"theme_extras_com_easyblog\":null,\"theme_extras_com_easydiscuss\":null,\"theme_extras_com_easysocial\":null,\"theme_extras_com_joomprofile\":null,\"theme_extras_com_kunena\":null,\"theme_extras_com_mijoshop\":null,\"theme_extras_layout_glossary\":null}'),(13,'purity_iii',0,'1','purity_III - Corporate',0,'','{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"link_titles\":\"\",\"theme\":\"\",\"logotype\":\"image\",\"sitename\":\"Plataforma de Ense\\u00f1anza de la Programaci\\u00f3n\",\"slogan\":\"\",\"logoimage\":\"images\\/logo_white.png#joomlaImage:\\/\\/local-images\\/logo_white.png?width=400&height=131\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"corporate\",\"sublayout\":\"\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"slide\",\"navigation_animation_duration\":\"400\",\"mm_config\":\"\",\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\",\"snippet_debug\":\"0\"}');
/*!40000 ALTER TABLE `virtus_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_ucm_base`
--

DROP TABLE IF EXISTS `virtus_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_ucm_base` (
  `ucm_id` int unsigned NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_ucm_base`
--

LOCK TABLES `virtus_ucm_base` WRITE;
/*!40000 ALTER TABLE `virtus_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_ucm_content`
--

DROP TABLE IF EXISTS `virtus_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_ucm_content` (
  `core_content_id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int unsigned DEFAULT NULL,
  `core_access` int unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int unsigned NOT NULL DEFAULT '0',
  `core_version` int unsigned NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int unsigned NOT NULL DEFAULT '0',
  `core_type_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_ucm_content`
--

LOCK TABLES `virtus_ucm_content` WRITE;
/*!40000 ALTER TABLE `virtus_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_update_sites`
--

DROP TABLE IF EXISTS `virtus_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_update_sites` (
  `update_site_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_update_sites`
--

LOCK TABLES `virtus_update_sites` WRITE;
/*!40000 ALTER TABLE `virtus_update_sites` DISABLE KEYS */;
INSERT INTO `virtus_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1659222137,'',NULL,NULL),(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_4.xml',1,1659222143,'',NULL,NULL),(3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1659222144,'',NULL,NULL),(4,'','extension','http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml',1,1659222145,'',NULL,NULL),(5,'','extension','http://update.joomlart.com/service/tracking/j31/purity_iii.xml',1,1659222146,'',NULL,NULL);
/*!40000 ALTER TABLE `virtus_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_update_sites_extensions`
--

DROP TABLE IF EXISTS `virtus_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_update_sites_extensions`
--

LOCK TABLES `virtus_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `virtus_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `virtus_update_sites_extensions` VALUES (1,220),(2,221),(2,228),(3,24),(4,229),(5,230);
/*!40000 ALTER TABLE `virtus_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_updates`
--

DROP TABLE IF EXISTS `virtus_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_updates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_updates`
--

LOCK TABLES `virtus_updates` WRITE;
/*!40000 ALTER TABLE `virtus_updates` DISABLE KEYS */;
INSERT INTO `virtus_updates` VALUES (398,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'4.0.2.1','','https://update.joomla.org/language/details4/ar-AA_details.xml','','',''),(399,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/bg-BG_details.xml','','',''),(400,2,0,'Catalan','','pkg_ca-ES','package','',0,'4.0.4.2','','https://update.joomla.org/language/details4/ca-ES_details.xml','','',''),(401,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'4.1.0.3','','https://update.joomla.org/language/details4/zh-CN_details.xml','','',''),(402,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'4.1.4.2','','https://update.joomla.org/language/details4/zh-TW_details.xml','','',''),(403,2,0,'Czech','','pkg_cs-CZ','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/cs-CZ_details.xml','','',''),(404,2,0,'Danish','','pkg_da-DK','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/da-DK_details.xml','','',''),(405,2,0,'Dutch','','pkg_nl-NL','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/nl-NL_details.xml','','',''),(406,2,0,'English, Australia','','pkg_en-AU','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/en-AU_details.xml','','',''),(407,2,0,'English, Canada','','pkg_en-CA','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/en-CA_details.xml','','',''),(408,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/en-NZ_details.xml','','',''),(409,2,0,'English, USA','','pkg_en-US','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/en-US_details.xml','','',''),(410,2,0,'Estonian','','pkg_et-EE','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/et-EE_details.xml','','',''),(411,2,0,'Finnish','','pkg_fi-FI','package','',0,'4.1.1.2','','https://update.joomla.org/language/details4/fi-FI_details.xml','','',''),(412,2,0,'Flemish','','pkg_nl-BE','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/nl-BE_details.xml','','',''),(413,2,0,'French','','pkg_fr-FR','package','',0,'4.1.5.3','','https://update.joomla.org/language/details4/fr-FR_details.xml','','',''),(414,2,0,'Georgian','','pkg_ka-GE','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/ka-GE_details.xml','','',''),(415,2,0,'German','','pkg_de-DE','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/de-DE_details.xml','','',''),(416,2,0,'German, Austria','','pkg_de-AT','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/de-AT_details.xml','','',''),(417,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/de-LI_details.xml','','',''),(418,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/de-LU_details.xml','','',''),(419,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/de-CH_details.xml','','',''),(420,2,0,'Greek','','pkg_el-GR','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/el-GR_details.xml','','',''),(421,2,0,'Hungarian','','pkg_hu-HU','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/hu-HU_details.xml','','',''),(422,2,0,'Italian','','pkg_it-IT','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/it-IT_details.xml','','',''),(423,2,0,'Japanese','','pkg_ja-JP','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/ja-JP_details.xml','','',''),(424,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'4.1.2.1','','https://update.joomla.org/language/details4/kk-KZ_details.xml','','',''),(425,2,0,'Lithuanian','','pkg_lt-LT','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/lt-LT_details.xml','','',''),(426,2,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'4.0.1.1','','https://update.joomla.org/language/details4/nb-NO_details.xml','','',''),(427,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/fa-IR_details.xml','','',''),(428,2,0,'Polish','','pkg_pl-PL','package','',0,'4.1.0.5','','https://update.joomla.org/language/details4/pl-PL_details.xml','','',''),(429,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'4.0.3.1','','https://update.joomla.org/language/details4/pt-BR_details.xml','','',''),(430,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'4.0.0-rc4.2','','https://update.joomla.org/language/details4/pt-PT_details.xml','','',''),(431,2,0,'Romanian','','pkg_ro-RO','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/ro-RO_details.xml','','',''),(432,2,0,'Russian','','pkg_ru-RU','package','',0,'4.1.3.1','','https://update.joomla.org/language/details4/ru-RU_details.xml','','',''),(433,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'4.1.4.1','','https://update.joomla.org/language/details4/sr-YU_details.xml','','',''),(434,2,0,'Slovak','','pkg_sk-SK','package','',0,'4.0.6.1','','https://update.joomla.org/language/details4/sk-SK_details.xml','','',''),(435,2,0,'Slovenian','','pkg_sl-SI','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/sl-SI_details.xml','','',''),(436,2,0,'Swedish','','pkg_sv-SE','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/sv-SE_details.xml','','',''),(437,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/ta-IN_details.xml','','',''),(438,2,0,'Thai','','pkg_th-TH','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/th-TH_details.xml','','',''),(439,2,0,'Turkish','','pkg_tr-TR','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/tr-TR_details.xml','','',''),(440,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'4.0.3.2','','https://update.joomla.org/language/details4/uk-UA_details.xml','','',''),(441,2,0,'Welsh','','pkg_cy-GB','package','',0,'4.1.5.1','','https://update.joomla.org/language/details4/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `virtus_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_user_keys`
--

DROP TABLE IF EXISTS `virtus_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_user_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_user_keys`
--

LOCK TABLES `virtus_user_keys` WRITE;
/*!40000 ALTER TABLE `virtus_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_user_notes`
--

DROP TABLE IF EXISTS `virtus_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_user_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_user_notes`
--

LOCK TABLES `virtus_user_notes` WRITE;
/*!40000 ALTER TABLE `virtus_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_user_profiles`
--

DROP TABLE IF EXISTS `virtus_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_user_profiles`
--

LOCK TABLES `virtus_user_profiles` WRITE;
/*!40000 ALTER TABLE `virtus_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_user_usergroup_map`
--

DROP TABLE IF EXISTS `virtus_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_user_usergroup_map` (
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_user_usergroup_map`
--

LOCK TABLES `virtus_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `virtus_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `virtus_user_usergroup_map` VALUES (565,8);
/*!40000 ALTER TABLE `virtus_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_usergroups`
--

DROP TABLE IF EXISTS `virtus_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_usergroups`
--

LOCK TABLES `virtus_usergroups` WRITE;
/*!40000 ALTER TABLE `virtus_usergroups` DISABLE KEYS */;
INSERT INTO `virtus_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `virtus_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_users`
--

DROP TABLE IF EXISTS `virtus_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_users`
--

LOCK TABLES `virtus_users` WRITE;
/*!40000 ALTER TABLE `virtus_users` DISABLE KEYS */;
INSERT INTO `virtus_users` VALUES (565,'admin','Administrador','jejaras@correo.udistrital.edu.co','$2y$10$CVxND2nuthMFi/ADD7wQg.k4LYN4ToCcuD1bg3nFgYIux2n9EBcfC',0,1,'2022-07-09 22:53:22','2022-07-30 22:48:11','0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `virtus_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_viewlevels`
--

DROP TABLE IF EXISTS `virtus_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_viewlevels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_viewlevels`
--

LOCK TABLES `virtus_viewlevels` WRITE;
/*!40000 ALTER TABLE `virtus_viewlevels` DISABLE KEYS */;
INSERT INTO `virtus_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `virtus_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_webauthn_credentials`
--

DROP TABLE IF EXISTS `virtus_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_webauthn_credentials`
--

LOCK TABLES `virtus_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `virtus_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_workflow_associations`
--

DROP TABLE IF EXISTS `virtus_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_workflow_associations`
--

LOCK TABLES `virtus_workflow_associations` WRITE;
/*!40000 ALTER TABLE `virtus_workflow_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtus_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_workflow_stages`
--

DROP TABLE IF EXISTS `virtus_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_workflow_stages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_workflow_stages`
--

LOCK TABLES `virtus_workflow_stages` WRITE;
/*!40000 ALTER TABLE `virtus_workflow_stages` DISABLE KEYS */;
INSERT INTO `virtus_workflow_stages` VALUES (1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL);
/*!40000 ALTER TABLE `virtus_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_workflow_transitions`
--

DROP TABLE IF EXISTS `virtus_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_workflow_transitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_workflow_transitions`
--

LOCK TABLES `virtus_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `virtus_workflow_transitions` DISABLE KEYS */;
INSERT INTO `virtus_workflow_transitions` VALUES (1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),(2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),(3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),(4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),(5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),(6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),(7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `virtus_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtus_workflows`
--

DROP TABLE IF EXISTS `virtus_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtus_workflows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtus_workflows`
--

LOCK TABLES `virtus_workflows` WRITE;
/*!40000 ALTER TABLE `virtus_workflows` DISABLE KEYS */;
INSERT INTO `virtus_workflows` VALUES (1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2022-07-09 22:51:53',565,'2022-07-09 22:51:53',565,NULL,NULL);
/*!40000 ALTER TABLE `virtus_workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-30 21:39:11
