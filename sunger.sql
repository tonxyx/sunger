-- MySQL dump 10.15  Distrib 10.0.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sunger
-- ------------------------------------------------------
-- Server version	10.0.32-MariaDB-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `easyii_admins`
--

DROP TABLE IF EXISTS `easyii_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_admins`
--

LOCK TABLES `easyii_admins` WRITE;
/*!40000 ALTER TABLE `easyii_admins` DISABLE KEYS */;
INSERT INTO `easyii_admins` VALUES (1,'vatrogasac_mirko','5e19738587c7bc014dbcaa5dc4994bfccf6c2af9','9oTfV9rWiIXft7H8925no_W0zja2MbIh',NULL),(2,'toni','d180305290bd707f55588ddb8852f2e6478c81af','cRP2N9xus_F6xDTDwy_bGvaqtDnFyvq7',NULL);
/*!40000 ALTER TABLE `easyii_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_article_categories`
--

DROP TABLE IF EXISTS `easyii_article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_article_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_article_categories`
--

LOCK TABLES `easyii_article_categories` WRITE;
/*!40000 ALTER TABLE `easyii_article_categories` DISABLE KEYS */;
INSERT INTO `easyii_article_categories` VALUES (1,'Tamburaši','/uploads/article/10987696102039246232195062259513-2dd9cb666d.jpg',1,'tamburasi',1,1,2,0,1),(2,'Vatrogasci','/uploads/article/18595354102096528377812907969878-26a8a6b118.jpg',2,'vatrogasci',2,1,2,0,1);
/*!40000 ALTER TABLE `easyii_article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_article_items`
--

DROP TABLE IF EXISTS `easyii_article_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_article_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_article_items`
--

LOCK TABLES `easyii_article_items` WRITE;
/*!40000 ALTER TABLE `easyii_article_items` DISABLE KEYS */;
INSERT INTO `easyii_article_items` VALUES (1,1,'svasta','/uploads/article/20280707102101939060276585278027-ed494733c2.jpg','asdfasf','<p>zxcvzvv</p>','svasta',1505593548,1,1),(2,1,'zxcv','/uploads/article/18517996102096385707446239004677-616be2d6f0.jpg','zxcv','<p>xzcv</p>','zxcv',1505653023,1,1),(3,2,'qwer','/uploads/article/18766744102096947955502087573074-ec84c92187.jpg','qwer','<p>qwer</p>','qwer',1505653089,0,1);
/*!40000 ALTER TABLE `easyii_article_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_carousel`
--

DROP TABLE IF EXISTS `easyii_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_carousel` (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`carousel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_carousel`
--

LOCK TABLES `easyii_carousel` WRITE;
/*!40000 ALTER TABLE `easyii_carousel` DISABLE KEYS */;
INSERT INTO `easyii_carousel` VALUES (1,'/uploads/carousel/10404029102023178039700294786215-244d9bcae8.jpg','','Sunger','Sunger u oblacima prosaranim suncem',1,1),(2,'/uploads/carousel/456248335649035461251517215o-47d9abc245.jpg','','Ostrve','Priprema za sijeno',2,1),(3,'/uploads/carousel/12244593925420517534299512832392-226caf043d.jpg','','Sunger','Sunger',3,1);
/*!40000 ALTER TABLE `easyii_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_categories`
--

DROP TABLE IF EXISTS `easyii_catalog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `fields` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_categories`
--

LOCK TABLES `easyii_catalog_categories` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_catalog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_item_data`
--

DROP TABLE IF EXISTS `easyii_catalog_item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_item_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`data_id`),
  KEY `item_id_name` (`item_id`,`name`),
  KEY `value` (`value`(300))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_item_data`
--

LOCK TABLES `easyii_catalog_item_data` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_item_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_catalog_item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_items`
--

DROP TABLE IF EXISTS `easyii_catalog_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `available` int(11) DEFAULT '1',
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `data` text NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_items`
--

LOCK TABLES `easyii_catalog_items` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_catalog_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_faq`
--

DROP TABLE IF EXISTS `easyii_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`faq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_faq`
--

LOCK TABLES `easyii_faq` WRITE;
/*!40000 ALTER TABLE `easyii_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_feedback`
--

DROP TABLE IF EXISTS `easyii_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_feedback`
--

LOCK TABLES `easyii_feedback` WRITE;
/*!40000 ALTER TABLE `easyii_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_files`
--

DROP TABLE IF EXISTS `easyii_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_files`
--

LOCK TABLES `easyii_files` WRITE;
/*!40000 ALTER TABLE `easyii_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_gallery_categories`
--

DROP TABLE IF EXISTS `easyii_gallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_gallery_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_gallery_categories`
--

LOCK TABLES `easyii_gallery_categories` WRITE;
/*!40000 ALTER TABLE `easyii_gallery_categories` DISABLE KEYS */;
INSERT INTO `easyii_gallery_categories` VALUES (1,'Slike Sunger','/uploads/gallery/10608220102039038948213095428925-37c3a273ae.jpg','slike-sunger',1,1,2,0,1,1);
/*!40000 ALTER TABLE `easyii_gallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_guestbook`
--

DROP TABLE IF EXISTS `easyii_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_guestbook` (
  `guestbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`guestbook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_guestbook`
--

LOCK TABLES `easyii_guestbook` WRITE;
/*!40000 ALTER TABLE `easyii_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_loginform`
--

DROP TABLE IF EXISTS `easyii_loginform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_loginform` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `user_agent` varchar(1024) NOT NULL,
  `time` int(11) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_loginform`
--

LOCK TABLES `easyii_loginform` WRITE;
/*!40000 ALTER TABLE `easyii_loginform` DISABLE KEYS */;
INSERT INTO `easyii_loginform` VALUES (1,'root','******','192.168.11.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',1505480213,1),(2,'root','******','192.168.11.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',1505509835,1),(3,'root','******','192.168.11.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',1505592977,1),(4,'root','******','192.168.11.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',1505637243,1);
/*!40000 ALTER TABLE `easyii_loginform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_migration`
--

DROP TABLE IF EXISTS `easyii_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_migration`
--

LOCK TABLES `easyii_migration` WRITE;
/*!40000 ALTER TABLE `easyii_migration` DISABLE KEYS */;
INSERT INTO `easyii_migration` VALUES ('m000000_000000_base',1505480212),('m000000_000000_install',1505480212);
/*!40000 ALTER TABLE `easyii_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_modules`
--

DROP TABLE IF EXISTS `easyii_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `settings` text NOT NULL,
  `notice` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_modules`
--

LOCK TABLES `easyii_modules` WRITE;
/*!40000 ALTER TABLE `easyii_modules` DISABLE KEYS */;
INSERT INTO `easyii_modules` VALUES (1,'article','yii\\easyii\\modules\\article\\ArticleModule','Articles','pencil','{\"categoryThumb\":true,\"articleThumb\":true,\"enablePhotos\":true,\"enableShort\":true,\"shortMaxLength\":255,\"enableTags\":true,\"itemsInFolder\":false}',0,45,1),(2,'carousel','yii\\easyii\\modules\\carousel\\CarouselModule','Carousel','picture','{\"enableTitle\":true,\"enableText\":true}',0,100,1),(3,'catalog','yii\\easyii\\modules\\catalog\\CatalogModule','Catalog','list-alt','{\"categoryThumb\":true,\"itemsInFolder\":false,\"itemThumb\":true,\"itemPhotos\":true,\"itemDescription\":true,\"itemSale\":true}',0,20,0),(4,'faq','yii\\easyii\\modules\\faq\\FaqModule','FAQ','question-sign','[]',0,10,0),(5,'feedback','yii\\easyii\\modules\\feedback\\FeedbackModule','Feedback','earphone','{\"mailAdminOnNewFeedback\":true,\"subjectOnNewFeedback\":\"New feedback\",\"templateOnNewFeedback\":\"@easyii\\/modules\\/feedback\\/mail\\/en\\/new_feedback\",\"answerTemplate\":\"@easyii\\/modules\\/feedback\\/mail\\/en\\/answer\",\"answerSubject\":\"Answer on your feedback message\",\"answerHeader\":\"Hello,\",\"answerFooter\":\"Best regards.\",\"enableTitle\":false,\"enablePhone\":true,\"enableCaptcha\":false}',0,65,1),(6,'file','yii\\easyii\\modules\\file\\FileModule','Files','floppy-disk','[]',0,60,1),(7,'gallery','yii\\easyii\\modules\\gallery\\GalleryModule','Photo Gallery','camera','{\"categoryThumb\":true,\"itemsInFolder\":false}',0,90,1),(8,'guestbook','yii\\easyii\\modules\\guestbook\\GuestbookModule','Guestbook','book','{\"enableTitle\":false,\"enableEmail\":true,\"preModerate\":false,\"enableCaptcha\":false,\"mailAdminOnNewPost\":true,\"subjectOnNewPost\":\"New message in the guestbook.\",\"templateOnNewPost\":\"@easyii\\/modules\\/guestbook\\/mail\\/en\\/new_post\",\"frontendGuestbookRoute\":\"\\/guestbook\",\"subjectNotifyUser\":\"Your post in the guestbook answered\",\"templateNotifyUser\":\"@easyii\\/modules\\/guestbook\\/mail\\/en\\/notify_user\"}',0,80,1),(9,'news','yii\\easyii\\modules\\news\\NewsModule','News','bullhorn','{\"enableThumb\":true,\"enablePhotos\":true,\"enableShort\":true,\"shortMaxLength\":256,\"enableTags\":true}',0,120,1),(10,'page','yii\\easyii\\modules\\page\\PageModule','Pages','file','[]',0,40,0),(11,'shopcart','yii\\easyii\\modules\\shopcart\\ShopcartModule','Orders','shopping-cart','{\"mailAdminOnNewOrder\":true,\"subjectOnNewOrder\":\"New order\",\"templateOnNewOrder\":\"@easyii\\/modules\\/shopcart\\/mail\\/en\\/new_order\",\"subjectNotifyUser\":\"Your order status changed\",\"templateNotifyUser\":\"@easyii\\/modules\\/shopcart\\/mail\\/en\\/notify_user\",\"frontendShopcartRoute\":\"\\/shopcart\\/order\",\"enablePhone\":true,\"enableEmail\":true}',0,30,0),(12,'subscribe','yii\\easyii\\modules\\subscribe\\SubscribeModule','E-mail subscribe','envelope','[]',0,50,1),(13,'text','yii\\easyii\\modules\\text\\TextModule','Text blocks','font','[]',0,70,1);
/*!40000 ALTER TABLE `easyii_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_news`
--

DROP TABLE IF EXISTS `easyii_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_news`
--

LOCK TABLES `easyii_news` WRITE;
/*!40000 ALTER TABLE `easyii_news` DISABLE KEYS */;
INSERT INTO `easyii_news` VALUES (1,'Povijest','/uploads/news/11040369102048528395443345257041-45a141c049.jpg','Sunger je maleno naselje u Hrvatskoj u općini Mrkopalj, koje ima 326 stanovnika, 162 muškarca i 164 žene, prema popisu iz 2011. godine.','<p>U neposrednoj blizini Sungera na ulazu u mjesto od strane <a href=\"https://hr.wikipedia.org/wiki/Delnice\">Delnica</a> i Lokava prostire se prekrasna crnogorična šuma Sungerski lug koja je do 1947. bila Zemljišna zajednica. U sklopu katastarske općine Sunger nalazi se planinski vrh Burni Bitoraj koji sa svojih 1385 m/nm predstavlja početak planinskog lanca poznat kao Velika Kapela. Najljepši dio Burnog Bitoraja nalazi se na sungerskoj strani posebice je to vidljivo između Sungera i Mrkoplja gdje se pruža pogled na cijelu planinu koja ovaj dio Gorskog kotara štiti od mediteranske klime. Sjeverozapadno su <a href=\"https://hr.wikipedia.org/wiki/Park-%C5%A1uma_Golubinjak\">park-šuma Golubinjak</a>, rezervat šumske vegetacije i <a href=\"https://hr.wikipedia.org/wiki/Lokve\">Lokve</a>, zapadno su <a href=\"https://hr.wikipedia.org/wiki/Brestova_Draga\">Brestova Draga</a>, <a href=\"https://hr.wikipedia.org/wiki/Slavica_(Fu%C5%BEine)\">Slavica</a> i <a href=\"https://hr.wikipedia.org/wiki/Belo_Selo\">Belo Selo</a>, jugozapadno su <a href=\"https://hr.wikipedia.org/wiki/Vrata_(Fu%C5%BEine)\">Vrata</a>, istočno je <a href=\"https://hr.wikipedia.org/wiki/Mrkopalj\">Mrkopalj</a>.</p>','povijest',1505593274,59,1);
/*!40000 ALTER TABLE `easyii_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_pages`
--

DROP TABLE IF EXISTS `easyii_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_pages`
--

LOCK TABLES `easyii_pages` WRITE;
/*!40000 ALTER TABLE `easyii_pages` DISABLE KEYS */;
INSERT INTO `easyii_pages` VALUES (1,'Tamburaši','<p>Sungerski tamburaši svoj tradicionalni koncert na prvi dan Božića – Sv. Stjepana, upriličili su u staroj sungerskoj školi. Svi koncerti bili su izuzetno dobro posjećeni što govori da mještani Mrkoplja i Sungera itekako vole koncerte svojih miljenika.</p><p>test text</p>','tamburasi');
/*!40000 ALTER TABLE `easyii_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_photos`
--

DROP TABLE IF EXISTS `easyii_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_photos`
--

LOCK TABLES `easyii_photos` WRITE;
/*!40000 ALTER TABLE `easyii_photos` DISABLE KEYS */;
INSERT INTO `easyii_photos` VALUES (1,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/10662069102038600246845833910774-b3305e613a.jpg','zxcvzvwqereq',1),(2,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/10608220102039038948213095428925-2668525335.jpg','zxcvxzv',2),(3,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/10608229102038725747583276651916-aa5d0aeb48.jpg','asdfasdfwqerewqr',3),(4,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/10887271102038773710382311054629-3ffe573f47.jpg','asdfaf',4),(5,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/10887271102038773710382311054629-9ce73ca40f.jpg','',5),(6,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/10987696102039246232195062259513-b4a5316065.jpg','',6),(7,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/10662069102038600246845833910774-b564955f83.jpg','',7),(8,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/11040369102048528395443345257041-ff2a3e020b.jpg','',8),(9,'yii\\easyii\\modules\\article\\models\\Item',2,'/uploads/photos/18595354102096528377812907969878-95913b78cc.jpg','',9),(10,'yii\\easyii\\modules\\article\\models\\Item',2,'/uploads/photos/18766744102096947955502087573074-79d273788c.jpg','',10),(11,'yii\\easyii\\modules\\article\\models\\Item',2,'/uploads/photos/19942906102100437296733431264817-fe8ad4fc1c.jpg','',11),(12,'yii\\easyii\\modules\\article\\models\\Item',3,'/uploads/photos/18766744102096947955502087573074-e23bfb7e4a.jpg','',12),(13,'yii\\easyii\\modules\\article\\models\\Item',3,'/uploads/photos/19942906102100437296733431264817-3a23a92824.jpg','',13),(14,'yii\\easyii\\modules\\article\\models\\Item',3,'/uploads/photos/18595354102096528377812907969878-e45ce28dae.jpg','',14),(15,'yii\\easyii\\modules\\article\\models\\Item',3,'/uploads/photos/18517996102096385707446239004677-c27a857ce5.jpg','',15),(16,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/10887271102038773710382311054629-064bd288fe.jpg','',16),(17,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/11143687102048531643524541955480-e227bc39fb.jpg','',17),(18,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/10987696102039246232195062259513-4b1672d2d8.jpg','',18),(19,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/11112961102045003419721152322749-ed7665d86a.jpg','',19),(20,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/11216599102045281147864187798959-ceb187d9b7.jpg','',20),(21,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/11040369102048528395443345257041-8a2745a63a.jpg','',21),(22,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/11206677102045230148189228007033-919207a9ab.jpg','',22);
/*!40000 ALTER TABLE `easyii_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_seotext`
--

DROP TABLE IF EXISTS `easyii_seotext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_seotext` (
  `seotext_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`seotext_id`),
  UNIQUE KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_seotext`
--

LOCK TABLES `easyii_seotext` WRITE;
/*!40000 ALTER TABLE `easyii_seotext` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_seotext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_settings`
--

DROP TABLE IF EXISTS `easyii_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `visibility` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_settings`
--

LOCK TABLES `easyii_settings` WRITE;
/*!40000 ALTER TABLE `easyii_settings` DISABLE KEYS */;
INSERT INTO `easyii_settings` VALUES (1,'easyii_version','EasyiiCMS version','0.9',0),(2,'recaptcha_key','ReCaptcha key','asdfasdf',1),(3,'password_salt','Password salt','61ERc3pgPM4S2z1xuewUf1TlYV8BQb3Z',0),(4,'root_auth_key','Root authorization key','hZ5JAXfsOyTyzD3A7hIM59JActbJ2Pdd',0),(5,'root_password','Root password','c8a70785999430f2dcd4d53520131ab01fdc9e47',1),(6,'auth_time','Auth time','86400',1),(7,'robot_email','Robot E-mail','tonibutkovic23@gmail.com',1),(8,'admin_email','Admin E-mail','tonibutkovic23@gmail.com',2),(9,'recaptcha_secret','ReCaptcha secret','asdfasdf',1),(10,'toolbar_position','Frontend toolbar position (\"top\" or \"bottom\")','top',1);
/*!40000 ALTER TABLE `easyii_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_shopcart_goods`
--

DROP TABLE IF EXISTS `easyii_shopcart_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_shopcart_goods` (
  `good_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `options` varchar(255) NOT NULL,
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  PRIMARY KEY (`good_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_shopcart_goods`
--

LOCK TABLES `easyii_shopcart_goods` WRITE;
/*!40000 ALTER TABLE `easyii_shopcart_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_shopcart_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_shopcart_orders`
--

DROP TABLE IF EXISTS `easyii_shopcart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_shopcart_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `remark` varchar(1024) NOT NULL,
  `access_token` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_shopcart_orders`
--

LOCK TABLES `easyii_shopcart_orders` WRITE;
/*!40000 ALTER TABLE `easyii_shopcart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_shopcart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_subscribe_history`
--

DROP TABLE IF EXISTS `easyii_subscribe_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_subscribe_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `sent` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_subscribe_history`
--

LOCK TABLES `easyii_subscribe_history` WRITE;
/*!40000 ALTER TABLE `easyii_subscribe_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_subscribe_subscribers`
--

DROP TABLE IF EXISTS `easyii_subscribe_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_subscribe_subscribers` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_subscribe_subscribers`
--

LOCK TABLES `easyii_subscribe_subscribers` WRITE;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_tags`
--

DROP TABLE IF EXISTS `easyii_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT '0',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_tags`
--

LOCK TABLES `easyii_tags` WRITE;
/*!40000 ALTER TABLE `easyii_tags` DISABLE KEYS */;
INSERT INTO `easyii_tags` VALUES (1,'povijest',1);
/*!40000 ALTER TABLE `easyii_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_tags_assign`
--

DROP TABLE IF EXISTS `easyii_tags_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `class` (`class`),
  KEY `item_tag` (`item_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_tags_assign`
--

LOCK TABLES `easyii_tags_assign` WRITE;
/*!40000 ALTER TABLE `easyii_tags_assign` DISABLE KEYS */;
INSERT INTO `easyii_tags_assign` VALUES ('yii\\easyii\\modules\\news\\models\\News',1,1);
/*!40000 ALTER TABLE `easyii_tags_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_texts`
--

DROP TABLE IF EXISTS `easyii_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_texts` (
  `text_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`text_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_texts`
--

LOCK TABLES `easyii_texts` WRITE;
/*!40000 ALTER TABLE `easyii_texts` DISABLE KEYS */;
INSERT INTO `easyii_texts` VALUES (1,'Dobro nam došli na nove stranice malenog mjesta pod nazivom Sunger. <br>\r\nTruditi ćemo se održavati stranicu sviježim informacijama te novostima i zanimljivostima u našem mjestu.','index-welcome');
/*!40000 ALTER TABLE `easyii_texts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-17 13:20:00
