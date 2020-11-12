-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: wjp_online
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Bookmark',6,'add_bookmark'),(22,'Can change Bookmark',6,'change_bookmark'),(23,'Can delete Bookmark',6,'delete_bookmark'),(24,'Can view Bookmark',6,'view_bookmark'),(25,'Can add User Setting',7,'add_usersettings'),(26,'Can change User Setting',7,'change_usersettings'),(27,'Can delete User Setting',7,'delete_usersettings'),(28,'Can view User Setting',7,'view_usersettings'),(29,'Can add User Widget',8,'add_userwidget'),(30,'Can change User Widget',8,'change_userwidget'),(31,'Can delete User Widget',8,'delete_userwidget'),(32,'Can view User Widget',8,'view_userwidget'),(33,'Can add log entry',9,'add_log'),(34,'Can change log entry',9,'change_log'),(35,'Can delete log entry',9,'delete_log'),(36,'Can view log entry',9,'view_log'),(37,'Can add revision',10,'add_revision'),(38,'Can change revision',10,'change_revision'),(39,'Can delete revision',10,'delete_revision'),(40,'Can view revision',10,'view_revision'),(41,'Can add version',11,'add_version'),(42,'Can change version',11,'change_version'),(43,'Can delete version',11,'delete_version'),(44,'Can view version',11,'view_version'),(45,'Can add 轮播图',12,'add_banner'),(46,'Can change 轮播图',12,'change_banner'),(47,'Can delete 轮播图',12,'delete_banner'),(48,'Can view 轮播图',12,'view_banner'),(49,'Can add 邮箱验证码',13,'add_emailverifyrecord'),(50,'Can change 邮箱验证码',13,'change_emailverifyrecord'),(51,'Can delete 邮箱验证码',13,'delete_emailverifyrecord'),(52,'Can view 邮箱验证码',13,'view_emailverifyrecord'),(53,'Can add 用户信息',14,'add_userprofile'),(54,'Can change 用户信息',14,'change_userprofile'),(55,'Can delete 用户信息',14,'delete_userprofile'),(56,'Can view 用户信息',14,'view_userprofile'),(57,'Can add 课程',15,'add_course'),(58,'Can change 课程',15,'change_course'),(59,'Can delete 课程',15,'delete_course'),(60,'Can view 课程',15,'view_course'),(61,'Can add 章节',16,'add_lesson'),(62,'Can change 章节',16,'change_lesson'),(63,'Can delete 章节',16,'delete_lesson'),(64,'Can view 章节',16,'view_lesson'),(65,'Can add 视频',17,'add_video'),(66,'Can change 视频',17,'change_video'),(67,'Can delete 视频',17,'delete_video'),(68,'Can view 视频',17,'view_video'),(69,'Can add 课程资源',18,'add_courseresource'),(70,'Can change 课程资源',18,'change_courseresource'),(71,'Can delete 课程资源',18,'delete_courseresource'),(72,'Can view 课程资源',18,'view_courseresource'),(73,'Can add 城市',19,'add_citydict'),(74,'Can change 城市',19,'change_citydict'),(75,'Can delete 城市',19,'delete_citydict'),(76,'Can view 城市',19,'view_citydict'),(77,'Can add 课程机构',20,'add_courseorg'),(78,'Can change 课程机构',20,'change_courseorg'),(79,'Can delete 课程机构',20,'delete_courseorg'),(80,'Can view 课程机构',20,'view_courseorg'),(81,'Can add 教师',21,'add_teacher'),(82,'Can change 教师',21,'change_teacher'),(83,'Can delete 教师',21,'delete_teacher'),(84,'Can view 教师',21,'view_teacher'),(85,'Can add 用户咨询',22,'add_userask'),(86,'Can change 用户咨询',22,'change_userask'),(87,'Can delete 用户咨询',22,'delete_userask'),(88,'Can view 用户咨询',22,'view_userask'),(89,'Can add 用户消息',23,'add_usermessage'),(90,'Can change 用户消息',23,'change_usermessage'),(91,'Can delete 用户消息',23,'delete_usermessage'),(92,'Can view 用户消息',23,'view_usermessage'),(93,'Can add 用户收藏',24,'add_userfavorite'),(94,'Can change 用户收藏',24,'change_userfavorite'),(95,'Can delete 用户收藏',24,'delete_userfavorite'),(96,'Can view 用户收藏',24,'view_userfavorite'),(97,'Can add 课程评论',25,'add_coursecomments'),(98,'Can change 课程评论',25,'change_coursecomments'),(99,'Can delete 课程评论',25,'delete_coursecomments'),(100,'Can view 课程评论',25,'view_coursecomments'),(101,'Can add 用户课程',26,'add_usercourse'),(102,'Can change 用户课程',26,'change_usercourse'),(103,'Can delete 用户课程',26,'delete_usercourse'),(104,'Can view 用户课程',26,'view_usercourse'),(105,'Can add captcha store',27,'add_captchastore'),(106,'Can change captcha store',27,'change_captchastore'),(107,'Can delete captcha store',27,'delete_captchastore'),(108,'Can view captcha store',27,'view_captchastore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (68,'MDOZ','mdoz','fa7a3b22e3d4c631b9fe60470afa2d92149e58c3','2020-11-08 11:40:08.318289');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_course`
--

DROP TABLE IF EXISTS `course_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `degree` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `youneed_know` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_course_course_org_id_6a10e205_fk_organizat` (`course_org_id`),
  KEY `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_course`
--

LOCK TABLES `course_course` WRITE;
/*!40000 ALTER TABLE `course_course` DISABLE KEYS */;
INSERT INTO `course_course` VALUES (1,'python','python基础知识讲解','Python是一种跨平台的计算机程序设计语言。 是一个高层次的结合了解释性、编译性、互动性和面向对象的脚本语言。最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越多被用于独立的、大型项目的开发。','zj',60,89,10,'courses/202011/py_VtbYWuM.png',64,'2020-11-08 06:14:00.000000',2,'python','1',3,'天天向上','好好学习'),(2,'java','Java开发','Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点 [2]  。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等','gj',130,50,100,'courses/202011/java_rkOdnXl.jfif',412,'2020-11-08 06:18:00.000000',2,'java','2',1,'天天向上','好好学习'),(3,'flask开发','利用flask框架进行web开发','Flask是一个使用 Python 编写的轻量级 Web 应用框架。其 WSGI 工具箱采用 Werkzeug ，模板引擎则使用 Jinja2 。Flask使用 BSD 授权。\r\nFlask也被称为 “microframework” ，因为它使用简单的核心，用 extension 增加其他功能。Flask没有默认使用的数据库、窗体验证工具。','zj',300,65,39,'courses/202011/flask.jfif',21,'2020-11-09 01:49:00.000000',2,'python','3',4,'天天向上','好好学习'),(4,'vue','vue.js开发','Vue.js 是构建 Web 界面的 JavaScript 库，提供数据驱动的组件，还有简单灵活的 API，使得 MVVM 更简单','zj',160,65,35,'courses/202011/vue.png',30,'2020-11-09 01:51:00.000000',2,'前端','1',2,'天天向上','好好学习'),(5,'挖掘机','挖掘机技术教育培训','挖掘机 [1]  ，又称挖掘机械（excavating machinery)，又称挖土机，是用铲斗挖掘高于或低于承机面的物料，并装入运输车辆或卸至堆料场的土方机械。\r\n挖掘机挖掘的物料主要是土壤、煤、泥沙以及经过预松后的土壤和岩石。从近几年工程机械的发展来看，挖掘机的发展相对较快，挖掘机已经成为工程建设中最主要的工程机械之一。 挖掘机最重要的三个参数：操作重量（质量），发动机功率和铲斗斗容。','gj',635,320,120,'courses/202011/02_small.jpg',168,'2020-11-09 01:54:00.000000',2,'','2',1,'天天向上','好好学习'),(6,'c++','数量掌握c++','C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计。C++擅长面向对象程序设计的同时，还可以进行基于过程的程序设计，因而C++就适应的问题规模而论，大小由之。 [1] \r\nC++不仅拥有计算机高效运行的实用性特征，同时还致力于提高大规模程序的编程质量与程序设计语言的问题描述能力。','cj',326,29,26,'courses/202011/c.jpg',19,'2020-11-09 06:33:00.000000',2,'c++','1',3,'天天向上','好好学习'),(7,'C语言','掌握C语言基础','C语言是一门面向过程的、抽象化的通用程序设计语言，广泛应用于底层开发。C语言能以简易的方式编译、处理低级存储器。C语言是仅产生少量的机器语言以及不需要任何运行环境支持便能运行的高效率程序设计语言。尽管C语言提供了许多低级处理的功能，但仍然保持着跨平台的特性，以一个标准规格写出的C语言程序可在包括类似嵌入式处理器以及超级计算机等作业平台的许多计算机平台上进行编译。 [1] \r\n现在最新的C语言标准是C17。','zj',360,325,68,'courses/202011/c_xaUgp3w.jpg',161,'2020-11-09 06:35:00.000000',2,'前端','3',2,'天天向上','好好学习'),(8,'大数据','掌握大数据开发','数据（big data），IT行业术语，是指无法在一定时间范围内用常规软件工具进行捕捉、管理和处理的数据集合，是需要新处理模式才能具有更强的决策力、洞察发现力和流程优化能力的海量、高增长率和多样化的信息资产。\r\n在维克托·迈尔-舍恩伯格及肯尼斯·库克耶编写的《大数据时代》 [1]  中大数据指不用随机分析法（抽样调查）这样捷径，而采用所有数据进行分析处理。大数据的5V特点（IBM提出）：Volume（大量）、Velocity（高速）、Variety（多样）、Value（低价值密度）、Veracity（真实性）。','zj',461,368,295,'courses/202011/dsj_xMzqjB8.jpg',269,'2020-11-09 06:37:00.000000',2,'java','3',1,'天天向上','好好学习'),(9,'linux开发','掌握linux操作','Linux，全称GNU/Linux，是一种免费使用和自由传播的类UNIX操作系统，其内核由林纳斯·本纳第克特·托瓦兹于1991年10月5日首次发布，它主要受到Minix和Unix思想的启发，是一个基于POSIX和Unix的多用户、多任务、支持多线程和多CPU的操作系统。它能运行主要的Unix工具软件、应用程序和网络协议。它支持32位和64位硬件。Linux继承了Unix以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。Linux有上百种不同的发行版，如基于社区开发的debian、archlinux，和基于商业开发的Red Hat Enterprise Linux、SUSE、oracle linux等。','gj',698,563,653,'courses/202011/linux_F2lBtTg.jpg',89,'2020-11-09 06:39:00.000000',2,'linux','2',4,'天天向上','好好学习'),(10,'网络运维','网络运维','是指为保障电信网络与业务正常、安全、有效运行而采取的生产组织管理活动，简称运维管理或OAM。负责维护并确保整个服务的高可用性,同时不断优化系统架构提升部署效率。对网络中路由器，交换机，服务器，动力系统，空调系统，存储设备，防火墙等设备进行 实时监测，自动生成网络拓扑的嵌入式硬件设备。','gj',532,489,439,'courses/202011/01_small_zw5Q5Ef.jpg',1201,'2020-11-09 06:40:00.000000',5,'运维','1',4,'天天向上','好好学习');
/*!40000 ALTER TABLE `course_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_courseresource`
--

DROP TABLE IF EXISTS `course_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `download` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_courseresource_course_id_d5504211_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_courseresource_course_id_d5504211_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_courseresource`
--

LOCK TABLES `course_courseresource` WRITE;
/*!40000 ALTER TABLE `course_courseresource` DISABLE KEYS */;
INSERT INTO `course_courseresource` VALUES (1,'python基础知识点合集','course/resource/202011/python-zhengze.jpg','2020-11-11 06:28:00.000000',1),(2,'python数据类型知识点合集','course/resource/202011/zip.png','2020-11-11 06:29:00.000000',1);
/*!40000 ALTER TABLE `course_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lesson`
--

DROP TABLE IF EXISTS `course_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_lesson_course_id_65df4a1c_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lesson`
--

LOCK TABLES `course_lesson` WRITE;
/*!40000 ALTER TABLE `course_lesson` DISABLE KEYS */;
INSERT INTO `course_lesson` VALUES (1,'python初步了解','2020-11-11 01:46:00.000000',1),(2,'python环境搭建','2020-11-11 01:47:00.000000',1),(3,'python字符串','2020-11-11 01:47:00.000000',1),(4,'python列表讲解','2020-11-11 01:47:00.000000',1),(5,'字典讲解','2020-11-11 01:48:00.000000',1),(6,'循环语句讲解','2020-11-11 01:48:00.000000',1),(7,'判断语句讲解','2020-11-11 01:48:00.000000',1);
/*!40000 ALTER TABLE `course_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_video`
--

DROP TABLE IF EXISTS `course_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_video_lesson_id_0731e8a9_fk_course_lesson_id` (`lesson_id`),
  CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_video`
--

LOCK TABLES `course_video` WRITE;
/*!40000 ALTER TABLE `course_video` DISABLE KEYS */;
INSERT INTO `course_video` VALUES (1,'python基础','2020-11-11 01:49:00.000000',1,'http://vfx.mtime.cn/Video/2019/03/21/mp4/190321153853126488.mp4',0),(2,'安装python','2020-11-11 01:50:00.000000',2,'http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4',0),(3,'python字符串','2020-11-11 01:50:00.000000',3,'http://vjs.zencdn.net/v/oceans.mp4',0),(4,'列表知识点讲解','2020-11-11 01:51:00.000000',4,'http://www.w3school.com.cn/example/html5/mov_bbb.mp4',0),(5,'初步了解','2020-11-11 02:06:00.000000',1,'https://media.w3.org/2010/05/sintel/trailer.mp4',20);
/*!40000 ALTER TABLE `course_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(27,'captcha','captchastore'),(4,'contenttypes','contenttype'),(15,'course','course'),(18,'course','courseresource'),(16,'course','lesson'),(17,'course','video'),(25,'operation','coursecomments'),(22,'operation','userask'),(26,'operation','usercourse'),(24,'operation','userfavorite'),(23,'operation','usermessage'),(19,'organization','citydict'),(20,'organization','courseorg'),(21,'organization','teacher'),(10,'reversion','revision'),(11,'reversion','version'),(5,'sessions','session'),(12,'users','banner'),(13,'users','emailverifyrecord'),(14,'users','userprofile'),(6,'xadmin','bookmark'),(9,'xadmin','log'),(7,'xadmin','usersettings'),(8,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-03 06:43:12.416676'),(2,'contenttypes','0002_remove_content_type_name','2020-11-03 06:43:14.493164'),(3,'auth','0001_initial','2020-11-03 06:43:15.939768'),(4,'auth','0002_alter_permission_name_max_length','2020-11-03 06:43:20.700142'),(5,'auth','0003_alter_user_email_max_length','2020-11-03 06:43:20.752969'),(6,'auth','0004_alter_user_username_opts','2020-11-03 06:43:20.827768'),(7,'auth','0005_alter_user_last_login_null','2020-11-03 06:43:20.898683'),(8,'auth','0006_require_contenttypes_0002','2020-11-03 06:43:20.982427'),(9,'auth','0007_alter_validators_add_error_messages','2020-11-03 06:43:21.045709'),(10,'auth','0008_alter_user_username_max_length','2020-11-03 06:43:21.111533'),(11,'auth','0009_alter_user_last_name_max_length','2020-11-03 06:43:21.178354'),(12,'auth','0010_alter_group_name_max_length','2020-11-03 06:43:21.333938'),(13,'auth','0011_update_proxy_permissions','2020-11-03 06:43:21.407772'),(14,'users','0001_initial','2020-11-03 06:43:23.310543'),(15,'admin','0001_initial','2020-11-03 06:43:29.585794'),(16,'admin','0002_logentry_remove_auto_add','2020-11-03 06:43:32.186408'),(17,'admin','0003_logentry_add_action_flag_choices','2020-11-03 06:43:32.238223'),(18,'course','0001_initial','2020-11-03 06:43:34.112766'),(19,'organization','0001_initial','2020-11-03 06:43:38.618344'),(20,'reversion','0001_squashed_0004_auto_20160611_1202','2020-11-03 06:43:41.959226'),(21,'sessions','0001_initial','2020-11-03 06:43:46.427252'),(22,'xadmin','0001_initial','2020-11-03 06:43:48.105065'),(23,'xadmin','0002_log','2020-11-03 06:43:52.916062'),(24,'xadmin','0003_auto_20160715_0100','2020-11-03 06:43:56.301223'),(25,'users','0002_auto_20201103_1717','2020-11-03 09:17:34.244691'),(26,'operation','0001_initial','2020-11-04 03:24:57.184216'),(27,'captcha','0001_initial','2020-11-05 07:35:57.007137'),(28,'organization','0002_courseorg_category','2020-11-06 03:14:21.856581'),(29,'organization','0003_auto_20201106_1925','2020-11-06 11:25:23.558016'),(30,'course','0002_course_course_org','2020-11-08 00:49:39.602064'),(31,'organization','0004_teacher_image','2020-11-08 01:29:29.908930'),(32,'course','0003_course_category','2020-11-09 12:53:13.942903'),(33,'course','0004_course_tag','2020-11-10 01:24:49.931255'),(34,'course','0005_video_url','2020-11-11 01:49:12.679557'),(35,'course','0006_video_learn_time','2020-11-11 01:55:10.508796'),(36,'course','0007_auto_20201111_1516','2020-11-11 07:16:37.235937'),(37,'organization','0005_teacher_teacher_age','2020-11-12 03:06:24.582143'),(38,'course','0008_auto_20201112_1947','2020-11-12 11:47:37.991787'),(39,'course','0009_auto_20201112_1949','2020-11-12 11:49:21.248220');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('00td3uea9uth7gdtflbnhxg6h0sh2muq','NjkyZDcxOTFkODBhNjQ4ZGJkYzA2ZTQwOWEwNTdiZGVkNmQyMzc3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDkzYjIyMDkzY2EzY2VlYTRhNzI3NDcwMjBiMThlZTVhMjI2NWQ0In0=','2020-11-18 11:42:04.897184'),('25udggo71y6g1glhfsifdz0yaf08qft1','YTA1MDE3YzU1ZjU5NTJjOWE4N2Y5MDUzYWY5NzJlMzk3OTNiNTc3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0OTNiMjIwOTNjYTNjZWVhNGE3Mjc0NzAyMGIxOGVlNWEyMjY1ZDQiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2020-11-18 12:19:31.135401'),('66u0cbm4s8f57a1dc7fwbhxu80hwpje8','NGY2ZjY5MWQwMTNkYTM3ZDIyOGQ3NzVjNzNkZTU4MTEzM2JhOWQ0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0OTNiMjIwOTNjYTNjZWVhNGE3Mjc0NzAyMGIxOGVlNWEyMjY1ZDQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl19','2020-11-20 06:57:18.277462'),('cuaectbrbaqz7ki4oxmwl8255o9g9pjr','YjlmMzUzZmFjYzkyNTQ1Y2Q1NTI1ZTlhOGFiMjk3MDQzYjY5YTZjZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0OTNiMjIwOTNjYTNjZWVhNGE3Mjc0NzAyMGIxOGVlNWEyMjY1ZDQifQ==','2020-11-26 01:54:06.222955'),('s62doi9nhmfc85qxdv8406i5msnogzs7','MDVhMjA2ZGZlMWE5ZTE3NjU4YmM2NWM0MzJlZjNkMDA5ZTcwYTg0ZTp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjA0MTZiN2YxOWFkOTQxYmEwYTRlYjkxMzcyOWZkMzMyMWU1NjNkMDIifQ==','2020-11-19 12:30:39.182444'),('sgeht5j0voi0t4kno5oxba3uqem0xwxh','NDQ0ZGUyYmMyYTY5Y2YxYjRhMzdjYzU4NjI0MWM5MWQxYzRhN2I5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0OTNiMjIwOTNjYTNjZWVhNGE3Mjc0NzAyMGIxOGVlNWEyMjY1ZDQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJjb3Vyc2UiXSwiIl19','2020-11-26 11:50:05.086588');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` VALUES (1,'看到第三章了，虽然有些知识还不是听得很懂，但是感觉很有用的样子，想的是先听完一遍再说。然后再来听第二遍。最后想说老师棒棒哒！！！','2020-11-11 11:40:09.440657',1,1),(2,'老师您讲的很好，很期待下次的课程。我有个小问题，jedi我用git clone 和 apt-get 都装上了，:help jedi-vim ,提示我E149: 抱歉，没有 jedi-vim 的说明，补全也不能用，有点搞不清楚了。我安装vim插件python-mode也不能用...','2020-11-11 11:40:23.542452',1,1),(3,'你好。我在看7.3节 关于使用上下文管理的那个例子。关于telnetlib库使用的一些问题。 Telnet.read_until(expected, timeout=None) ;使用这个方法容易卡在输入登陆用户名的位置就不执行了。假如telnet到目标主机，如果提示符不是login ，就无法登陆吗？','2020-11-11 11:40:32.366334',1,1),(4,'精品，老早就听医生的课了，这次的课程又让我长见识了，就像别的同学说的那样，如此简洁的实现酷炫动画的方式让我激动，赶快学完视频内容好去实现那10个任务，到时候希望徐大神好好指导指导我，如果学完后能给我个行业推荐啥的就更好了，明年就开始实习了！老紧张了--','2020-11-11 11:40:54.484263',1,1),(5,'hjghhj','2020-11-12 09:17:16.499425',10,1);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `course_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
INSERT INTO `operation_userask` VALUES (1,'王华','15235995754','asd','2020-11-06 13:02:17.475198'),(2,'王华','15235995754','asd','2020-11-08 00:33:00.346211');
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` VALUES (1,'2020-11-10 08:59:07.000000',2,11),(2,'2020-11-11 12:49:00.000000',1,11),(3,'2020-11-11 12:49:00.000000',1,2),(4,'2020-11-11 13:25:48.544636',1,1),(5,'2020-11-11 13:26:08.223357',7,1),(6,'2020-11-12 00:46:53.730043',10,1);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
INSERT INTO `operation_userfavorite` VALUES (7,1,2,'2020-11-08 13:01:14.858461',1),(102,1,1,'2020-11-11 13:09:23.207946',1),(110,2,2,'2020-11-12 07:10:09.276402',1),(111,1,3,'2020-11-12 07:10:19.946731',1);
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'北京市','北京，简称“京”，古称燕京、北平，是中华人民共和国的首都、直辖市、国家中心城市、超大城市，国务院批复确定的中国政治中心、文化中心、国际交往中心、科技创新中心 [1]  。截至2018年，全市下辖16个区，总面积16410.54平方千米，2019年末，常住人口2153.6万人，城镇人口1865万人，城镇化率86.6% [2]  ，常住外来人口达794.3万人。','2020-11-06 03:05:00.000000'),(2,'上海市','上海（Shanghai），简称“沪”或“申”，是中华人民共和国省级行政区、直辖市、国家中心城市、超大城市，中国国际经济、金融、贸易、航运、科技创新中心 [1]  ，国家物流枢纽 [2-5]  。全市下辖16个区，总面积6340.5平方千米，2019年常住人口2428.14万人，户籍常住人口1450.43万人，外来常住人口977.71万人。','2020-11-06 03:06:00.000000'),(3,'广州市','广州被全球权威机构GaWC评为世界一线城市  ，每年举办的中国进出口商品交易会吸引了大量客商以及大量外资企业、世界500强企业的投资 [13]  ，国家高新技术企业达8700多家，总量居全国前三，集结了全省80%的高校、70%的科技人员，在校大学生总量居全国第一。广州人均住户存款均居全国前三位，人均可支配收入居全省第一位 。广州人类发展指数居中国第一位','2020-11-06 03:06:00.000000'),(4,'深圳市','深圳之名始见史籍于明朝永乐八年（1410年），清朝初年建墟，1979年成立深圳市，1980年成为中国设立的第一个经济特区，中国改革开放的窗口和新兴移民城市，创造了举世瞩目的“深圳速度”，被誉为“中国硅谷” [16-18]  。深圳在中国高新技术产业、金融服务、外贸出口、海洋运输、创意文化等多方面占有重要地位，也在中国的制度创新、扩大开放等方面肩负着试验和示范的重要使命。','2020-11-06 03:06:00.000000'),(5,'天津市','天津地处中国北部、海河下游、东临渤海，是中国北方最大的港口城市，国家物流枢纽，全国先进制造研发基地 [9]  、北方国际航运核心区 [10]  、金融创新运营示范区 [11]  、改革开放先行区 [12]  ，首批沿海开放城市，是中蒙俄经济走廊主要节点、海上丝绸之路的战略支点、“一带一路”交汇点、亚欧大陆桥最近的东部起点，位于海河五大支流南运河、子牙河、大清河、永定河、北运河的汇合处和入海口','2020-11-06 03:07:00.000000'),(6,'西安','西安地处关中平原中部、北濒渭河、南依秦岭，八水润长安，是联合国教科文组织于1981年确定的“世界历史名城” [1]  ，是中华文明和中华民族重要发祥地之一，丝绸之路的起点 [5-7]  ，历史上先后有十多个王朝在此建都 [8]  ，丰镐都城、秦阿房宫、兵马俑，汉未央宫、长乐宫，隋大兴城，唐大明宫、兴庆宫等勾勒出“长安情结”','2020-11-06 06:24:00.000000'),(7,'杭州','杭州地处中国华东地区、钱塘江下游、东南沿海、浙江北部、京杭大运河南端，是环杭州湾大湾区核心城市 [4]  、沪嘉杭G60科创走廊中心城市 [5]  、国际重要的电子商务中心 [6]  。杭州人文古迹众多，西湖及其周边有大量的自然及人文景观遗迹，具代表性的有西湖文化、良渚文化、丝绸文化、茶文化，以及流传下来的许多故事传说。','2020-11-06 06:24:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (2,'新东方','新东方，全名北京新东方教育科技（集团）有限公司，总部位于中国北京市海淀区中关村，是综合性教育集团，同时也是教育培训集团。公司业务包括外语培训、中小学基础教育、学前教育、在线教育、出国咨询、图书出版等各个领域。除新东方外，旗下还有优能中学教育、泡泡少儿教育、前途出国咨询、迅程在线教育、大愚文化出版、满天星亲子教育、同文高考复读等子品牌。',0,0,'org/202011/105c98dbdd0015b64da2d13b23cdd86f_222_222.jpg','北京市海淀区','2020-11-06 06:26:00.000000',1,'pxjg',10,360),(3,'北大青鸟','北大青鸟APTECH成立于1999年。依托北京大学优质雄厚的教育资源和背景，秉承“教育改变生活”的发展理念，一直致力于培养中国IT技能型紧缺人才。北大青鸟以完善的标准化管理为依托实现了体系的规模化发展，200余家授权培训中心遍布全国60多个重要城市，全国合作院校超过600所，同10000余家知名企业建立了战略合作伙伴关系，累计培养和输送80余万IT职业化人才进入IT行业。',0,0,'org/202011/a6adca8ff09c3844659323a3b63d21b3_222_222.jpg','北京市东城区','2020-11-06 06:28:00.000000',1,'gx',5,250),(4,'八维','北京八维研修学院创建于2008年，隶属于八维信息集团。北京八维研修学院是经北京市教委批准的以工程专业性高等教育为主，集职业性高等教育、职业技能认证等教育为一体的全日制民办非学历高等教育机构。 [1-2] \r\n北京八维研修学院地处北京市海淀区中关村上地信息产业园区，位于首都教育圈(CED)、信息圈(CID)、科技圈(CSD)交汇处，南邻清华、北大、中科院，东接中关村高科技园，北望中关村软件园区。这里企业如织、高校林立、环境优雅、人文气息浓郁。 [1] \r\n北京八维研修学院设施完备，现拥有PC机万余台，设有语音教室、投影机房、网络工程实验室、CCIE实验室以及各学院的独立工作室;此外，图书馆、形体训练室、体育健身房、多功能报告厅等配套设施也一应俱全。\r\n北京八维研修学院紧随时代行业发展潮流的变化，开设的十五大专业，包括开发类：软件工程专业、全栈开发专业、云计算专业、网站工程专业、网络工程专业、大数据专业、人工智能专业、物联网专业、游戏专业、移动通信专业；设计类：传媒专业、建筑专业、网络营销专业；语言类：高级翻译专业、国际贸易专业，均是发展前景广阔、市场需求量大、高精尖的专业。',0,0,'org/202011/timg.jfif','北京市海淀区','2020-11-06 06:29:00.000000',1,'pxjg',16,300),(5,'复旦大学','复旦大学（Fudan University），位于上海市，是中华人民共和国教育部直属、中央直管副部级建制的全国重点大学，世界一流大学建设高校（A类），国家“985工程”、“211工程”重点建设高校，入选国家“珠峰计划”、“强基计划”、“111计划”、“2011计划”、卓越医生教育培养计划、卓越法律人才教育培养计划、国家建设高水平大学公派研究生项目、新工科研究与实践项目、中国政府奖学金来华留学生接收院校、全国首批深化创新创业教育改革示范高校、首批学位授权自主审核单位，九校联盟、环太平洋大学联盟、中国大学校长联谊会、东亚研究型大学协会、新工科教育国际联盟、医学“双一流”建设联盟、长三角研究型大学联盟、 长三角高校智库联盟创始成员，中国大学智库论坛秘书处单位，是一所国内顶尖的综合性研究型大学。',0,0,'org/202011/fd.jfif','上海市浦东新区','2020-11-06 06:33:00.000000',2,'gx',20,364),(6,'哈工大','哈尔滨工业大学（Harbin Institute of Technology），由工业和信息化部直属的全国重点大学，位列国家首批世界一流大学建设高校A类、985工程、211工程，九校联盟、环太平洋大学联盟、中国大学校长联谊会、卓越大学联盟、全球能源互联网大学联盟、中俄工科大学联盟、中国-西班牙大学联盟、中国人工智能教育联席会创始成员，入选珠峰计划、强基计划、2011计划、111计划、卓越工程师教育培养计划、国家大学生创新性实验计划、国家建设高水平大学公派研究生项目、新工科研究与实践项目、中国政府奖学金来华留学生接收院校、全国深化创新创业教育改革示范高校等，是首批设有研究生院、拥有研究生自主划线资格的高校，首批学位授权自主审核单位。\r\n学校始建于1920年，1951年被确定为全国学习国外高等教育办学模式的两所样板大学之一，1954年进入国家首批重点建设的6所高校行列。1996年进入国家”211工程“首批重点建设高校。1999年被确定为国家首批”985工程“重点建设的9所大学之一。2000年与哈尔滨建筑大学合并组建新的哈尔滨工业大学。2017年入选“双一流”建设A类高校名单。',0,0,'org/202011/hgd.jfif','深圳市南山区','2020-11-06 06:35:00.000000',4,'gx',23,136),(7,'上交大','上海交通大学（Shanghai Jiao Tong University）简称“上海交大” [1]  ，是教育部直属并与上海市共建、中央直管副部级建制的全国重点大学，位列“世界一流大学建设高校（A类）”、“985工程”、“211工程”，为九校联盟、中国大学校长联谊会、Universitas 21、环太平洋大学联盟、21世纪学术联盟、国际应用科技开发协作网、新工科教育国际联盟成员，入选“珠峰计划”、“强基计划”、“111计划”、“2011计划”、卓越医生教育培养计划、卓越法律人才教育培养计划、卓越工程师教育培养计划、卓越农林人才教育培养计划、国家建设高水平大学公派研究生项目、中国政府奖学金来华留学生接收院校、学位授权自主审核单位。 [2-6] \r\n学校创建于1896年，原名南洋公学，1911年更名为南洋大学堂，1929年更名为国立交通大学，1949年更名为交通大学；1957年经历西迁与分设，分为交通大学上海部分和西安部分；1959年，交通大学上海部分启用“上海交通大学”校名；1999年，原上海农学院并入；2005年，与原上海第二医科大学合并。 [3]  [7-9] \r\n截至2019年12月，学校有徐汇、闵行、黄浦、长宁、七宝、浦东等校区，总占地面积300余万平方米；有31个学院/直属系，13家附属医院；有全日制本科生（国内）16351人、全日制硕士研究生14326人、全日制博士研究生8496人，学位留学生2837人；专任教师3236名。截至2020年4月，有博士后流动站35个，一级学科博士点45个，专业学位博士点3个，一级学科硕士点57个，专业学位硕士点23个，本科专业67个。',300,200,'org/202011/sjd.jfif','上海市徐汇区','2020-11-06 06:42:00.000000',2,'gx',36,963),(8,'深圳大学','深圳大学（Shenzhen University），简称“深大”，位于广东省深圳市，是经国家教育部批准设立，由广东省主管、深圳市人民政府主办的综合性大学；入选广东省高水平大学重点建设高校、国家大学生文化素质教育基地、国家国际科技合作基地、国家级人才培养模式创新实验区、国家级大学生创新创业训练计划、全国文明校园、全国首批深化创新创业教育改革示范高校，全国地方高校UOOC联盟发起单位，中国-中东欧国家高校联合会、粤港澳高校联盟、CDIO工程教育联盟成员单位，具有推荐免试研究生资格高校。 [1-5] \r\n深圳大学于1983年经国务院批准创办。中央、教育部和地方高度重视特区大学建设。北大援建中文、外语类学科，清华援建电子、建筑类学科，人大援建经济、法律类学科。1995年，通过国家首批本科教学合格评价。1996年，获批为硕士学位授予单位。2006年，获批为博士学位授予单位。 [4]  [6] \r\n截至2020年4月，学校有粤海、沧海、丽湖、罗湖四个校区，校园总面积2.72平方公里，校园总建筑面积146.9万平方米，教学、科研仪器设备总值28亿元，全校纸本资源423万余册；设有研究生院，24个教学学院，两所直属附属医院，100个本科专业；有省级重点学科15个；有博士后科研流动站9个，博士后工作站1个，一级学科博士点10个，一级学科硕士点38个，专业硕士学位授权类别22个；有全日制在校生37684人，其中全日制本科生28632人、硕士研究生8337人、博士研究生301人、留学生414人；有教职工3704人，其中专任教师2385人。',260,180,'org/202011/szdx.jfif','深圳市南山区','2020-11-06 06:45:00.000000',4,'gx',17,763),(9,'广州大学','广州大学（Guangzhou University）是经教育部批准成立的综合性大学，实行省市共建、以市为主的办学体制，是广东省高水平大学重点学科建设高校、广东省“冲一流”重点学科建设高校、广州市高水平大学建设高校。\r\n学校是2000年由广州师范学院、华南建设学院（西院）、广州教育学院、原广州大学和广州高等师范专科学校等高校合并组建而成。原广州大学办学历史可以追溯到私立广州大学创办的1927年，原广州教育学院创办于1953年，原广州师范学院创办于1958年，原华南建设学院（西院）创办于1984年，原广州高等师范专科学校创办于1985年。\r\n截至2020年7月，学校有大学城、桂花岗两个校区，校园总面积1880亩，总建筑面积88.5万平方米；在校全日制本科生29788人，硕士和博士研究生4990人；有在岗教职工3206人，其中专职教学科研人员2018人；设有27个学院，2020年本科招生专业69个；有4个博士后科研流动站、7个一级学科博士位授权点和1个专业博士学位授权类别、32个一级学科硕士位授权点、4个二级学科硕士点、19个硕士专业学位授权点。',0,0,'org/202011/gzdx.jfif','广州市大学城','2020-11-06 06:46:00.000000',3,'gx',13,456),(10,'西交大','西安交通大学（Xi’an Jiaotong University）简称“西安交大”，位于陕西西安，是中华人民共和国教育部直属的综合性研究型全国重点大学，由教育部与国家国防科技工业局共建，位列世界一流大学建设高校A类、国家“七五”“八五”重点建设高校、211工程、985工程首批重点建设高校，2011计划牵头高校，环太平洋大学联盟、C9联盟 [1]  、珠峰计划、111计划、卓越计划、中国大学校长联谊会、全球能源互联网大学联盟、中俄交通大学联盟、CDIO工程教育联盟、强基计划成员，丝绸之路大学联盟发起高校，中国人工智能教育联席会理事长单位，学位授权自主审核单位，中国三所开设少年班高校之一。 [2-3] \r\n1896年在上海创建了南洋公学；1921年定名为交通大学；1956年交通大学的主体内迁西安 [4]  ；1957年分设为交通大学西安、上海两个部分，实行统一领导；1959年，交通大学西安部分定名为西安交通大学；2000年国务院决定将西安交通大学、西安医科大学、陕西财经学院三校合并，组成新的西安交通大学。 [5] \r\n截至2020年4月，学校兴庆、雁塔、曲江、中国西部科技创新港四个校区占地约8000亩；拥有博士后流动站25个，一级学科博士点32个，专业学位博士点5个，一级学科硕士点43个，专业学位硕士点27个；一级学科国家重点学科8个；有教职工6285人；有学生42379名，其中本科生19012名，研究生21383名，留学生1984名。',0,0,'org/202011/xjd.jfif','西安市雁塔区','2020-11-06 06:48:00.000000',6,'gx',3,365),(11,'天津大学','天津大学（Tianjin University），简称 “天大” ，坐落于天津市，是由教育部直属的全国重点大学，是国家“世界一流大学建设高校A类”、国家首批“211工程”和“985工程”重点建设高校，中国工程院和教育部10所工程教育改革试点高校之一，首批学位授权自主审核单位，入选国家“强基计划”、“2011计划”、“111计划” 、“卓越工程师教育培养计划”、国家大学生创新性实验计划、国家建设高水平大学公派研究生项目、新工科研究与实践项目、首批高等学校科技成果转化和技术转移基地、全国首批深化创新创业教育改革示范高校。 [1] \r\n天津大学原名北洋大学，前身是1895年由光绪皇帝批准、盛宣怀出任学堂首任督办的 “北洋大学堂” 。北洋大学堂自创办之始，就仿照美国的大学模式，全面系统地学习西学。1951年，北洋大学与河北工学院合并，由国家定名为天津大学。 [2] \r\n截至2019年12月底，卫津路校区占地总面积136.2万平方米，北洋园校区占地总面积243.6万平方米，滨海工业研究院校区占地总面积30.9万平方米；有全日制在校生36900人，其中本科生19177人，硕士研究生12966人，博士研究生4757人；有教职工5066人；下设27个学院（部）；有72个本科专业，39个一级学科硕士点，29个一级学科博士点，25个博士后科研流动站。',0,0,'org/202011/tjdx.jfif','天津市津南区雅观路135号','2020-11-06 06:52:00.000000',5,'pxjg',26,894),(12,'西湖大学','西湖大学（Westlake University） [1]  ，是一所由社会力量举办、国家重点支持的非营利性的新型高等学校，由杭州市西湖教育基金会举办。 [2-3]  该大学预计借鉴美国加州理工学院的规模和斯坦福大学的办学理念，秉承“高起点、小而精、研究型”的办学定位，聚焦理学、生命与健康、前沿技术等方向设立一级学科；由顶尖人才领衔组建相关院系，首先以研究院的名义完成博士研究生的招生，偏重理工科，随后面向本科生。学校获批设立国家级博士后科研工作站， [4]  拥有独立招收博士后研究人员资格。 [1]  [5-6] \r\n西湖大学的前身为浙江西湖高等研究院（成立于2016年） [7]  ，由清华大学副校长施一公教授、南方科技大学校长陈十一教授、中国科学技术大学常务副校长潘建伟教授、首都医科大学校长饶毅教授等科学家发起筹建 [8]  。2018年2月14日，教育部正式批复同意浙江省设立西湖大学。杨振宁任西湖大学校董会名誉主席，钱颖一教授为校董会主席，施一公教授担任西湖大学首任校长。 [9-11] \r\n2018年10月20日，西湖大学成立大会在中国浙江省杭州市举行。2018年12月20日，西湖大学当选为2018年度文化体育娱乐类十大流行语',0,0,'org/202011/xhdx.jfif','杭州市西湖区云栖小镇石龙山街18号','2020-11-06 06:54:00.000000',7,'pxjg',18,351);
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `work_position` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `points` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'王华',5,'北京市新东方职业培训有限公司','讲师','认真',10,5,'2020-11-08 06:12:00.000000',2,'teacher/2020/11/aobama_7a5S1SM.png',32),(2,'李华',3,'北京市新东方职业培训有限公司','讲师','仔细',35,26,'2020-11-08 06:19:00.000000',2,'teacher/2020/11/gj.png',25),(3,'安教授',0,'复旦大学软件工程学院','教授','执教时间长，经验足',50,38,'2020-11-12 06:30:00.000000',5,'teacher/2020/11/fqy.png',59),(4,'张娜',16,'上海交通大学经贸学院','系主任','杰出青年教师',26,36,'2020-11-12 06:32:00.000000',7,'teacher/2020/11/gx.png',38);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_users_userprofile_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `serialized_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `object_repr` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (1,'1234','2206780358@qq.com','register','2020-11-04 06:43:00.000000'),(2,'6wDBZoWaebSIn1Dw','2206780358@qq.com','register','2020-11-05 12:12:19.461981'),(3,'E3QThXNlb5BwIcOA','2206780358@qq.com','register','2020-11-05 12:14:29.116292'),(4,'5E1NzjPsyr62l5Nt','2206780358@qq.com','register','2020-11-05 12:16:40.027066'),(5,'gnqzQqrtRSWDfy23','2206780358@qq.com','register','2020-11-05 12:19:46.435942'),(6,'XeMyzvOW8Mfh9MAM','2206780358@qq.com','register','2020-11-05 12:29:26.540412'),(7,'xnSBCxloXOB6LUnJ','2206780358@qq.com','forget','2020-11-06 01:38:49.974149'),(8,'TmaqHCPWaiVz0MiK','2206780358@qq.com','forget','2020-11-06 01:59:56.899579'),(9,'unMugfeSg7gVJRVa','2206780358@qq.com','forget','2020-11-06 02:02:20.193492'),(10,'mrIyoU99PUcwor5w','2206780358@qq.com','register','2020-11-08 02:34:40.069146'),(11,'RJGkw3CZIwzfkV5r','2206780358@qq.com','register','2020-11-08 02:35:48.536602'),(12,'dVeDwWwbcnEMkDIy','2206780358@qq.com','register','2020-11-08 02:52:01.873314'),(13,'nEZh6ukaBp0eKvGW','2206780358@qq.com','forget','2020-11-08 02:53:00.206150');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$150000$lSx93KQcBF9v$lDcP9LCnRF0jmgL2JSGGUy4O+ONovXQQnTP5pCwpmHU=','2020-11-12 01:54:05.923758',1,'admin','','','wjp@163.com',1,1,'2020-11-03 06:45:05.534594','小李',NULL,'female','<p>bjs</p>','15235995754','image/202011/gx.png'),(2,'123456',NULL,0,'李小龙','','','',0,1,'2020-11-03 06:47:00.000000','lxl',NULL,'female','北京市',NULL,'image/202011/QQ图片20190928204536.jpg'),(3,'123456',NULL,0,'theno1','','','',0,1,'2020-11-03 08:23:00.000000','theno1',NULL,'female','北京市',NULL,'image/202011/a.jpg'),(11,'pbkdf2_sha256$150000$NeVNOvsVo7qA$Ho1PZzrMHTheGV6sdQboRRX0a+8cHrJiGJMr/IFSu0c=','2020-11-11 12:28:42.528860',0,'2206780358@qq.com','','','2206780358@qq.com',0,1,'2020-11-08 02:52:01.691268','',NULL,'female','<p>北京市</p>',NULL,'image/202011/aobama.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2020-11-03 06:48:12.126240','127.0.0.1','2','李小龙','create','已添加。',14,1),(2,'2020-11-03 08:24:06.283938','127.0.0.1','3','theno1','create','已添加。',14,1),(3,'2020-11-04 06:43:53.027398','127.0.0.1','1','EmailVerifyRecord object (1)','create','已添加。',13,1),(4,'2020-11-06 03:05:59.055612','127.0.0.1','1','CityDict object (1)','create','已添加。',19,1),(5,'2020-11-06 03:06:10.810135','127.0.0.1','2','CityDict object (2)','create','已添加。',19,1),(6,'2020-11-06 03:06:46.317070','127.0.0.1','3','CityDict object (3)','create','已添加。',19,1),(7,'2020-11-06 03:07:02.858746','127.0.0.1','4','CityDict object (4)','create','已添加。',19,1),(8,'2020-11-06 03:07:14.853361','127.0.0.1','5','CityDict object (5)','create','已添加。',19,1),(9,'2020-11-06 03:10:39.634581','127.0.0.1','1','CourseOrg object (1)','create','已添加。',20,1),(10,'2020-11-06 06:19:49.412057','127.0.0.1','1','北京市','change','修改 desc',19,1),(11,'2020-11-06 06:20:04.213764','127.0.0.1','1','北京市','change','修改 desc',19,1),(12,'2020-11-06 06:20:20.886751','127.0.0.1','2','上海市','change','修改 desc',19,1),(13,'2020-11-06 06:22:53.047517','127.0.0.1','3','广州市','change','修改 desc',19,1),(14,'2020-11-06 06:23:36.187383','127.0.0.1','4','深圳市','change','修改 desc',19,1),(15,'2020-11-06 06:24:15.981214','127.0.0.1','5','天津市','change','修改 desc',19,1),(16,'2020-11-06 06:24:53.575923','127.0.0.1','6','西安','create','已添加。',19,1),(17,'2020-11-06 06:25:28.259117','127.0.0.1','7','杭州','create','已添加。',19,1),(18,'2020-11-06 06:26:10.407238','127.0.0.1',NULL,'','delete','批量删除 1 个 课程机构',NULL,1),(19,'2020-11-06 06:27:53.138283','127.0.0.1','2','CourseOrg object (2)','create','已添加。',20,1),(20,'2020-11-06 06:29:20.966532','127.0.0.1','3','CourseOrg object (3)','create','已添加。',20,1),(21,'2020-11-06 06:33:19.498999','127.0.0.1','4','CourseOrg object (4)','create','已添加。',20,1),(22,'2020-11-06 06:35:25.348226','127.0.0.1','5','CourseOrg object (5)','create','已添加。',20,1),(23,'2020-11-06 06:37:43.991968','127.0.0.1','8','哈尔滨','create','已添加。',19,1),(24,'2020-11-06 06:42:21.387290','127.0.0.1','6','CourseOrg object (6)','create','已添加。',20,1),(25,'2020-11-06 06:44:34.229577','127.0.0.1','7','CourseOrg object (7)','create','已添加。',20,1),(26,'2020-11-06 06:46:15.354281','127.0.0.1','8','CourseOrg object (8)','create','已添加。',20,1),(27,'2020-11-06 06:47:58.217536','127.0.0.1','9','CourseOrg object (9)','create','已添加。',20,1),(28,'2020-11-06 06:52:38.451490','127.0.0.1','10','CourseOrg object (10)','create','已添加。',20,1),(29,'2020-11-06 06:54:05.069337','127.0.0.1','11','CourseOrg object (11)','create','已添加。',20,1),(30,'2020-11-06 06:56:02.263088','127.0.0.1','12','CourseOrg object (12)','create','已添加。',20,1),(31,'2020-11-06 06:56:24.724332','127.0.0.1',NULL,'','delete','批量删除 1 个 城市',NULL,1),(32,'2020-11-08 06:13:33.852074','127.0.0.1','1','{0}的教师：王华','create','已添加。',21,1),(33,'2020-11-08 06:17:13.749686','127.0.0.1','1','python','create','已添加。',15,1),(34,'2020-11-08 06:19:20.109860','127.0.0.1','2','java','create','已添加。',15,1),(35,'2020-11-08 06:20:17.541064','127.0.0.1','2','{0}的教师：李华','create','已添加。',21,1),(36,'2020-11-09 01:51:00.988940','127.0.0.1','3','flask开发','create','已添加。',15,1),(37,'2020-11-09 01:54:38.111127','127.0.0.1','4','vue','create','已添加。',15,1),(38,'2020-11-09 06:33:10.011068','127.0.0.1','5','挖掘机','create','已添加。',15,1),(39,'2020-11-09 06:34:56.776212','127.0.0.1','6','c++','create','已添加。',15,1),(40,'2020-11-09 06:37:00.665443','127.0.0.1','7','C语言','create','已添加。',15,1),(41,'2020-11-09 06:39:09.175878','127.0.0.1','8','大数据','create','已添加。',15,1),(42,'2020-11-09 06:40:37.611858','127.0.0.1','9','linux开发','create','已添加。',15,1),(43,'2020-11-09 06:42:19.116784','127.0.0.1','10','网络运维','create','已添加。',15,1),(44,'2020-11-10 00:56:46.802423','127.0.0.1','2','java','change','修改 image 和 category',15,1),(45,'2020-11-10 01:01:27.823333','127.0.0.1','11','2206780358@qq.com','change','修改 address 和 image',14,1),(46,'2020-11-10 07:07:32.044178','127.0.0.1','1','admin','change','修改 last_login，address 和 image',14,1),(47,'2020-11-10 12:22:01.709569','127.0.0.1','10','网络运维','change','修改 image，course_org 和 category',15,1),(48,'2020-11-11 01:46:50.802217','127.0.0.1','1','《python》课程的章节 >> pyth','create','已添加。',16,1),(49,'2020-11-11 01:47:05.077197','127.0.0.1','1','《python》课程的章节 >> python初步了解','change','修改 name',16,1),(50,'2020-11-11 01:47:17.339597','127.0.0.1','2','《python》课程的章节 >> python环境搭建','create','已添加。',16,1),(51,'2020-11-11 01:47:33.307805','127.0.0.1','3','《python》课程的章节 >> python字符串','create','已添加。',16,1),(52,'2020-11-11 01:48:09.763910','127.0.0.1','4','《python》课程的章节 >> python列表讲解','create','已添加。',16,1),(53,'2020-11-11 01:48:19.332565','127.0.0.1','5','《python》课程的章节 >> 字典讲解','create','已添加。',16,1),(54,'2020-11-11 01:48:30.149880','127.0.0.1','6','《python》课程的章节 >> 循环语句讲解','create','已添加。',16,1),(55,'2020-11-11 01:48:42.580775','127.0.0.1','7','《python》课程的章节 >> 判断语句讲解','create','已添加。',16,1),(56,'2020-11-11 01:50:09.453610','127.0.0.1','1','Video object (1)','create','已添加。',17,1),(57,'2020-11-11 01:50:42.636010','127.0.0.1','2','Video object (2)','create','已添加。',17,1),(58,'2020-11-11 01:51:20.042688','127.0.0.1','3','Video object (3)','create','已添加。',17,1),(59,'2020-11-11 01:51:45.321403','127.0.0.1','4','Video object (4)','create','已添加。',17,1),(60,'2020-11-11 02:06:52.138627','127.0.0.1','5','Video object (5)','create','已添加。',17,1),(61,'2020-11-11 06:29:47.162821','127.0.0.1','1','CourseResource object (1)','create','已添加。',18,1),(62,'2020-11-11 06:30:37.028418','127.0.0.1','2','CourseResource object (2)','create','已添加。',18,1),(63,'2020-11-11 07:19:04.563051','127.0.0.1','1','python','change','修改 image，teacher，youneed_know 和 teacher_tell',15,1),(64,'2020-11-11 12:49:38.903439','127.0.0.1','2','UserCourse object (2)','create','已添加。',26,1),(65,'2020-11-11 12:49:48.008588','127.0.0.1','3','UserCourse object (3)','create','已添加。',26,1),(66,'2020-11-12 01:08:51.972636','127.0.0.1','5','Video object (5)','change','修改 url 和 learn_time',17,1),(67,'2020-11-12 02:29:10.086596','127.0.0.1','1','Video object (1)','change','修改 url',17,1),(68,'2020-11-12 02:41:56.060211','127.0.0.1','3','Video object (3)','change','修改 url',17,1),(69,'2020-11-12 02:44:43.475029','127.0.0.1','4','Video object (4)','change','修改 url',17,1),(70,'2020-11-12 02:47:03.176151','127.0.0.1','1','Video object (1)','change','修改 url',17,1),(71,'2020-11-12 02:50:02.212411','127.0.0.1','5','Video object (5)','change','修改 url',17,1),(72,'2020-11-12 02:51:01.058321','127.0.0.1','4','Video object (4)','change','修改 url',17,1),(73,'2020-11-12 02:51:07.113769','127.0.0.1','3','Video object (3)','change','没有字段被修改。',17,1),(74,'2020-11-12 02:51:12.695550','127.0.0.1','5','Video object (5)','change','没有字段被修改。',17,1),(75,'2020-11-12 02:51:47.601588','127.0.0.1','2','Video object (2)','change','修改 url',17,1),(76,'2020-11-12 02:51:54.992614','127.0.0.1','1','Video object (1)','change','没有字段被修改。',17,1),(77,'2020-11-12 06:31:23.063757','127.0.0.1','3','复旦大学的教师：安教授','create','已添加。',21,1),(78,'2020-11-12 06:31:40.576197','127.0.0.1','1','新东方的教师：王华','change','修改 image 和 teacher_age',21,1),(79,'2020-11-12 06:33:29.354849','127.0.0.1','4','上交大的教师：张娜','create','已添加。',21,1),(80,'2020-11-12 11:43:36.264571','127.0.0.1','1','python','change','修改 image 和 teacher',15,1),(81,'2020-11-12 11:46:02.203624','127.0.0.1','10','网络运维','change','修改 image，teacher，youneed_know 和 teacher_tell',15,1),(82,'2020-11-12 11:46:30.167004','127.0.0.1','9','linux开发','change','修改 image，teacher，youneed_know 和 teacher_tell',15,1),(83,'2020-11-12 11:49:44.257872','127.0.0.1','8','大数据','change','修改 image，teacher，youneed_know 和 teacher_tell',15,1),(84,'2020-11-12 11:50:04.926984','127.0.0.1','7','C语言','change','修改 image，teacher，youneed_know 和 teacher_tell',15,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','https://bootswatch.com/3/flatly/bootstrap.min.css',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-12 20:15:11
