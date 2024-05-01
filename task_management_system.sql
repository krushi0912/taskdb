-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: task_management_system
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attechments`
--

DROP TABLE IF EXISTS `attechments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attechments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int DEFAULT NULL,
  `oldfile_name` varchar(255) DEFAULT NULL,
  `newfile_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `attechments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attechments`
--

LOCK TABLES `attechments` WRITE;
/*!40000 ALTER TABLE `attechments` DISABLE KEYS */;
INSERT INTO `attechments` VALUES (1,1,'P7.txt','1714556006350-P7.txt',0),(2,2,'P7.txt','1714556083799-P7.txt',0);
/*!40000 ALTER TABLE `attechments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(80) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'webdesign','2024-05-01 09:24:46',1),(2,'devloper','2024-05-01 09:24:55',1),(3,'hr','2024-05-01 09:25:02',1),(4,'marketing','2024-05-01 09:25:26',1),(5,'qa','2024-05-01 09:25:32',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `reciver_id` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `reciver_id` (`reciver_id`),
  CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`reciver_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importants`
--

DROP TABLE IF EXISTS `importants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importants`
--

LOCK TABLES `importants` WRITE;
/*!40000 ALTER TABLE `importants` DISABLE KEYS */;
INSERT INTO `importants` VALUES (1,'High','2024-05-01 06:26:02','2024-05-01 06:26:02'),(2,'Modarate','2024-05-01 06:26:02','2024-05-01 06:26:02'),(3,'Low','2024-05-01 06:26:02','2024-05-01 06:26:02');
/*!40000 ALTER TABLE `importants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_datas`
--

DROP TABLE IF EXISTS `log_datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_datas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `is_success` tinyint(1) DEFAULT '0',
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `log_datas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_datas`
--

LOCK TABLES `log_datas` WRITE;
/*!40000 ALTER TABLE `log_datas` DISABLE KEYS */;
INSERT INTO `log_datas` VALUES (1,1,0,'2024-05-01 06:33:35'),(2,1,1,'2024-05-01 06:33:42'),(3,2,1,'2024-05-01 06:38:45'),(4,1,1,'2024-05-01 06:39:07'),(5,27,1,'2024-05-01 07:29:13'),(6,1,1,'2024-05-01 07:29:30'),(7,52,1,'2024-05-01 08:23:48'),(8,1,1,'2024-05-01 08:24:18'),(9,53,1,'2024-05-01 08:28:34'),(10,1,1,'2024-05-01 08:29:55'),(11,1,1,'2024-05-01 09:00:14'),(12,2,1,'2024-05-01 09:39:15'),(13,3,1,'2024-05-01 09:44:26'),(14,2,0,'2024-05-01 09:56:33'),(15,2,1,'2024-05-01 09:56:39'),(16,1,1,'2024-05-01 09:59:41'),(17,4,1,'2024-05-01 10:01:00'),(18,5,1,'2024-05-01 10:04:46'),(19,6,1,'2024-05-01 10:07:51'),(20,7,1,'2024-05-01 10:11:19'),(21,7,1,'2024-05-01 10:11:21'),(22,8,1,'2024-05-01 10:13:20');
/*!40000 ALTER TABLE `log_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission` varchar(50) DEFAULT NULL,
  `api` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboard','/login/dashboard','get','2024-04-14 18:44:26',NULL,1),(2,'dashboard','/login/dashboard','post','2024-04-14 18:45:16',NULL,1),(3,'admin dashboard','/admin/dashboard','get','2024-04-23 00:56:45','2024-04-23 00:56:45',1),(4,'admin/managers','/admin/managers','get','2024-04-23 01:08:31','2024-04-23 02:53:56',1),(5,'admin employee page','/admin/employees','get','2024-04-23 02:50:00','2024-04-23 03:40:17',1),(6,'admin tasks','/admin/tasks','get','2024-04-23 03:41:57','2024-04-23 03:41:57',1),(7,'admin teams','/admin/team','get','2024-04-23 03:45:42','2024-04-23 03:47:16',1),(8,'admin category','/admin/category','get','2024-04-23 03:49:08','2024-04-23 03:49:08',1),(9,'admin manager api','/admin/managersapi','get','2024-04-23 05:48:11','2024-04-23 05:53:21',1),(10,'admin managersapi search','/admin/managersapi/search/','get','2024-04-23 06:12:55','2024-04-23 06:13:47',1),(11,'admin managersapi','/admin/managersapi','delete','2024-04-23 06:17:37','2024-04-23 06:18:05',1),(12,'admin employeeapi','/admin/employeesapi','get','2024-04-23 06:24:16','2024-04-23 06:24:16',1),(13,'admin employee delete','/admin/employeesapi','delete','2024-04-23 06:27:24','2024-04-23 06:27:24',1),(14,'admin employee search','/admin/employeesapi/search','get','2024-04-23 06:29:32','2024-04-23 06:29:32',1),(15,'admin team api','/admin/teamapi','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(16,'admin newteam api','/admin/newteam','post','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(17,'admin team api delete','/admin/teamapi','delete','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(18,'admin team search','/admin/teamapi/search','get','2024-04-23 06:52:19','2024-04-23 07:02:05',1),(19,'admin tasksdata','/admin/tasksData','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(20,'admin tasksdetails','/admin/tasksDetails','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(21,'admin profiledata','/admin/profiledata','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(22,'admin chartsData','/admin/chartsData','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(23,'admin managerTask','/admin/managerTask','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(24,'admin categoryData','/admin/categoryData','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(25,'admin categoryData delete','/admin/categoryData','delete','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(26,'admin categoryDetails','/admin/categoryDetails','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(27,'admin category','/admin/category','post','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(28,'admin calender','/admin/calender','get','2024-04-23 06:52:19','2024-04-23 06:52:19',1),(29,'manager dashboard','/manager/dashboard','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(30,'manager permissions','/manager/getTeams','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(31,'manager editTaskDetails','/manager/editTaskDetails','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(32,'manager getTaskDetails','/manager/getTaskDetails','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(33,'manager teamapi','/manager/teamapi','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(34,'manager getManagerUpcomingTasks','/manager/getManagerUpcomingTasks','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(35,'manager updateManager','/manager/updateManager','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(36,'manager getManagerProfile','/manager/getManagerProfile','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(37,'manager getEmployees','/manager/getEmployees','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(38,'manager searchEmploye','/manager/searchEmploye','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(39,'manager removeemployeapi','/manager/removeemployeapi','delete','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(40,'manager managerTasks','/manager/managerTasks','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(41,'manager getManagerTaskCount','/manager/getManagerTaskCount','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(42,'manager searchTask','/manager/searchTask','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(43,'manager searchTask','/manager/searchTask','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(44,'manager getdataapi','/manager/getdataapi','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(45,'manager inserttask','/manager/inserttask','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(46,'manager notification','/manager/notification','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(47,'manager getempdata','/manager/getempdata','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(48,'manager getempdata','/manager/addteamdata','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(49,'manager getempdata managerTeam searchteam','/manager/managerTeam/searchteam','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(50,'manager getempdata managerTeam showteamdata','/manager/managerTeam/showteamdata','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(51,'manager updateteamdata','/manager/updateteamdata','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(52,'manager deleteteamapi','/manager/deleteteamapi','delete','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(53,'manager comments','/manager/comments','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(54,'manager getcomments','/manager/getcomments','get','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(55,'manager updateTaskStatus','/manager/updateTaskStatus','post','2024-04-24 06:13:10','2024-04-24 06:13:10',1),(56,'manager getManagerTasks','/manager/getManagerTasks','get','2024-04-24 06:26:59','2024-04-24 06:26:59',1),(57,'manager tasks ','/manager/tasks','get','2024-04-24 22:48:26','2024-04-24 22:48:26',1),(58,'manager employeelist','/manager/employeeDetails','get','2024-04-24 22:51:54','2024-04-24 22:51:54',1),(59,'manager teams','/manager/Teams','get','2024-04-24 22:55:11','2024-04-24 22:55:11',1),(60,'manager calender','/manager/calender','get','2024-04-24 22:59:22','2024-04-24 22:59:22',1),(61,'manager editTaskDetails','/manager/editTaskDetails','post','2024-04-24 23:17:39','2024-04-24 23:17:39',1),(62,'manager getEditTadkDetails','/manager/getEditTadkDetails','get','2024-04-24 23:23:25','2024-04-24 23:23:25',1),(63,'manager update','/manager/updateManager','post','2024-04-24 23:30:43','2024-04-24 23:30:43',1),(64,'manager dueDateOfTask','/manager/dueDateOfTask','get','2024-04-24 23:43:16','2024-04-24 23:43:16',1),(65,'admin calenderData','/admin/calenderData','get','2024-04-24 23:55:19','2024-04-24 23:56:48',1),(66,'admin dueDateOfTask','/admin/dueDateOfTask','get','2024-04-24 23:56:48','2024-04-25 00:11:39',1),(67,'admin team edit','/admin/teamapi','post','2024-05-01 06:07:05','2024-05-01 06:07:05',1),(68,'admin profile update','/admin/profile','post','2024-05-01 06:07:05','2024-05-01 06:07:05',1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priorities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `urgency_id` int DEFAULT NULL,
  `important_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `urgency_id` (`urgency_id`),
  KEY `important_id` (`important_id`),
  CONSTRAINT `priorities_ibfk_1` FOREIGN KEY (`urgency_id`) REFERENCES `urgency` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `priorities_ibfk_2` FOREIGN KEY (`important_id`) REFERENCES `importants` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3);
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `permission_id` int DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id_2` (`role_id`,`permission_id`),
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_has_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `role_has_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1,3,'2024-05-01 06:17:13',0),(2,1,4,'2024-05-01 06:17:13',0),(3,1,5,'2024-05-01 06:17:13',0),(4,1,6,'2024-05-01 06:17:13',0),(5,1,7,'2024-05-01 06:17:13',0),(6,1,8,'2024-05-01 06:17:13',0),(7,1,9,'2024-05-01 06:17:13',0),(8,1,10,'2024-05-01 06:17:13',0),(9,1,11,'2024-05-01 06:17:13',0),(10,1,12,'2024-05-01 06:17:13',0),(11,1,13,'2024-05-01 06:17:13',0),(12,1,14,'2024-05-01 06:17:13',0),(13,1,15,'2024-05-01 06:17:13',0),(14,1,16,'2024-05-01 06:17:13',0),(15,1,17,'2024-05-01 06:17:13',0),(16,1,18,'2024-05-01 06:17:13',0),(17,1,19,'2024-05-01 06:17:13',0),(18,1,20,'2024-05-01 06:17:13',0),(19,1,21,'2024-05-01 06:17:13',0),(20,1,22,'2024-05-01 06:17:13',0),(21,1,23,'2024-05-01 06:17:13',0),(22,1,24,'2024-05-01 06:17:13',0),(23,1,25,'2024-05-01 06:17:13',0),(24,1,26,'2024-05-01 06:17:13',0),(25,1,27,'2024-05-01 06:17:13',0),(26,1,28,'2024-05-01 06:17:13',0),(27,2,29,'2024-05-01 06:17:13',0),(28,2,30,'2024-05-01 06:17:13',0),(29,2,31,'2024-05-01 06:17:13',0),(30,2,32,'2024-05-01 06:17:13',0),(31,2,33,'2024-05-01 06:17:13',0),(32,2,34,'2024-05-01 06:17:13',0),(33,2,35,'2024-05-01 06:17:13',0),(34,2,36,'2024-05-01 06:17:13',0),(35,2,37,'2024-05-01 06:17:13',0),(36,2,38,'2024-05-01 06:17:13',0),(37,2,39,'2024-05-01 06:17:13',0),(38,2,40,'2024-05-01 06:17:13',0),(39,2,41,'2024-05-01 06:17:13',0),(40,2,42,'2024-05-01 06:17:13',0),(41,2,43,'2024-05-01 06:17:13',0),(42,2,44,'2024-05-01 06:17:13',0),(43,2,45,'2024-05-01 06:17:13',0),(44,2,46,'2024-05-01 06:17:13',0),(45,2,47,'2024-05-01 06:17:13',0),(46,2,48,'2024-05-01 06:17:13',0),(47,2,49,'2024-05-01 06:17:13',0),(48,2,50,'2024-05-01 06:17:13',0),(49,2,51,'2024-05-01 06:17:13',0),(50,2,52,'2024-05-01 06:17:13',0),(51,2,53,'2024-05-01 06:17:13',0),(52,2,54,'2024-05-01 06:17:13',0),(53,2,55,'2024-05-01 06:17:13',0),(54,2,56,'2024-05-01 06:17:13',0),(55,2,57,'2024-05-01 06:17:13',0),(56,2,58,'2024-05-01 06:17:13',0),(57,2,59,'2024-05-01 06:17:13',0),(58,2,60,'2024-05-01 06:17:13',0),(59,2,61,'2024-05-01 06:17:13',0),(60,2,62,'2024-05-01 06:17:13',0),(61,2,63,'2024-05-01 06:17:13',0),(62,2,64,'2024-05-01 06:17:13',0),(63,1,65,'2024-05-01 06:17:13',0),(64,1,66,'2024-05-01 06:17:13',0),(65,1,67,'2024-05-01 06:17:13',0),(66,1,68,'2024-05-01 06:17:13',0),(67,1,44,'2024-05-01 06:17:13',0),(68,1,45,'2024-05-01 06:17:13',0);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2024-05-01 05:57:21','2024-05-01 05:57:21',1),(2,'manager','2024-05-01 05:57:21','2024-05-01 05:57:21',1),(3,'employee','2024-05-01 05:57:21','2024-05-01 05:57:21',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manager_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `prioritiy_id` int DEFAULT NULL,
  `task_name` varchar(80) DEFAULT NULL,
  `task_description` varchar(255) DEFAULT NULL,
  `task_start_date` date DEFAULT NULL,
  `task_end_date` date DEFAULT NULL,
  `task_status` varchar(50) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `prioritiy_id` (`prioritiy_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`prioritiy_id`) REFERENCES `priorities` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,1,1,9,'task1','task 1 description','2024-05-01','2024-06-02','inprogress','2024-05-01 09:33:26','2024-05-01 09:37:20',1),(2,1,2,1,'task2','task 2 description','2024-05-02','2024-05-10','todo','2024-05-01 09:34:43','2024-05-01 09:34:43',1),(3,1,4,8,'task3','task 3 description','2024-05-01','2024-05-20','todo','2024-05-01 09:36:39','2024-05-01 09:36:39',1),(4,1,2,9,'task4','task 4 description','2024-05-01','2024-05-30','todo','2024-05-01 09:37:14','2024-05-01 09:37:14',1),(5,2,2,5,'task5','task 5 description','2024-05-01','2024-05-11','todo','2024-05-01 09:40:36','2024-05-01 09:40:36',1),(6,2,1,12,'task6','task 6 description','2024-05-05','2024-05-22','todo','2024-05-01 09:41:33','2024-05-01 09:41:33',1),(7,3,5,12,'task7','task7','2024-05-01','2024-06-15','todo','2024-05-01 09:46:09','2024-05-01 09:46:09',1),(8,3,3,8,'task8','task8 description','2024-05-15','2024-07-15','todo','2024-05-01 09:46:56','2024-05-01 09:46:56',1),(9,4,1,11,'task9','task 9 description','2024-05-01','2024-05-22','todo','2024-05-01 10:02:09','2024-05-01 10:02:09',1),(10,4,2,1,'task10','task 10 description','2024-05-12','2024-05-20','todo','2024-05-01 10:02:52','2024-05-01 10:02:52',1),(11,5,5,12,'task11','task11','2024-05-04','2024-07-01','todo','2024-05-01 10:06:22','2024-05-01 10:06:22',1),(12,5,2,8,'task12','task11 description','2024-05-04','2024-06-22','todo','2024-05-01 10:07:27','2024-05-01 10:07:27',1),(13,6,3,5,'task13','task 13 description','2024-05-01','2024-06-10','todo','2024-05-01 10:09:20','2024-05-01 10:09:20',1),(14,6,5,9,'task14','task 14 description','2024-05-12','2024-06-20','todo','2024-05-01 10:10:03','2024-05-01 10:10:03',1),(15,7,4,12,'task15','task15 description','2024-05-10','2024-08-10','todo','2024-05-01 10:12:22','2024-05-01 10:12:22',1),(16,7,2,11,'task16','task16 description','2024-05-15','2024-07-18','todo','2024-05-01 10:12:52','2024-05-01 10:12:52',1);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_assigend_to`
--

DROP TABLE IF EXISTS `tasks_assigend_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_assigend_to` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0',
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `tasks_assigend_to_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tasks_assigend_to_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_assigend_to`
--

LOCK TABLES `tasks_assigend_to` WRITE;
/*!40000 ALTER TABLE `tasks_assigend_to` DISABLE KEYS */;
INSERT INTO `tasks_assigend_to` VALUES (1,1,27,'2024-05-01 09:33:26','2024-05-01 09:33:26',0,NULL,NULL),(2,1,28,'2024-05-01 09:33:26','2024-05-01 09:33:26',0,NULL,NULL),(3,2,28,'2024-05-01 09:34:43','2024-05-01 09:34:43',0,NULL,NULL),(4,2,35,'2024-05-01 09:34:43','2024-05-01 09:34:43',0,NULL,NULL),(5,2,36,'2024-05-01 09:34:43','2024-05-01 09:34:43',0,NULL,NULL),(6,3,31,'2024-05-01 09:36:39','2024-05-01 09:36:39',0,NULL,NULL),(7,3,32,'2024-05-01 09:36:39','2024-05-01 09:36:39',0,NULL,NULL),(8,3,33,'2024-05-01 09:36:39','2024-05-01 09:36:39',0,NULL,NULL),(9,3,34,'2024-05-01 09:36:39','2024-05-01 09:36:39',0,NULL,NULL),(10,4,52,'2024-05-01 09:37:14','2024-05-01 09:37:14',0,NULL,NULL),(11,4,53,'2024-05-01 09:37:14','2024-05-01 09:37:14',0,NULL,NULL),(12,4,54,'2024-05-01 09:37:14','2024-05-01 09:37:14',0,NULL,NULL),(13,5,52,'2024-05-01 09:40:36','2024-05-01 09:40:36',0,NULL,NULL),(14,5,53,'2024-05-01 09:40:36','2024-05-01 09:40:36',0,NULL,NULL),(15,5,60,'2024-05-01 09:40:36','2024-05-01 09:40:36',0,NULL,NULL),(16,5,61,'2024-05-01 09:40:36','2024-05-01 09:40:36',0,NULL,NULL),(17,6,27,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(18,6,28,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(19,6,29,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(20,6,30,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(21,6,31,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(22,6,32,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(23,6,33,'2024-05-01 09:41:33','2024-05-01 09:41:33',0,NULL,NULL),(24,7,73,'2024-05-01 09:46:09','2024-05-01 09:46:09',0,NULL,NULL),(25,7,75,'2024-05-01 09:46:09','2024-05-01 09:46:09',0,NULL,NULL),(26,7,76,'2024-05-01 09:46:09','2024-05-01 09:46:09',0,NULL,NULL),(27,7,77,'2024-05-01 09:46:09','2024-05-01 09:46:09',0,NULL,NULL),(28,8,57,'2024-05-01 09:46:56','2024-05-01 09:46:56',0,NULL,NULL),(29,8,58,'2024-05-01 09:46:56','2024-05-01 09:46:56',0,NULL,NULL),(30,8,59,'2024-05-01 09:46:56','2024-05-01 09:46:56',0,NULL,NULL),(31,10,27,'2024-05-01 10:02:52','2024-05-01 10:02:52',0,NULL,NULL),(32,10,28,'2024-05-01 10:02:52','2024-05-01 10:02:52',0,NULL,NULL),(33,10,29,'2024-05-01 10:02:52','2024-05-01 10:02:52',0,NULL,NULL),(34,11,68,'2024-05-01 10:06:22','2024-05-01 10:06:22',0,NULL,NULL),(35,11,69,'2024-05-01 10:06:22','2024-05-01 10:06:22',0,NULL,NULL),(36,11,70,'2024-05-01 10:06:22','2024-05-01 10:06:22',0,NULL,NULL),(37,11,71,'2024-05-01 10:06:22','2024-05-01 10:06:22',0,NULL,NULL),(38,12,52,'2024-05-01 10:07:27','2024-05-01 10:07:27',0,NULL,NULL),(39,12,53,'2024-05-01 10:07:27','2024-05-01 10:07:27',0,NULL,NULL),(40,12,54,'2024-05-01 10:07:27','2024-05-01 10:07:27',0,NULL,NULL),(41,12,55,'2024-05-01 10:07:27','2024-05-01 10:07:27',0,NULL,NULL),(42,12,56,'2024-05-01 10:07:27','2024-05-01 10:07:27',0,NULL,NULL),(43,13,69,'2024-05-01 10:09:20','2024-05-01 10:09:20',0,NULL,NULL),(44,13,70,'2024-05-01 10:09:20','2024-05-01 10:09:20',0,NULL,NULL),(45,13,71,'2024-05-01 10:09:20','2024-05-01 10:09:20',0,NULL,NULL),(46,13,76,'2024-05-01 10:09:20','2024-05-01 10:09:20',0,NULL,NULL),(47,14,58,'2024-05-01 10:10:03','2024-05-01 10:10:03',0,NULL,NULL),(48,14,59,'2024-05-01 10:10:03','2024-05-01 10:10:03',0,NULL,NULL),(49,14,61,'2024-05-01 10:10:03','2024-05-01 10:10:03',0,NULL,NULL),(50,14,62,'2024-05-01 10:10:03','2024-05-01 10:10:03',0,NULL,NULL),(51,15,66,'2024-05-01 10:12:22','2024-05-01 10:12:22',0,NULL,NULL),(52,15,67,'2024-05-01 10:12:22','2024-05-01 10:12:22',0,NULL,NULL),(53,15,68,'2024-05-01 10:12:22','2024-05-01 10:12:22',0,NULL,NULL),(54,15,69,'2024-05-01 10:12:22','2024-05-01 10:12:22',0,NULL,NULL),(55,15,70,'2024-05-01 10:12:22','2024-05-01 10:12:22',0,NULL,NULL);
/*!40000 ALTER TABLE `tasks_assigend_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_has_tasks`
--

DROP TABLE IF EXISTS `team_has_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_has_tasks` (
  `team_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  KEY `team_id` (`team_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `team_has_tasks_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `team_has_tasks_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_has_tasks`
--

LOCK TABLES `team_has_tasks` WRITE;
/*!40000 ALTER TABLE `team_has_tasks` DISABLE KEYS */;
INSERT INTO `team_has_tasks` VALUES (15,1),(1,2),(15,2),(1,4),(3,4),(15,5),(1,9),(2,9),(6,10),(1,12),(5,13),(1,16),(2,16);
/*!40000 ALTER TABLE `team_has_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_id` int DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,1,27,0,'2024-05-01 09:05:12','2024-05-01 09:05:12'),(2,1,28,0,'2024-05-01 09:05:12','2024-05-01 09:05:12'),(3,1,29,0,'2024-05-01 09:05:12','2024-05-01 09:05:12'),(4,1,30,0,'2024-05-01 09:05:12','2024-05-01 09:05:12'),(5,1,31,0,'2024-05-01 09:05:12','2024-05-01 09:05:12'),(6,2,31,0,'2024-05-01 09:05:36','2024-05-01 09:05:36'),(7,2,32,0,'2024-05-01 09:05:36','2024-05-01 09:05:36'),(8,2,33,0,'2024-05-01 09:05:36','2024-05-01 09:05:36'),(9,2,34,0,'2024-05-01 09:05:36','2024-05-01 09:05:36'),(10,2,35,0,'2024-05-01 09:05:36','2024-05-01 09:05:36'),(11,3,36,0,'2024-05-01 09:05:58','2024-05-01 09:05:58'),(12,3,37,0,'2024-05-01 09:05:58','2024-05-01 09:05:58'),(13,3,38,0,'2024-05-01 09:05:58','2024-05-01 09:05:58'),(14,3,39,0,'2024-05-01 09:05:58','2024-05-01 09:05:58'),(15,4,39,0,'2024-05-01 09:06:27','2024-05-01 09:06:27'),(16,4,40,0,'2024-05-01 09:06:27','2024-05-01 09:06:27'),(17,4,41,0,'2024-05-01 09:06:27','2024-05-01 09:06:27'),(18,4,42,0,'2024-05-01 09:06:27','2024-05-01 09:06:27'),(19,5,41,0,'2024-05-01 09:06:42','2024-05-01 09:06:42'),(20,5,42,0,'2024-05-01 09:06:42','2024-05-01 09:06:42'),(21,5,43,0,'2024-05-01 09:06:42','2024-05-01 09:06:42'),(22,5,44,0,'2024-05-01 09:06:42','2024-05-01 09:06:42'),(23,5,45,0,'2024-05-01 09:06:42','2024-05-01 09:06:42'),(24,6,47,0,'2024-05-01 09:07:03','2024-05-01 09:07:03'),(25,6,48,0,'2024-05-01 09:07:03','2024-05-01 09:07:03'),(26,6,49,0,'2024-05-01 09:07:03','2024-05-01 09:07:03'),(27,6,50,0,'2024-05-01 09:07:03','2024-05-01 09:07:03'),(28,7,51,0,'2024-05-01 09:07:19','2024-05-01 09:07:19'),(29,7,52,0,'2024-05-01 09:07:19','2024-05-01 09:07:19'),(30,7,53,0,'2024-05-01 09:07:19','2024-05-01 09:07:19'),(31,7,54,0,'2024-05-01 09:07:19','2024-05-01 09:07:19'),(32,7,55,0,'2024-05-01 09:07:19','2024-05-01 09:07:19'),(33,8,43,0,'2024-05-01 09:07:40','2024-05-01 09:07:40'),(34,8,44,0,'2024-05-01 09:07:40','2024-05-01 09:07:40'),(35,8,56,0,'2024-05-01 09:07:40','2024-05-01 09:07:40'),(36,8,57,0,'2024-05-01 09:07:40','2024-05-01 09:07:40'),(37,8,58,0,'2024-05-01 09:07:40','2024-05-01 09:07:40'),(38,9,58,0,'2024-05-01 09:08:03','2024-05-01 09:08:03'),(39,9,59,0,'2024-05-01 09:08:03','2024-05-01 09:08:03'),(40,9,60,0,'2024-05-01 09:08:03','2024-05-01 09:08:03'),(41,9,61,0,'2024-05-01 09:08:03','2024-05-01 09:08:03'),(42,10,62,0,'2024-05-01 09:08:35','2024-05-01 09:08:35'),(43,10,63,0,'2024-05-01 09:08:35','2024-05-01 09:08:35'),(44,10,64,0,'2024-05-01 09:08:35','2024-05-01 09:08:35'),(45,10,65,0,'2024-05-01 09:08:35','2024-05-01 09:08:35'),(46,10,66,0,'2024-05-01 09:08:35','2024-05-01 09:08:35'),(47,11,67,0,'2024-05-01 09:18:49','2024-05-01 09:18:49'),(48,11,68,0,'2024-05-01 09:18:49','2024-05-01 09:18:49'),(49,11,69,0,'2024-05-01 09:18:49','2024-05-01 09:18:49'),(50,11,70,0,'2024-05-01 09:18:49','2024-05-01 09:18:49'),(51,12,70,0,'2024-05-01 09:19:09','2024-05-01 09:19:09'),(52,12,71,0,'2024-05-01 09:19:09','2024-05-01 09:19:09'),(53,12,72,0,'2024-05-01 09:19:09','2024-05-01 09:19:09'),(54,12,73,0,'2024-05-01 09:19:09','2024-05-01 09:19:09'),(55,13,70,0,'2024-05-01 09:19:36','2024-05-01 09:19:36'),(56,13,75,0,'2024-05-01 09:19:36','2024-05-01 09:19:36'),(57,13,76,0,'2024-05-01 09:19:36','2024-05-01 09:19:36'),(58,14,27,0,'2024-05-01 09:19:50','2024-05-01 09:19:50'),(59,14,32,0,'2024-05-01 09:19:50','2024-05-01 09:19:50'),(60,14,36,0,'2024-05-01 09:19:50','2024-05-01 09:19:50'),(61,14,41,0,'2024-05-01 09:19:50','2024-05-01 09:19:50'),(62,15,35,0,'2024-05-01 09:20:00','2024-05-01 09:20:00'),(63,15,36,0,'2024-05-01 09:20:00','2024-05-01 09:20:00'),(64,15,38,0,'2024-05-01 09:20:00','2024-05-01 09:20:00'),(65,15,41,0,'2024-05-01 09:20:00','2024-05-01 09:20:00'),(66,15,48,0,'2024-05-01 09:20:00','2024-05-01 09:20:00'),(67,15,50,0,'2024-05-01 09:20:00','2024-05-01 09:20:00');
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_name_UNIQUE` (`team_name`),
  KEY `teams_ibfk_1` (`created_by`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'team1',1,1,'2024-05-01 09:05:12','2024-05-01 09:05:12'),(2,'team2',1,1,'2024-05-01 09:05:36','2024-05-01 09:05:36'),(3,'team3',1,1,'2024-05-01 09:05:58','2024-05-01 09:05:58'),(4,'team4',2,1,'2024-05-01 09:06:27','2024-05-01 09:43:23'),(5,'team5',2,1,'2024-05-01 09:06:42','2024-05-01 09:43:23'),(6,'team6',3,1,'2024-05-01 09:07:03','2024-05-01 09:43:23'),(7,'team7',4,1,'2024-05-01 09:07:19','2024-05-01 09:43:23'),(8,'team8',5,1,'2024-05-01 09:07:40','2024-05-01 09:43:23'),(9,'team9',6,1,'2024-05-01 09:08:03','2024-05-01 09:43:23'),(10,'team10',7,1,'2024-05-01 09:08:35','2024-05-01 09:43:23'),(11,'team11',8,1,'2024-05-01 09:18:49','2024-05-01 09:43:23'),(12,'team12',9,1,'2024-05-01 09:19:09','2024-05-01 09:43:23'),(13,'team13',10,1,'2024-05-01 09:19:36','2024-05-01 09:43:23'),(14,'team14',11,1,'2024-05-01 09:19:50','2024-05-01 09:43:23'),(15,'team15',12,1,'2024-05-01 09:20:00','2024-05-01 09:43:23');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urgency`
--

DROP TABLE IF EXISTS `urgency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urgency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urgency`
--

LOCK TABLES `urgency` WRITE;
/*!40000 ALTER TABLE `urgency` DISABLE KEYS */;
INSERT INTO `urgency` VALUES (1,'Urgent','2024-05-01 06:25:17','2024-05-01 06:25:17'),(2,'High','2024-05-01 06:25:17','2024-05-01 06:25:17'),(3,'Moderate','2024-05-01 06:25:17','2024-05-01 06:25:17'),(4,'Low','2024-05-01 06:25:17','2024-05-01 06:25:17');
/*!40000 ALTER TABLE `urgency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_comments`
--

DROP TABLE IF EXISTS `user_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_status` varchar(15) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `oldfile_name` varchar(255) DEFAULT NULL,
  `attechment` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `user_comments_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `user_comments_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_comments`
--

LOCK TABLES `user_comments` WRITE;
/*!40000 ALTER TABLE `user_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_passwords`
--

DROP TABLE IF EXISTS `user_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_passwords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_passwords_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_passwords`
--

LOCK TABLES `user_passwords` WRITE;
/*!40000 ALTER TABLE `user_passwords` DISABLE KEYS */;
INSERT INTO `user_passwords` VALUES (1,1,'$2b$10$pX38aaxYXI84MxCMSFDJyO8RbEMrAhT6xoJk1j0NDwRopTvazd90.',NULL,'2024-05-01 06:33:29','2024-05-01 06:33:29',1),(2,2,'$2b$10$g55wdhtDxfOOvjp4eJTYguWAnGEILgdMFttMzA5BITLnU60mm0JHu',NULL,'2024-05-01 06:38:16','2024-05-01 06:38:16',1),(3,3,'$2b$10$R8I11dH0co7U8YaSz7vTTuDnV09vPG.s8uFGRORBz5sR3SPoEGboW',NULL,'2024-05-01 06:44:13','2024-05-01 06:44:13',1),(4,4,'$2b$10$n1pcdt86I381Wb8xAmrzq.xCfay8ZXPtObC9x4zmsbHpHvJGemcva',NULL,'2024-05-01 06:47:44','2024-05-01 06:47:44',1),(5,5,'$2b$10$ydejnoEshBFDgEtT1n3/SOXL8X6lytNq8b0/QGkBCQUmomksDHNm.',NULL,'2024-05-01 06:49:53','2024-05-01 06:49:53',1),(6,6,'$2b$10$QYbfEAqypImF2ab2zCmCgeNZ1.Oy5RtqWJW2vrWfWTxHvlG/Ui5hG',NULL,'2024-05-01 06:51:20','2024-05-01 06:51:20',1),(7,7,'$2b$10$fBwv8kSqouKYoJVHDH1l4.AGTRU98DbGG1F7Mi35f6/ITq4a9nR2.',NULL,'2024-05-01 06:52:37','2024-05-01 06:52:37',1),(8,8,'$2b$10$bZ/6IjmcBZ2dBJ.c2dSev.LfbbC9Q2QhtkRg0jJWKn5ZaPs05Lmyy',NULL,'2024-05-01 07:03:32','2024-05-01 07:03:32',1),(9,9,'$2b$10$Ufw8top6gBquFpl6kyiWP.cZcokahUEWY2Q0XeMC1tfQiVG0eY.Hy',NULL,'2024-05-01 07:05:59','2024-05-01 07:05:59',1),(10,10,'$2b$10$Sbn80OYeubwpkCPwPQ6wjOJwiWC49wlRXz4NjxPmbEMKUn3aSjE7y',NULL,'2024-05-01 07:07:10','2024-05-01 07:07:10',1),(11,11,'$2b$10$9KmEF2yFhjOQFLMlEUgYoOg4rqI9052Y70jXfBkq1YgPMVt2vCOSe',NULL,'2024-05-01 07:08:23','2024-05-01 07:08:23',1),(12,12,'$2b$10$TlWqeSZvM3gDid8LlIxrV.r5hxytmOTj9.i9ztbAYiCmsDPIlUI5O',NULL,'2024-05-01 07:11:22','2024-05-01 07:11:22',1),(13,13,'$2b$10$mVsubBL4xCxwTWR4h1VqSu5zCeHEAXpNJEu9eoOh0wMmCbFG3cLmi',NULL,'2024-05-01 07:12:34','2024-05-01 07:12:34',1),(14,14,'$2b$10$Lg.XA29xV2llYmI/7zRTlu/YvF3YMfcy7Q91dsPqMpNOobg3l634i',NULL,'2024-05-01 07:13:53','2024-05-01 07:13:53',1),(15,15,'$2b$10$9Yy3uinVr3oiW682pYNGK.SP8.TZQU.hMK5kqZl6hU0pxZ8wJFXZy',NULL,'2024-05-01 07:14:59','2024-05-01 07:14:59',1),(16,16,'$2b$10$gDhODnDiJCeVfC7XsGSEnutpCxSBe90rsRA7A.vh/LZoFcKSPy4hG',NULL,'2024-05-01 07:16:00','2024-05-01 07:16:00',1),(17,17,'$2b$10$ZZgT7saIn28o3fq4EjpbSubO9wzXWNAuiMYT47xBksUiXp5fL/hKS',NULL,'2024-05-01 07:17:13','2024-05-01 07:17:13',1),(18,18,'$2b$10$kBZDW2utFcESAu0BsN9hFOSRm.wjsoo2et5.BCiziihfsBIqJFH2m',NULL,'2024-05-01 07:18:27','2024-05-01 07:18:27',1),(19,19,'$2b$10$3v4XVkW7jIUGWt13aRROEebNGVBvnh5mXHlHqSbMD36hw45IA8fgS',NULL,'2024-05-01 07:19:34','2024-05-01 07:19:34',1),(20,20,'$2b$10$NlDCisI1AsGE2z0CBZokc.8g4RIhIPL/6pPpO0KBPNmNmXvH.vvIu',NULL,'2024-05-01 07:20:52','2024-05-01 07:20:52',1),(21,21,'$2b$10$4qAFpg0SATzHNgZzwxPRouUsh2eCbpYffzsemI1qjyG1OKHgK1xam',NULL,'2024-05-01 07:21:53','2024-05-01 07:21:53',1),(22,22,'$2b$10$65YzifEyyJW/XOnVXz2SzedrBtRER3iWVWne2LwXR2VoD0hIJG7KW',NULL,'2024-05-01 07:22:56','2024-05-01 07:22:56',1),(23,23,'$2b$10$NONtILmzpCmxvSkxIKm3luE5XGZSYITEUCJGXN78.KGqQSdd5D/S.',NULL,'2024-05-01 07:23:59','2024-05-01 07:23:59',1),(24,24,'$2b$10$uqhaWgmY.zWltlARMxJSneELe70IIecfWnqWGXgup5CL6tIQAM.ee',NULL,'2024-05-01 07:25:16','2024-05-01 07:25:16',1),(25,25,'$2b$10$Cn54fp0ocJECjpobF0GFoOb3cjYFoHLaSHmKnKs53UbL8OMdDPMhm',NULL,'2024-05-01 07:26:09','2024-05-01 07:26:09',1),(26,26,'$2b$10$FDHA8jWwmQPYMLMFT6TgjuNJop3pn3O9Mg39e7vP/tB2mNyztRD0e',NULL,'2024-05-01 07:27:15','2024-05-01 07:27:15',1),(27,27,'$2b$10$RhbKJTlG/q9xocL8/zI3bu8H0WLJUeXJyszIgCBpy5Kn0o3.C/g92',NULL,'2024-05-01 07:28:58','2024-05-01 07:28:58',1),(28,28,'$2b$10$lD18XU.vaNGP7n39afEyVuPo3QprT4kjhvSztSpmdrNSptSRLKpku',NULL,'2024-05-01 07:32:03','2024-05-01 07:32:03',1),(29,29,'$2b$10$aC3FRWnntccRPMih7i/BiegI1Tz0MlokTLw6v6II7mgiz/t.jzozy',NULL,'2024-05-01 07:58:25','2024-05-01 07:58:25',1),(30,30,'$2b$10$ebnvq7GPG9NuZwlGxu4gf.QvMmvtZ6fmI0r0SNFEWnSz/TZD3aLqS',NULL,'2024-05-01 07:59:29','2024-05-01 07:59:29',1),(31,31,'$2b$10$VaPd7h9rMw.y.2Cxt6PJ7urDsC3qhSeiRwttw0F9jHenK878QBzhq',NULL,'2024-05-01 08:00:43','2024-05-01 08:00:43',1),(32,32,'$2b$10$b1ldgrygsZzfcsIKWzIGO.hifepDrUx7f0R/WeQdJ4qEOwVObi/RS',NULL,'2024-05-01 08:01:38','2024-05-01 08:01:38',1),(33,33,'$2b$10$Bc2nNt7DYyW3bTI6umrPU.KJaSKunYZ17G5NFPODu7htOjBYYrnpO',NULL,'2024-05-01 08:02:58','2024-05-01 08:02:58',1),(34,34,'$2b$10$B23clpuC3.WUS6g4Hh/npeGP6rhWVWuUMcEmPTOA11SQz5J2Vn7UK',NULL,'2024-05-01 08:04:45','2024-05-01 08:04:45',1),(35,35,'$2b$10$CPv9j6eHGcbZNTtsxv19gujGTDN8SqCjHhysX5HAWZJ5/UeC3B.DC',NULL,'2024-05-01 08:06:18','2024-05-01 08:06:18',1),(36,36,'$2b$10$gXaZ1.MmCiMQaVwjOX/aI.JyNBexeEPCe65k7OFaU8arsd3/32bY6',NULL,'2024-05-01 08:07:11','2024-05-01 08:07:11',1),(37,37,'$2b$10$v29bgDsp/Ov7dMs7IVKfZuWOvUsz5IMI3StAXt.U2HBNFSFh/LFla',NULL,'2024-05-01 08:07:59','2024-05-01 08:07:59',1),(38,38,'$2b$10$YmuZXKjpBOjWoKQ.rjoapu89s6soLXNwAnQw85B0ARh/MaguOlyYS',NULL,'2024-05-01 08:08:53','2024-05-01 08:08:53',1),(39,39,'$2b$10$0MBX7rECwVDsMRGT6xb/aOhRlfqfVhO6KiXUEMXp8TgOmSmVqSFl.',NULL,'2024-05-01 08:09:51','2024-05-01 08:09:51',1),(40,40,'$2b$10$//3op39cDurGA3Bpjel7XuF7MsZDzWPBBEmSCFQ3W/dN4HDGLGM4O',NULL,'2024-05-01 08:10:47','2024-05-01 08:10:47',1),(41,41,'$2b$10$1P/jqOD705xeSHGDFUe1Ne0VKrf4293fq1FPXWLdW3oc5SIh.Qmdu',NULL,'2024-05-01 08:11:40','2024-05-01 08:11:40',1),(42,42,'$2b$10$hzTj4ObzohrYQrq7Msbyy.rsiChHuQchvk9iWjN1bvMgEF83CnsnO',NULL,'2024-05-01 08:12:42','2024-05-01 08:12:42',1),(43,43,'$2b$10$IGv3lH1KmT5K9WCNb0QtGO3zEKQFW2IZJdQ7EP7TONKs1dhoSp216',NULL,'2024-05-01 08:13:35','2024-05-01 08:13:35',1),(44,44,'$2b$10$o/CLE7K7du7jM4YmBCYdJu8m0I6Hwus1671wf.YiivLfqQStTPTCm',NULL,'2024-05-01 08:14:29','2024-05-01 08:14:29',1),(45,45,'$2b$10$Klv5jkqD3po2adxGK6KzkOwuYzyfyyjL94XjHDxBPJgZ5iIoi772y',NULL,'2024-05-01 08:15:22','2024-05-01 08:15:22',1),(46,46,'$2b$10$brfoMyL68GJ3ljb0bLHNx.USy1ZgtDnEOqHrrdU2.6WF/8DfC3ZvO',NULL,'2024-05-01 08:16:09','2024-05-01 08:16:09',1),(47,47,'$2b$10$xe54W46w9suSxvEthTKeo.FyIB77NQxbMMAGn9gQWuTUKICdN69qS',NULL,'2024-05-01 08:16:58','2024-05-01 08:16:58',1),(48,48,'$2b$10$AUwWVdmnZGHpR2CivAak1uTthec.dVO1pLg.P1aFJEaAo/XMzvWgy',NULL,'2024-05-01 08:18:53','2024-05-01 08:18:53',1),(49,49,'$2b$10$Hw0zTF.jtCYx2KjhhLAfPOVc0f53t9LvnnLgaFgm5oUvUcrHI0gF6',NULL,'2024-05-01 08:19:48','2024-05-01 08:19:48',1),(50,50,'$2b$10$gpDJuVt9CZgQAydcEub.X.DOZOXRzcjTm1ON4p.cPBRzZu848rYVy',NULL,'2024-05-01 08:20:49','2024-05-01 08:20:49',1),(51,51,'$2b$10$y.dYQtu6y8SJzRv6ifLtnOu9MvmrecVxwkgIp4Ik9wM72Qky6j7KK',NULL,'2024-05-01 08:21:55','2024-05-01 08:21:55',1),(52,52,'$2b$10$UuuvaS0yqe3M6baXoMDjPOkXGigAe6lwmENaWox30E4aYtF.ax2sO',NULL,'2024-05-01 08:23:18','2024-05-01 08:23:18',1),(53,53,'$2b$10$lWx7VnCnWBC9MLmcsHqReOifLHw5vyQ3M.JFE9P5Z8O6RUsT0LkqO',NULL,'2024-05-01 08:28:18','2024-05-01 08:28:18',1),(54,54,'$2b$10$2zt6ixxTcnyKb1g1VzAJm.J0lBskd2g9ThOgQKquCyD1mhys74YkS',NULL,'2024-05-01 08:32:14','2024-05-01 08:32:14',1),(55,55,'$2b$10$8GhDMc/ynCSc49JdKd9F0.1U9jSpbrpc97I3ZgIqUi4a25G2ICIb6',NULL,'2024-05-01 08:33:01','2024-05-01 08:33:01',1),(56,56,'$2b$10$L3aavXPii5cf7cjacAXA8el5dfK7ZhMzkrYA7ZsKOw4Jg.nwW7DnW',NULL,'2024-05-01 08:33:52','2024-05-01 08:33:52',1),(57,57,'$2b$10$/RV32xPXxP7vjEL.GvH8dO/zHLggRT4K8bjdGoiBL/e6kwh8GvxUe',NULL,'2024-05-01 08:38:07','2024-05-01 08:38:07',1),(58,58,'$2b$10$iIM0ONa.BUnB3M7rquFO1eUDnE2xXOqH3XXwZJ9ViVoNvRWWSVcZ.',NULL,'2024-05-01 08:38:59','2024-05-01 08:38:59',1),(59,59,'$2b$10$vVRImi6.OfGbq6vv7hpQpekHZXqSrQkq9ymVbFCFYkTROdPLRPkMK',NULL,'2024-05-01 08:40:04','2024-05-01 08:40:04',1),(60,60,'$2b$10$wcpsYRYeL1QK56UBVYmsTuN4uYRqSc.jtgkaIzv5HU5ghDOcIFXvK',NULL,'2024-05-01 08:40:55','2024-05-01 08:40:55',1),(61,61,'$2b$10$uRAUx8.NAHWRFDWaEbvi4./XuWQLf1jquDRRBgJiFs4OPwx7jhWzS',NULL,'2024-05-01 08:41:56','2024-05-01 08:41:56',1),(62,62,'$2b$10$tvr9Qq4JUaOdfBneYAPIE.pQP2S66pGRrbtqVJdI2DhQBgxkbyZuO',NULL,'2024-05-01 08:42:54','2024-05-01 08:42:54',1),(63,63,'$2b$10$InwRotBukZ4HfayfAlu21.hpw.e0PzEL1SOhWFmcTt9HUSlkTNlVm',NULL,'2024-05-01 08:45:00','2024-05-01 08:45:00',1),(64,64,'$2b$10$ae.TKCH8PBxPy8syq08JRuOJUUrVKWerWQKoBvAeAPJPioaQhHhgS',NULL,'2024-05-01 08:45:52','2024-05-01 08:45:52',1),(65,65,'$2b$10$.X/EIdJMxFiHc5vh2O0//.CzWlDE1gVk2CBlxoVgQyQQAVGO41ac6',NULL,'2024-05-01 08:46:40','2024-05-01 08:46:40',1),(66,66,'$2b$10$Tkdo./0U5NUZEHfD2RwZTO2a53Az.x4ZGXs53VAIL./zo1j3gAmh6',NULL,'2024-05-01 08:47:20','2024-05-01 08:47:20',1),(67,67,'$2b$10$BGwGdRVpR12ugFJ/jKS86eFlkfllqNlSD/.VJw1Rpp1t0Cq9mTerW',NULL,'2024-05-01 08:48:12','2024-05-01 08:48:12',1),(68,68,'$2b$10$9esycRxopmj52K8WdEOv7ukwq2EvzbwREumQb/JYpWldfTr96RktC',NULL,'2024-05-01 08:53:31','2024-05-01 08:53:31',1),(69,69,'$2b$10$x9aUCPoPdGzf3zim7MDhFeb5lrUZ9tnb/Zr/NwDXarXTuKTCrc8VK',NULL,'2024-05-01 08:54:20','2024-05-01 08:54:20',1),(70,70,'$2b$10$KAC4qQ9l/XMquXGSqPwR/umPyq4Qx63zhQaZlPw2PTVss0zkuoAg.',NULL,'2024-05-01 08:55:13','2024-05-01 08:55:13',1),(71,71,'$2b$10$YyKQj8ekl36XQ73Nhwfqme6VWdRwUtps7D8lXox3UKeVDH0/blumS',NULL,'2024-05-01 08:56:08','2024-05-01 08:56:08',1),(72,72,'$2b$10$8/FCl2OSbYHeQL6DxIzPTu8Py0P.twDMWfgoYmaRpOfbx5QqpwAEi',NULL,'2024-05-01 08:58:14','2024-05-01 08:58:14',1),(73,73,'$2b$10$kH26IU3J2jdDmW/.UWjoQOQtIqk5ODE224PlKfr0gKZaLwNyA3dUi',NULL,'2024-05-01 08:58:51','2024-05-01 08:58:51',1),(74,75,'$2b$10$jns3c2lYd4V0SR/n.aCKHulrJaik7rzcRx8i2Gi44jCJ1uBOzMcwe',NULL,'2024-05-01 09:01:04','2024-05-01 09:01:04',1),(75,76,'$2b$10$ZqIPnsYa5Qfh06bfq5El7OWau1MzDR4GmqgE.jFTmmBBW4daHq.tC',NULL,'2024-05-01 09:04:00','2024-05-01 09:04:00',1),(76,77,'$2b$10$3zj1W5znPUAFyA7jYewPyOr6.JKh22CMKMoNZER6kUC5ORTVnbvEC',NULL,'2024-05-01 09:04:45','2024-05-01 09:04:45',1);
/*!40000 ALTER TABLE `user_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `oldimage_name` varchar(255) DEFAULT NULL,
  `newimage_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,1,'testimonials-img.png','1714545269683-testimonials-img.png',NULL,0,'2024-05-01 06:34:29','2024-05-01 06:34:29'),(2,2,'image-fBLQvAFN1-transformed 1.png','1714545485386-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 06:38:05','2024-05-01 06:38:05'),(3,3,'image-fBLQvAFN1-transformed 1.png','1714545843212-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 06:44:03','2024-05-01 06:44:03'),(4,4,'image-fBLQvAFN1-transformed 1.png','1714546056379-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 06:47:36','2024-05-01 06:47:36'),(5,5,'image-fBLQvAFN1-transformed 1.png','1714546185464-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 06:49:45','2024-05-01 06:49:45'),(6,6,'image-fBLQvAFN1-transformed 1.png','1714546273546-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 06:51:13','2024-05-01 06:51:13'),(7,7,'image-fBLQvAFN1-transformed 1.png','1714546346440-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 06:52:26','2024-05-01 06:52:26'),(8,8,'image-fBLQvAFN1-transformed 1.png','1714547003892-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:03:23','2024-05-01 07:03:23'),(9,9,'image-fBLQvAFN1-transformed 1.png','1714547151139-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:05:51','2024-05-01 07:05:51'),(10,10,'image-fBLQvAFN1-transformed 1.png','1714547215512-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:06:55','2024-05-01 07:06:55'),(11,11,'image-fBLQvAFN1-transformed 1.png','1714547293165-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:08:13','2024-05-01 07:08:13'),(12,12,'image-fBLQvAFN1-transformed 1.png','1714547474344-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:11:14','2024-05-01 07:11:14'),(13,13,'image-fBLQvAFN1-transformed 1.png','1714547546585-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:12:26','2024-05-01 07:12:26'),(14,14,'image-fBLQvAFN1-transformed 1.png','1714547626588-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:13:46','2024-05-01 07:13:46'),(15,15,'image-fBLQvAFN1-transformed 1.png','1714547691999-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:14:52','2024-05-01 07:14:52'),(16,16,'image-fBLQvAFN1-transformed 1.png','1714547752709-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:15:52','2024-05-01 07:15:52'),(17,17,'image-fBLQvAFN1-transformed 1.png','1714547825393-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:17:05','2024-05-01 07:17:05'),(18,18,'image-fBLQvAFN1-transformed 1.png','1714547900260-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:18:20','2024-05-01 07:18:20'),(19,19,'image-fBLQvAFN1-transformed 1.png','1714547967422-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:19:27','2024-05-01 07:19:27'),(20,20,'image-fBLQvAFN1-transformed 1.png','1714548045810-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:20:45','2024-05-01 07:20:45'),(21,21,'image-fBLQvAFN1-transformed 1.png','1714548106437-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:21:46','2024-05-01 07:21:46'),(22,22,'image-fBLQvAFN1-transformed 1.png','1714548169083-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:22:49','2024-05-01 07:22:49'),(23,23,'image-fBLQvAFN1-transformed 1.png','1714548232491-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:23:52','2024-05-01 07:23:52'),(24,24,'image-fBLQvAFN1-transformed 1.png','1714548308359-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:25:08','2024-05-01 07:25:08'),(25,25,'image-fBLQvAFN1-transformed 1.png','1714548363060-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:26:03','2024-05-01 07:26:03'),(26,26,'image-fBLQvAFN1-transformed 1.png','1714548427413-image-fBLQvAFN1-transformed 1.png',NULL,0,'2024-05-01 07:27:07','2024-05-01 07:27:07'),(27,27,'profile.png','1714548525337-profile.png',NULL,0,'2024-05-01 07:28:45','2024-05-01 07:28:45'),(28,28,'profile.png','1714548714900-profile.png',NULL,0,'2024-05-01 07:31:54','2024-05-01 07:31:54'),(29,29,'profile.png','1714550298973-profile.png',NULL,0,'2024-05-01 07:58:18','2024-05-01 07:58:18'),(30,30,'profile.png','1714550362996-profile.png',NULL,0,'2024-05-01 07:59:23','2024-05-01 07:59:23'),(31,31,'profile.png','1714550434383-profile.png',NULL,0,'2024-05-01 08:00:34','2024-05-01 08:00:34'),(32,32,'profile.png','1714550491520-profile.png',NULL,0,'2024-05-01 08:01:31','2024-05-01 08:01:31'),(33,33,'profile.png','1714550572490-profile.png',NULL,0,'2024-05-01 08:02:52','2024-05-01 08:02:52'),(34,34,'profile.png','1714550678986-profile.png',NULL,0,'2024-05-01 08:04:38','2024-05-01 08:04:38'),(35,35,'profile.png','1714550770716-profile.png',NULL,0,'2024-05-01 08:06:10','2024-05-01 08:06:10'),(36,36,'profile.png','1714550823763-profile.png',NULL,0,'2024-05-01 08:07:03','2024-05-01 08:07:03'),(37,37,'profile.png','1714550873260-profile.png',NULL,0,'2024-05-01 08:07:53','2024-05-01 08:07:53'),(38,38,'profile.png','1714550924063-profile.png',NULL,0,'2024-05-01 08:08:44','2024-05-01 08:08:44'),(39,39,'profile.png','1714550982268-profile.png',NULL,0,'2024-05-01 08:09:42','2024-05-01 08:09:42'),(40,40,'profile.png','1714551038305-profile.png',NULL,0,'2024-05-01 08:10:38','2024-05-01 08:10:38'),(41,41,'profile.png','1714551093906-profile.png',NULL,0,'2024-05-01 08:11:33','2024-05-01 08:11:33'),(42,42,'profile.png','1714551154376-profile.png',NULL,0,'2024-05-01 08:12:34','2024-05-01 08:12:34'),(43,43,'profile.png','1714551208329-profile.png',NULL,0,'2024-05-01 08:13:28','2024-05-01 08:13:28'),(44,44,'profile.png','1714551262486-profile.png',NULL,0,'2024-05-01 08:14:22','2024-05-01 08:14:22'),(45,45,'profile.png','1714551312543-profile.png',NULL,0,'2024-05-01 08:15:12','2024-05-01 08:15:12'),(46,46,'profile.png','1714551362287-profile.png',NULL,0,'2024-05-01 08:16:02','2024-05-01 08:16:02'),(47,47,'profile.png','1714551409479-profile.png',NULL,0,'2024-05-01 08:16:49','2024-05-01 08:16:49'),(48,48,'profile.png','1714551525027-profile.png',NULL,0,'2024-05-01 08:18:45','2024-05-01 08:18:45'),(49,49,'profile.png','1714551582171-profile.png',NULL,0,'2024-05-01 08:19:42','2024-05-01 08:19:42'),(50,50,'profile.png','1714551642700-profile.png',NULL,0,'2024-05-01 08:20:42','2024-05-01 08:20:42'),(51,51,'profile.png','1714551706375-profile.png',NULL,0,'2024-05-01 08:21:46','2024-05-01 08:21:46'),(52,52,'profile.png','1714551790071-profile.png',NULL,0,'2024-05-01 08:23:10','2024-05-01 08:23:10'),(53,53,'profile.png','1714552088721-profile.png',NULL,0,'2024-05-01 08:28:08','2024-05-01 08:28:08'),(54,54,'profile.png','1714552327604-profile.png',NULL,0,'2024-05-01 08:32:07','2024-05-01 08:32:07'),(55,55,'profile.png','1714552374870-profile.png',NULL,0,'2024-05-01 08:32:54','2024-05-01 08:32:54'),(56,56,'profile.png','1714552425327-profile.png',NULL,0,'2024-05-01 08:33:45','2024-05-01 08:33:45'),(57,57,'profile.png','1714552680342-profile.png',NULL,0,'2024-05-01 08:38:00','2024-05-01 08:38:00'),(58,58,'profile.png','1714552733261-profile.png',NULL,0,'2024-05-01 08:38:53','2024-05-01 08:38:53'),(59,59,'profile.png','1714552798161-profile.png',NULL,0,'2024-05-01 08:39:58','2024-05-01 08:39:58'),(60,60,'profile.png','1714552849777-profile.png',NULL,0,'2024-05-01 08:40:49','2024-05-01 08:40:49'),(61,61,'profile.png','1714552909076-profile.png',NULL,0,'2024-05-01 08:41:49','2024-05-01 08:41:49'),(62,62,'profile.png','1714552969423-profile.png',NULL,0,'2024-05-01 08:42:49','2024-05-01 08:42:49'),(63,63,'profile.png','1714553094541-profile.png',NULL,0,'2024-05-01 08:44:54','2024-05-01 08:44:54'),(64,64,'profile.png','1714553145668-profile.png',NULL,0,'2024-05-01 08:45:45','2024-05-01 08:45:45'),(65,65,'profile.png','1714553195151-profile.png',NULL,0,'2024-05-01 08:46:35','2024-05-01 08:46:35'),(66,66,'profile.png','1714553234975-profile.png',NULL,0,'2024-05-01 08:47:14','2024-05-01 08:47:14'),(67,67,'profile.png','1714553285171-profile.png',NULL,0,'2024-05-01 08:48:05','2024-05-01 08:48:05'),(68,68,'profile.png','1714553606499-profile.png',NULL,0,'2024-05-01 08:53:26','2024-05-01 08:53:26'),(69,69,'profile.png','1714553655009-profile.png',NULL,0,'2024-05-01 08:54:15','2024-05-01 08:54:15'),(70,70,'profile.png','1714553706910-profile.png',NULL,0,'2024-05-01 08:55:06','2024-05-01 08:55:06'),(71,71,'profile.png','1714553762908-profile.png',NULL,0,'2024-05-01 08:56:02','2024-05-01 08:56:02'),(72,72,'profile.png','1714553888281-profile.png',NULL,0,'2024-05-01 08:58:08','2024-05-01 08:58:08'),(73,73,'profile.png','1714553926649-profile.png',NULL,0,'2024-05-01 08:58:46','2024-05-01 08:58:46'),(74,75,'profile.png','1714554059095-profile.png',NULL,0,'2024-05-01 09:00:59','2024-05-01 09:00:59'),(75,76,'profile.png','1714554235069-profile.png',NULL,0,'2024-05-01 09:03:55','2024-05-01 09:03:55'),(76,77,'profile.png','1714554279688-profile.png',NULL,0,'2024-05-01 09:04:39','2024-05-01 09:04:39');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `employee_role` varchar(100) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `img_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `contact_UNIQUE` (`contact`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'vishvas','panshiniya','vishvas@gmail.com','0000000000','2003-06-28','admin','avIiwdgW0aN0','2024-05-01 06:33:19','2024-05-01 06:20:57',NULL,1),(2,2,'krushi','patel','krushi@gmail.com','1111111111','2002-04-01','sdl','76eD4IPozY28','2024-05-01 06:38:16','2024-05-01 06:38:05',NULL,1),(3,2,'dhaval','monani','dhaval@gmail.com','2222222222','2003-05-02','sdl','UCEjWKJqlT2O','2024-05-01 06:44:13','2024-05-01 06:44:03',NULL,1),(4,2,'mihir','rajpopat','mihir@gmail.com','3333333333','2002-04-02','sdl','fN5lycCnJWVs','2024-05-01 06:47:44','2024-05-01 06:47:36',NULL,1),(5,2,'chirag','kanani','chirag@gmail.com','4444444444','2002-04-02','sdl','vnaeBwjfTDJw','2024-05-01 06:49:53','2024-05-01 06:49:45',NULL,1),(6,2,'haresh','chauhan','haresh@gmail.com','5555555555','2004-01-01','sdl','N6oSaPLkDL3l','2024-05-01 06:51:20','2024-05-01 06:51:13',NULL,1),(7,2,'kamyab','hussian','kamyab@gmail.com','6666666666','2000-07-19','sdl','e4JUzaXx6noG','2024-05-01 06:52:37','2024-05-01 06:52:26',NULL,1),(8,2,'dixit','kanariya','dixit@gmail.com','7777777777','2001-04-02','sdl','fZ7TdCOejzXf','2024-05-01 07:03:32','2024-05-01 07:03:23',NULL,1),(9,2,'ashutosh','tomar','ashutosh@gmail.com','8888888888','1996-03-13','sdl','DieC4B0Wmlf7','2024-05-01 07:05:59','2024-05-01 07:05:51',NULL,1),(10,2,'anjali','patel','anjali@gmail.com','9999999999','2002-07-23','sdl','2lNp8CRNIhD8','2024-05-01 07:07:10','2024-05-01 07:06:55',NULL,1),(11,2,'sanket','patel','sanket@gmail.com','1010101010','2001-11-24','sdl','tcwX1JfB3RBr','2024-05-01 07:08:23','2024-05-01 07:08:13',NULL,1),(12,2,'darshan','panchal','darshan@gmail.com','1212121212','2002-07-13','sdl','PZ8rcHy36bff','2024-05-01 07:11:22','2024-05-01 07:11:14',NULL,1),(13,2,'jeel','patel','jeel@gmail.com','1313131313','1999-07-27','sdl','QzMDuIFZ7Zq5','2024-05-01 07:12:34','2024-05-01 07:12:26',NULL,1),(14,2,'ritesh','jaishwal','ritesh@gmail.com','1414141414','2000-06-02','sdl','4fd8XaHBtncX','2024-05-01 07:13:53','2024-05-01 07:13:46',NULL,1),(15,2,'yashvi','soldhara','yashvi@gmail.com','1515151515','1995-06-20','sdl','RwL8dbQnBOgU','2024-05-01 07:14:59','2024-05-01 07:14:52',NULL,1),(16,2,'hardevshin','zala','hardevshin@gmail.com','1616161616','2005-04-18','sdl','DJY6gHiOuAo7','2024-05-01 07:16:00','2024-05-01 07:15:52',NULL,1),(17,2,'alpesh','patel','alpesh@gmail.com','1717171717','2002-09-14','sdl','sr2zSz2jODst','2024-05-01 07:17:13','2024-05-01 07:17:05',NULL,1),(18,2,'vikram','rathod','vikram@gmail.com','1818181818','2008-09-23','sdl','aYU4Dhvg4vYI','2024-05-01 07:18:27','2024-05-01 07:18:20',NULL,1),(19,2,'rajkumar','koradiya','raj@gmail.com','1919191919','2001-10-30','sdl','P1UmKpLrq1Nr','2024-05-01 07:19:34','2024-05-01 07:19:27',NULL,1),(20,2,'aryaman','karade','aryaman@gmail.com','2020202020','2005-05-18','sdl','PsQKL3eh22Yl','2024-05-01 07:20:52','2024-05-01 07:20:45',NULL,1),(21,2,'tirth','raval','tirth@gmail.com','2121212121','2000-12-20','sdl','5tDiSBcmOw47','2024-05-01 07:21:53','2024-05-01 07:21:46',NULL,1),(22,2,'vijay','solanki','vijay@gmail.com','2323232323','2008-09-22','sdl','E7HTQORvjFEz','2024-05-01 07:22:56','2024-05-01 07:22:49',NULL,1),(23,2,'hadiya','pathan','hadiya@gmail.com','2424242424','2002-08-28','sdl','zC4tBxYINCmL','2024-05-01 07:23:59','2024-05-01 07:23:52',NULL,1),(24,2,'abhishek','zakhariya','abhishek@gmail.com','2525252525','2002-01-12','sdl','rpiVHYHg7DIX','2024-05-01 07:25:16','2024-05-01 07:25:08',NULL,1),(25,2,'ashish','zapadiya','ashish@gmail.com','2626262626','1992-07-23','sdl','q4n9G3WDsYjP','2024-05-01 07:26:09','2024-05-01 07:26:03',NULL,1),(26,2,'kimisha','ladani','kimisha@gmail.com','2727272727','2004-10-21','sdl','BmCZCiN9Pviq','2024-05-01 07:27:15','2024-05-01 07:27:07',NULL,1),(27,3,'nitin','munjapara','nitin@gmail.com','2828282828','2005-06-20','sdl','z2gR2T0nEXoe','2024-05-01 07:28:58','2024-05-01 07:28:45',NULL,1),(28,3,'kajal','soni','kajal@gmail.com','2929292929','2004-08-10','sdl','mdVb4e66dDhK','2024-05-01 07:32:03','2024-05-01 07:31:54',NULL,1),(29,3,'darshan','parekh','darshanp@gmail.com','3030303030','2002-07-16','sdl','rcdDoSaceGVY','2024-05-01 07:58:25','2024-05-01 07:58:18',NULL,1),(30,3,'dhyey','patel','dhyey@gmail.com','3131313131','2001-07-25','sdl','iVRRzzFGXI5V','2024-05-01 07:59:29','2024-05-01 07:59:23',NULL,1),(31,3,'yash','vachhani','yash@gmail.com','3232323232','2003-07-20','sdl','B23QIYXzO9vH','2024-05-01 08:00:43','2024-05-01 08:00:34',NULL,1),(32,3,'vansh','gandhi','vansh@gmail.com','3434343434','2002-07-22','sdl','MVjpL1lzbGMR','2024-05-01 08:02:03','2024-05-01 08:01:31',NULL,1),(33,3,'diya','patel','diya@gmail.com','3535353535','2006-06-27','sdl','ksYCnvVPIavp','2024-05-01 08:02:58','2024-05-01 08:02:52',NULL,1),(34,3,'chirag','makawana','chiragm@gmail.com','3636363636','2003-07-16','sdl','Y4bQL0GvN8hO','2024-05-01 08:04:45','2024-05-01 08:04:38',NULL,1),(35,3,'rushikesh','falak','rushikesh@gmail.com','3737373737','2002-04-27','sdl','nOjizcqnEZoY','2024-05-01 08:06:18','2024-05-01 08:06:10',NULL,1),(36,3,'jyot','khant','jyot@gmail.com','3838383838','2008-06-26','sdl','OPMRRZqmgj8b','2024-05-01 08:07:11','2024-05-01 08:07:03',NULL,1),(37,3,'bharat','makawana','bharat@gmail.com','3939393939','2000-02-21','sdl','lgAOFIYSCmV4','2024-05-01 08:07:59','2024-05-01 08:07:53',NULL,1),(38,3,'darshak','jadav','darshak@gmail.com','4040404040','1999-09-29','sdl','XktMeKLK38HY','2024-05-01 08:08:53','2024-05-01 08:08:44',NULL,1),(39,3,'brijesh','adeshara','brijesh@gmail.com','4141414141','1998-01-20','sdl','Eq2udGU2SacR','2024-05-01 08:09:51','2024-05-01 08:09:42',NULL,1),(40,3,'yash','zinzuvadiya','yashzz@gmail.com','4242424242','2002-10-12','sdl','YWECAxzRM61k','2024-05-01 08:10:47','2024-05-01 08:10:38',NULL,1),(41,3,'vivek','panchal','vivek@gmail.com','4343434343','2000-09-14','sdl','sZuVSuuOZLTo','2024-05-01 08:11:40','2024-05-01 08:11:33',NULL,1),(42,3,'ayush','mehta','ayush@gmail.com','4545454545','2002-01-03','sdl','M1oxAD8eZPTE','2024-05-01 08:12:42','2024-05-01 08:12:34',NULL,1),(43,3,'vivek','kandoliya','vivekkan@gmail.com','4646464646','2004-07-22','sdl','PCX3BtH4lSPM','2024-05-01 08:13:35','2024-05-01 08:13:28',NULL,1),(44,3,'ruhifatema','malek','ruhifatema@gmail.com','4747474747','2001-12-10','sdl','XiZ8Q7vBU2Tx','2024-05-01 08:14:29','2024-05-01 08:14:22',NULL,1),(45,3,'asnan','pathan','asnan@gmail.com','4848484848','2005-07-20','sdl','Fkig7jUEknC7','2024-05-01 08:15:22','2024-05-01 08:15:12',NULL,1),(46,3,'vasu','pansuriya','vasu@gmail.com','4949494949','2005-07-26','sdl','swtorTwYjHGC','2024-05-01 08:16:09','2024-05-01 08:16:02',NULL,1),(47,3,'surbhi','rank','surbhi@gmail.com','5050505050','2001-09-14','sdl','u2P9lu8bIllF','2024-05-01 08:16:58','2024-05-01 08:16:49',NULL,1),(48,3,'prathvik','sankaliya','prathvik@gmail.com','5252525252','2003-07-16','sdl','5duBGw83rEDC','2024-05-01 08:18:53','2024-05-01 08:18:45',NULL,1),(49,3,'keyur','purohit','keyur@gmail.com','5151515151','2001-08-26','sdl','JfA8VNldDJf1','2024-05-01 08:19:48','2024-05-01 08:19:42',NULL,1),(50,3,'rashesh','pithadiya','rashesh@gmail.com','5353535353','2005-06-16','sdl','OgQjE0LZFuAs','2024-05-01 08:20:49','2024-05-01 08:20:42',NULL,1),(51,3,'sailesh','chaudhri','sailesh@gmail.com','5454545454','2003-11-08','sdl','9n7obhafcuQV','2024-05-01 08:21:55','2024-05-01 08:21:46',NULL,1),(52,3,'rajni','tank','rajni@gmail.com','5656565656','2002-09-26','sdl','BsolXP4w184F','2024-05-01 08:23:18','2024-05-01 08:23:10',NULL,1),(53,3,'honey','andhariya','honey@gmail.com','5757575757','2003-07-23','sdl','8IKWPCszsR4l','2024-05-01 08:28:18','2024-05-01 08:28:08',NULL,1),(54,3,'parth','gogari','parth@gmail.com','5858585858','2003-04-19','sdl','uIqu3qp0D95N','2024-05-01 08:32:14','2024-05-01 08:32:07',NULL,1),(55,3,'darsh','godani','darsh@gmail.com','5959595959','2000-06-13','sdl','meYwlbUElqgn','2024-05-01 08:33:01','2024-05-01 08:32:54',NULL,1),(56,3,'priyank','shah','priyank@gmail.com','6060606060','2002-06-26','sdl','dxzZPdPFOAzn','2024-05-01 08:33:52','2024-05-01 08:33:45',NULL,1),(57,3,'gulsan','pandey','gulsan@gmail.com','6161616161','2005-07-21','sdl','yUwfkumDQM8j','2024-05-01 08:38:07','2024-05-01 08:38:00',NULL,1),(58,3,'shakshi','vora','shakshi@gmail.com','6262626262','2007-04-12','sdl','JeiJHtIy8KS0','2024-05-01 08:38:59','2024-05-01 08:38:53',NULL,1),(59,3,'harshal','kahar','harshal@gmail.com','6363636363','2001-07-25','sdl','uM9V9c7LUzEH','2024-05-01 08:40:04','2024-05-01 08:39:58',NULL,1),(60,3,'nimi','mishra','nimi@gmail.com','6464646464','2002-10-21','sdl','HfXfJBfBr6jj','2024-05-01 08:40:55','2024-05-01 08:40:49',NULL,1),(61,3,'kaushal','talpara','kaushal@gmail.com','6565656565','2005-06-29','sdl','fpCEo3VBSxzJ','2024-05-01 08:41:56','2024-05-01 08:41:49',NULL,1),(62,3,'yashvi','getiya','yashvigg@gmail.com','6767676767','2000-10-26','sdl','SCMAxvueJd7S','2024-05-01 08:42:55','2024-05-01 08:42:49',NULL,1),(63,3,'shruti','mokariya','shruti@gmail.com','6868686868','2002-06-20','sdl','d7nkvVAwUQiI','2024-05-01 08:45:00','2024-05-01 08:44:54',NULL,1),(64,3,'ayush','patel','ayushp@gmail.com','6969696969','2005-08-26','sdl','u5XjhdvwEIau','2024-05-01 08:45:52','2024-05-01 08:45:45',NULL,1),(65,3,'kevin','patival','kevin@gmail.com','7070707070','2001-09-02','sdl','QApzJoRxDWAu','2024-05-01 08:46:40','2024-05-01 08:46:35',NULL,1),(66,3,'krish','gujariya','krish@gmail.com','7171717171','2006-06-28','sdl','epavPWFYO9pn','2024-05-01 08:47:20','2024-05-01 08:47:14',NULL,1),(67,3,'tushar','shinde','tushar@gmail.com','7272727272','2007-06-24','sdl','gbjzByzx2bcu','2024-05-01 08:48:12','2024-05-01 08:48:05',NULL,1),(68,3,'nikita','kangad','nikita@gmail.com','7373737373','2000-07-15','sdl','9iDylElQWYzJ','2024-05-01 08:53:31','2024-05-01 08:53:26',NULL,1),(69,3,'dharm','patel','dharm@gmail.com','7474747474','2005-04-27','sdl','NcSkbBa8SWr3','2024-05-01 08:54:20','2024-05-01 08:54:15',NULL,1),(70,3,'jasmin','jani','jasmin@gmail.com','7575757575','2000-07-30','sdl','gvugvtsCnY6M','2024-05-01 08:55:13','2024-05-01 08:55:06',NULL,1),(71,3,'parth','patil','parthpatil@gmail.com','7676767676','2001-01-01','sdl','Lu1MWuate66T','2024-05-01 08:56:08','2024-05-01 08:56:02',NULL,1),(72,3,'pooja','morvadiya','pooja@gmail.com','7878787878','2002-01-01','sdl','77CeD0oxPwE9','2024-05-01 08:58:14','2024-05-01 08:58:08',NULL,1),(73,3,'mohit','morvadiya','mohit@gmail.com','7979797979','2001-02-02','sdl','JPbykG6C3vuS','2024-05-01 08:58:51','2024-05-01 08:58:46',NULL,1),(75,3,'sona','chaturvedi','sona@gmail.com','8080808080','2003-05-21','sdl','4HaqAgP9wC0B','2024-05-01 09:01:04','2024-05-01 09:00:59',NULL,1),(76,3,'grishma','sao','grishma@gmail.com','8282828282','2003-01-01','sdl','ew5lhQZNlxNO','2024-05-01 09:04:00','2024-05-01 09:03:55',NULL,1),(77,3,'harsh','solanki','harsh@gmail.com','8383838383','2002-05-05','sdl','XC562j4jGXyq','2024-05-01 09:04:45','2024-05-01 09:04:39',NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 17:10:01
