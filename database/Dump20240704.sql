-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: qltb
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add device',8,'add_device'),(30,'Can change device',8,'change_device'),(31,'Can delete device',8,'delete_device'),(32,'Can view device',8,'view_device'),(33,'Can add borrow return',9,'add_borrowreturn'),(34,'Can change borrow return',9,'change_borrowreturn'),(35,'Can delete borrow return',9,'delete_borrowreturn'),(36,'Can view borrow return',9,'view_borrowreturn');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'home','borrowreturn'),(8,'home','device'),(7,'home','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-10 12:17:58.060646'),(2,'auth','0001_initial','2023-12-10 12:17:58.890934'),(3,'admin','0001_initial','2023-12-10 12:17:59.097041'),(4,'admin','0002_logentry_remove_auto_add','2023-12-10 12:17:59.107214'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-10 12:17:59.120976'),(6,'contenttypes','0002_remove_content_type_name','2023-12-10 12:17:59.233020'),(7,'auth','0002_alter_permission_name_max_length','2023-12-10 12:17:59.315496'),(8,'auth','0003_alter_user_email_max_length','2023-12-10 12:17:59.344362'),(9,'auth','0004_alter_user_username_opts','2023-12-10 12:17:59.356894'),(10,'auth','0005_alter_user_last_login_null','2023-12-10 12:17:59.435177'),(11,'auth','0006_require_contenttypes_0002','2023-12-10 12:17:59.439705'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-10 12:17:59.449772'),(13,'auth','0008_alter_user_username_max_length','2023-12-10 12:17:59.538577'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-10 12:17:59.620773'),(15,'auth','0010_alter_group_name_max_length','2023-12-10 12:17:59.642986'),(16,'auth','0011_update_proxy_permissions','2023-12-10 12:17:59.654660'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-10 12:17:59.735500'),(18,'home','0001_initial','2023-12-10 12:17:59.997020'),(19,'sessions','0001_initial','2023-12-10 12:18:00.035842'),(20,'home','0002_alter_device_name','2023-12-11 12:19:19.335820');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4vjdfoawbngeuxz0hkpmt4syxnx1go2x','.eJyrVspMUbJSMjJS0lEqys9JBbJDg12DgLy8xFwQLyM1IxXIKy1OLfKDiDgZGbk4O_uZWxop1QIALO0Rgg:1rIRqL:T7WyF-aGuz5Ifpp4L0m6ueltESuzNQpYMOs8bov0t7s','2024-01-10 11:12:57.718272'),('7no12qyt4j06tmkhppmtbcx108vtjggz','.eJyrVspMUbJSMlfSUSrKz0kFMh1dfD39gNy8xFwQ18PDA8gpLU4t8oMIJKbkZuaZKtUCANJ1EJs:1rDa4I:g9aZ31lGVyJ0Xxtkn4uJP_TIgSMffNzaKqpsrughmNk','2023-12-28 00:59:14.070972'),('bsxt987bpwfk4vx1vz902siuhx2eykam','.eJyrVspMUbJSMjJQ0lEqys9JBbIdXXw9_YDcvMRcENcjP6bUwCDVIC9dIRjIMkw0zFPwiCk1TE00zgSqKi1OLfKDqkzMzM1PygQaUgsANI0Z_Q:1rIS79:JiFmYfGdI--e61Tt0eR1aogU1hOyCZbRacTeQFV7hCw','2024-01-10 11:30:19.509787'),('cmlhjz323mww65dow60uq2cexyp4zt3b','.eJyrVspMUbJSMjJW0lEqys9JBbIdXXw9_YDcvMRcEDcjMbNIISW1QKGkKDETKFxanFrkB5HKyQdBpVoAruUVEQ:1rOJ0j:mtxNu5Rb_CDuh4gDOOG5FyAKWe1n2051E90cndwJk7o','2024-01-26 14:59:53.169670'),('gnsz7g6l7hp4e48yvx3nhptttxv59u2d','.eJyrVspMUbJSMjRV0lEqys9JBbIdXXw9_YDcvMRcENcQyCwtTi3yg3Bz8nPylWoBnLMPmw:1rEN9b:WymNz66uAs3KGeror774e0eJpMArTA0BdJN6pHE6UtI','2023-12-30 05:23:59.532209'),('nlik3vygl6y3sw1k3toy1o0d0rvo165v','.eJyrVspMUbJSMjJW0lEqys9JBbIdXXw9_YDcvMRcEDcjMbNIISW1QKGkKDETKFxanFrkB5HKyQdBpVoAruUVEQ:1rhRw7:0F0tBaYhKnIjWyVfeq5uYfNwF9Isstc31ZhO3u2qQAk','2024-03-19 10:22:15.300025'),('o0s80ud0y8c2skpen7ln5xt7zbtwiht8','.eJyrVspMUbJSMjFS0lEqys9JBbIdXXw9_YDcvMRcELcktbjEyNwEKFBanFrkhy6Ym58H5Hvkx5QaGKQaKnjElBqmJqckA2VKSoESQDolNQ_CSM9MzC_LhPBqAR70Ilk:1sOvTK:uqGQVyjGu4y2b75ivR4Kg4MvpGV32R8NLYQNqZTrSqA','2024-07-17 08:36:14.904723'),('plpe33wc12xa1c47ncwfhd12cttm4j2b','.eJyrVspMUbJSMjJQ0lEqys9JBbIdXXw9_YDcvMRcENcjP6bUwCDVIC9dIRjIMkw0zFPwiCk1TE00zgSqKi1OLfKDqkzMzM1PygQaUgsANI0Z_Q:1rIRXC:HF7BGBXP_C6hfJI69xvfBzxSQbuwRQctOWfNzlffTK0','2024-01-10 10:53:10.537948'),('qphmdhshj7ymz5mfljagyzsv9rynpnht','.eJyrVspMUbJSMjJU0lEqys9JBbIdXXw9_YDcvMRcENcjptQwNdkyEShSWpxa5AcVhYAMpVoAXiwSvQ:1rIRzX:kBNrNyFGPNtrqwbZ9M6OB1hckW0cO5eiLx9l6FOFGb0','2024-01-10 11:22:27.057775');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_borrowreturn`
--

DROP TABLE IF EXISTS `home_borrowreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_borrowreturn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `muon` varchar(255) NOT NULL,
  `tra` varchar(255) NOT NULL,
  `lop` varchar(255) NOT NULL,
  `giaovien` varchar(255) NOT NULL,
  `tiet` varchar(255) NOT NULL,
  `deviceId_id` bigint NOT NULL,
  `userId_id` bigint NOT NULL,
  `tenbai` varchar(255) NOT NULL,
  `tietPPCT` varchar(255) NOT NULL,
  `ngaytra` varchar(255) DEFAULT '',
  `stt` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `home_borrowreturn_deviceId_id_663ca481_fk_home_device_id` (`deviceId_id`),
  KEY `home_borrowreturn_userId_id_27005c5f_fk_home_user_id` (`userId_id`),
  CONSTRAINT `home_borrowreturn_deviceId_id_663ca481_fk_home_device_id` FOREIGN KEY (`deviceId_id`) REFERENCES `home_device` (`id`),
  CONSTRAINT `home_borrowreturn_userId_id_27005c5f_fk_home_user_id` FOREIGN KEY (`userId_id`) REFERENCES `home_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_borrowreturn`
--

LOCK TABLES `home_borrowreturn` WRITE;
/*!40000 ALTER TABLE `home_borrowreturn` DISABLE KEYS */;
INSERT INTO `home_borrowreturn` VALUES (123,'2024-07-03','1','12C','test27-3T','10:45:00',115,38,'hóa 1','1','',1),(124,'2024-07-04','1','12E','test27-3T','08:00:00',114,38,'văn 1','12','',2),(125,'2024-07-08','1','12E','test27-3T','11:35:00',114,38,'văn 2','12','',3),(126,'2024-07-04','1','12E','test274','08:00:00',114,42,'vân 274','123','',4),(127,'2024-07-03','1','12C1','test274-T','10:45:00',115,42,'Hóa 12','12','',5),(128,'2024-07-03','1','12E','test274-T','11:35:00',114,42,'văn 12','12','2024-07-03',6);
/*!40000 ALTER TABLE `home_borrowreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_device`
--

DROP TABLE IF EXISTS `home_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_device` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `mon` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `hansudung` varchar(255) NOT NULL,
  `userId_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_device_userId_id_ee903c98_fk_home_user_id` (`userId_id`),
  CONSTRAINT `home_device_userId_id_ee903c98_fk_home_user_id` FOREIGN KEY (`userId_id`) REFERENCES `home_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_device`
--

LOCK TABLES `home_device` WRITE;
/*!40000 ALTER TABLE `home_device` DISABLE KEYS */;
INSERT INTO `home_device` VALUES (104,'HÓA HỌC 1','Hóa Học','LABhoahoc1T1','phòng','#','4','#','#','#','#',1),(105,'VẬT LÍ - CN 1','Vật Lí','LABvatli1T2','phòng','#','1','#','#','#','#',1),(106,'TIN HỌC 2','Tin Học','LABtinhoc2T3','phòng','#','1','#','#','#','#',1),(107,'SINH HỌC 1','Sinh Học','LABsinhhoc1T3','phòng','#','1','#','#','#','#',1),(108,'TIN HỌC 1','Tin Học','LABtinhoc1T4','phòng','#','1','#','#','#','#',1),(109,'TIN HỌC 3','Tin Học','LABtinhoc3T4','phòng','#','1','#','#','#','#',1),(110,'VẬT LÍ - CN 2','Vật Lí','LABvatli2T4','phòng','#','1','#','#','#','#',1),(111,'SINH HỌC 2','Sinh Học','LABsinhhoc2T4','phòng','#','1','#','#','#','#',1),(112,'TRỰC TUYẾN','Trực Tuyến','LABtructuyenT4','phòng','#','1','#','#','#','#',1),(113,'HÓA HỌC 2','Hóa Học','LABhoahoc2KT','phòng','#','1','#','#','#','#',1),(114,'VIDEO/CLIP/ PHIM TƯ LIỆU VỀ TRUYỆN CỔ DÂN GIAN VIỆT NAM','Ngữ văn','nguvan','Bộ','202.500','7','mới','21-11-2023','việt nam','#',1),(115,'BARIUM CHLORIDE (BACL2)','Hóa học','hoahoc','g','202.500','9','mới','2023-11-21','việt nam','2024-12-30',1);
/*!40000 ALTER TABLE `home_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_user`
--

DROP TABLE IF EXISTS `home_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_user`
--

LOCK TABLES `home_user` WRITE;
/*!40000 ALTER TABLE `home_user` DISABLE KEYS */;
INSERT INTO `home_user` VALUES (1,'admin','admin','Quan tri','ADMIN'),(2,'nguoidung','nguoidung','anh a','USER'),(3,'admin','admin','Quan tri','ADMIN'),(4,'nguoidung','nguoidung','anh a','USER'),(5,'admin3','1','Hoàng Hải','ADMIN'),(6,'admin4','1','HH','ADMIN'),(7,'admin5','1','HHH','ADMIN'),(8,'admin6','1','HHHHH','USER'),(9,'admin','admin','Quan tri','ADMIN'),(10,'nguoidung','nguoidung','anh a','USER'),(11,'admin','admin','Quan tri','ADMIN'),(12,'nguoidung','nguoidung','anh a','USER'),(13,'user','1234','kk','USER'),(14,'admin','admin','1','ADMIN'),(15,'lolo','1','1','ADMIN'),(16,'admin','admin','Quan tri','ADMIN'),(17,'nguoidung','nguoidung','anh a','USER'),(18,'admin','admin','Quan tri','ADMIN'),(19,'nguoidung','nguoidung','anh a','USER'),(20,'Haimobile','1','Hoàng Sơn Hải','ADMIN'),(21,'HHHHHHHh','1','Hỉa','ADMIN'),(22,'B22DCCN792','hihi','hehe','USER'),(23,'lololo','1','hair dep trai','ADMIN'),(24,'1','1','1','ADMIN'),(31,'tesst1','12345678aB@','12345678aB@','ADMIN'),(32,'admin','admin','Quan tri','ADMIN'),(33,'nguoidung','nguoidung','anh a','USER'),(34,'admin','admin','Quan tri','ADMIN'),(35,'nguoidung','nguoidung','anh a','USER'),(36,'test27','12345678@lS','test27','ADMIN'),(37,'test27-2','12345678@lS','test27-2','ADMIN'),(38,'test27-3','12345678@lS','test27-3','ADMIN'),(39,'admin','admin','Quan tri','ADMIN'),(40,'admin','admin','Quan tri','ADMIN'),(41,'test27-3','12345678@lS','test274','ADMIN'),(42,'test274','123456789lS@','test274','ADMIN');
/*!40000 ALTER TABLE `home_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 19:44:22
