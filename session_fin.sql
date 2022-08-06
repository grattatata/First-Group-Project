-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: firstdb
-- ------------------------------------------------------
-- Server version	8.0.29

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add feed',7,'add_feed'),(26,'Can change feed',7,'change_feed'),(27,'Can delete feed',7,'delete_feed'),(28,'Can view feed',7,'view_feed'),(29,'Can add user page',8,'add_userpage'),(30,'Can change user page',8,'change_userpage'),(31,'Can delete user page',8,'delete_userpage'),(32,'Can view user page',8,'view_userpage'),(33,'Can add profile',9,'add_profile'),(34,'Can change profile',9,'change_profile'),(35,'Can delete profile',9,'delete_profile'),(36,'Can view profile',9,'view_profile'),(37,'Can add comment',10,'add_comment'),(38,'Can change comment',10,'change_comment'),(39,'Can delete comment',10,'delete_comment'),(40,'Can view comment',10,'view_comment'),(41,'Can add session',11,'add_session'),(42,'Can change session',11,'change_session'),(43,'Can delete session',11,'delete_session'),(44,'Can view session',11,'view_session'),(45,'Can add recommend session',12,'add_recommendsession'),(46,'Can change recommend session',12,'change_recommendsession'),(47,'Can delete recommend session',12,'delete_recommendsession'),(48,'Can view recommend session',12,'view_recommendsession'),(49,'Can add body part',13,'add_bodypart'),(50,'Can change body part',13,'change_bodypart'),(51,'Can delete body part',13,'delete_bodypart'),(52,'Can view body part',13,'view_bodypart'),(53,'Can add session',14,'add_session'),(54,'Can change session',14,'change_session'),(55,'Can delete session',14,'delete_session'),(56,'Can view session',14,'view_session'),(57,'Can add recommend session',15,'add_recommendsession'),(58,'Can change recommend session',15,'change_recommendsession'),(59,'Can delete recommend session',15,'delete_recommendsession'),(60,'Can view recommend session',15,'view_recommendsession'),(61,'Can add body part',16,'add_bodypart'),(62,'Can change body part',16,'change_bodypart'),(63,'Can delete body part',16,'delete_bodypart'),(64,'Can view body part',16,'view_bodypart'),(65,'Can add record',17,'add_record'),(66,'Can change record',17,'change_record'),(67,'Can delete record',17,'delete_record'),(68,'Can view record',17,'view_record'),(69,'Can add group',18,'add_group'),(70,'Can change group',18,'change_group'),(71,'Can delete group',18,'delete_group'),(72,'Can view group',18,'view_group');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `createdTime` datetime(6) NOT NULL,
  `updatedTime` datetime(6) NOT NULL,
  `author_id` bigint NOT NULL,
  `feed_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_author_id_d05046de_fk_user_user_id` (`author_id`),
  KEY `comment_comment_feed_id_82902664_fk_feed_feed_id` (`feed_id`),
  CONSTRAINT `comment_comment_author_id_d05046de_fk_user_user_id` FOREIGN KEY (`author_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `comment_comment_feed_id_82902664_fk_feed_feed_id` FOREIGN KEY (`feed_id`) REFERENCES `feed_feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (24,'zzzz','2022-06-13 05:19:13.725992','2022-06-13 06:06:50.394207',24,31),(25,'          aserwarsdfasdf\n        ','2022-06-13 05:19:17.781466','2022-06-13 05:38:29.702701',24,31),(35,'ㅁㄹㅇㄶㄴㅇㅀ','2022-06-13 07:24:42.511622','2022-06-20 01:33:39.760474',25,29),(52,'댓글 작성 수정','2022-06-15 06:00:35.682235','2022-06-20 01:33:41.247596',25,29),(69,'sdfsdafasdfadsf','2022-06-20 08:43:06.952111','2022-06-20 08:43:06.952111',24,29),(70,'zzzzzzzz','2022-06-20 08:47:28.728865','2022-06-20 08:47:28.728865',24,29),(71,'zzzzzuykogasdfasdf','2022-06-20 09:18:51.247151','2022-06-20 09:20:49.937784',24,29),(72,'zzz','2022-06-21 03:35:25.598894','2022-06-21 03:35:25.598894',24,30);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment_like`
--

DROP TABLE IF EXISTS `comment_comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_comment_like_comment_id_user_id_cbc0ef84_uniq` (`comment_id`,`user_id`),
  KEY `comment_comment_like_user_id_2f31e751_fk_user_user_id` (`user_id`),
  CONSTRAINT `comment_comment_like_comment_id_7296fbb5_fk_comment_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_like_user_id_2f31e751_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment_like`
--

LOCK TABLES `comment_comment_like` WRITE;
/*!40000 ALTER TABLE `comment_comment_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_comment_like` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(10,'comment','comment'),(4,'contenttypes','contenttype'),(16,'exercise','bodypart'),(15,'exercise','recommendsession'),(14,'exercise','session'),(7,'feed','feed'),(18,'group','group'),(17,'record','record'),(13,'session','bodypart'),(12,'session','recommendsession'),(11,'session','session'),(5,'sessions','session'),(6,'user','user'),(9,'userPage','profile'),(8,'userPage','userpage');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-06-03 04:55:37.245779'),(2,'contenttypes','0002_remove_content_type_name','2022-06-03 04:55:37.350782'),(3,'auth','0001_initial','2022-06-03 04:55:37.786785'),(4,'auth','0002_alter_permission_name_max_length','2022-06-03 04:55:37.885781'),(5,'auth','0003_alter_user_email_max_length','2022-06-03 04:55:37.898789'),(6,'auth','0004_alter_user_username_opts','2022-06-03 04:55:37.908779'),(7,'auth','0005_alter_user_last_login_null','2022-06-03 04:55:37.917780'),(8,'auth','0006_require_contenttypes_0002','2022-06-03 04:55:37.923782'),(9,'auth','0007_alter_validators_add_error_messages','2022-06-03 04:55:37.936783'),(10,'auth','0008_alter_user_username_max_length','2022-06-03 04:55:37.951782'),(11,'auth','0009_alter_user_last_name_max_length','2022-06-03 04:55:37.963784'),(12,'auth','0010_alter_group_name_max_length','2022-06-03 04:55:37.988779'),(13,'auth','0011_update_proxy_permissions','2022-06-03 04:55:38.004782'),(14,'auth','0012_alter_user_first_name_max_length','2022-06-03 04:55:38.019784'),(15,'user','0001_initial','2022-06-03 04:55:38.533782'),(16,'admin','0001_initial','2022-06-03 04:55:38.746782'),(17,'admin','0002_logentry_remove_auto_add','2022-06-03 04:55:38.761781'),(18,'admin','0003_logentry_add_action_flag_choices','2022-06-03 04:55:38.774785'),(19,'feed','0001_initial','2022-06-03 04:55:38.836782'),(20,'feed','0002_initial','2022-06-03 04:55:39.147779'),(21,'sessions','0001_initial','2022-06-03 04:55:39.219780'),(22,'user','0002_user_follower_user_following','2022-06-08 00:25:52.353614'),(23,'userPage','0001_initial','2022-06-08 03:10:58.418965'),(24,'userPage','0002_profile_delete_userpage','2022-06-08 06:35:07.002038'),(25,'userPage','0003_delete_profile','2022-06-08 06:44:28.715712'),(26,'user','0003_user_profilepic','2022-06-08 06:47:37.665891'),(27,'user','0004_user_nickname','2022-06-08 06:53:57.883615'),(28,'user','0005_alter_user_nickname','2022-06-08 07:09:41.085658'),(29,'user','0006_alter_user_nickname','2022-06-08 07:09:41.275695'),(30,'user','0007_alter_user_profilepic','2022-06-08 07:29:29.337833'),(31,'feed','0003_remove_feed_imageurl','2022-06-10 02:41:49.977394'),(32,'comment','0001_initial','2022-06-12 23:43:27.217738'),(33,'session','0001_initial','2022-06-13 08:23:18.955985'),(34,'session','0002_remove_session_user','2022-06-13 08:52:56.275522'),(35,'session','0003_alter_session_count_alter_session_set','2022-06-13 09:28:39.352131'),(36,'exercise','0001_initial','2022-06-13 10:20:18.454264'),(37,'record','0001_initial','2022-06-16 00:19:09.633164'),(38,'record','0002_rename_duration_record_bodyparts_and_more','2022-06-17 00:06:31.621930'),(39,'record','0003_rename_durations_record_eachtimes','2022-06-17 00:13:58.669809'),(40,'exercise','0002_remove_recommendsession_session_and_more','2022-06-17 03:51:53.732762'),(41,'group','0001_initial','2022-06-17 08:04:48.139387'),(42,'group','0002_group_like','2022-06-17 08:54:55.847104'),(43,'feed','0004_feed_record','2022-06-20 00:31:36.315921'),(44,'feed','0005_remove_feed_record_feed_recordids','2022-06-20 00:31:36.521916'),(45,'feed','0006_alter_feed_recordids','2022-06-20 00:32:45.878763'),(46,'feed','0007_remove_feed_recordids','2022-06-20 08:00:37.553073');
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
INSERT INTO `django_session` VALUES ('aadyzqe2p0yv295izc6talx06rgj1ikc','.eJxVjDsOwjAQBe_iGllef2NKes5grXdtHECxlE-FuDtESgHtm5n3Egm3taVtKXMaWZyFNuL0O2akR5l2wnecbl1Sn9Z5zHJX5EEXee1cnpfD_TtouLRvXVW1jpUeTPBeF9A5gjaViHN0GXggQBVdqIwAyMplWykWgoLe2mDF-wMHLzhV:1nzVg9:16jMR5TnaZzuPVsqnACxgb5PcP-gVJ52TCnRYoJFJRw','2022-06-24 03:51:21.389702'),('cwzp09cjgcibvkbbhao0m8pfz1bh2hfc','.eJxVjMsOwiAQRf-FtSE8B-rSvd9ABgakaiAp7cr479qkC93ec859sYDbWsM28hJmYmemDDv9jhHTI7ed0B3brfPU27rMke8KP-jg1075eTncv4OKo35rRI-giQTo4oqflAaXHTinc4xFGQUopZfKmGLlRNECJhLGKgEpiVTY-wMASDfR:1o3Ap5:ymnWAvI5_tBlC6cZuRYQr30kwETNtcVGZMCtfk-TRwE','2022-07-04 06:23:43.485529'),('dkl21dh1hnasab2am6olm08mphavyk1e','.eJxVjMsOwiAQRf-FtSE8B-rSvd9ABgakaiAp7cr479qkC93ec859sYDbWsM28hJmYmemDDv9jhHTI7ed0B3brfPU27rMke8KP-jg1075eTncv4OKo35rRI-giQTo4oqflAaXHTinc4xFGQUopZfKmGLlRNECJhLGKgEpiVTY-wMASDfR:1o374Q:_wMXZxZ_OF6sjgkRgx58C-ZC7szDAikGV9tZJwVWHJw','2022-07-04 02:23:18.149400'),('dnjtkqgf4iof4q9pxpz135369cf2hmlk','.eJxVjDsOwjAQBe_iGln-ZdempOcMlrNr4wBypDipEHeHSCmgfTPzXiKmba1x63mJE4uz0EGcfscx0SO3nfA9tdssaW7rMo1yV-RBu7zOnJ-Xw_07qKnXb20LoANkV4Lx2hSDARxlxsRaFweabUZnrQJKg1PZgwpoldfBMhUaxPsD6c83Lg:1nz6rL:_6TmYh54LTnKVXHY1QVP_oYU4aGaETvuPyV-inuIsvA','2022-06-23 01:21:15.539914'),('fjfc191r68dfosui47in2gmhf50drmjm','.eJxVjMEOwiAQRP-FsyHQgoBH734D2WUXqRpISnsy_rtt0oOeJpn3Zt4iwrqUuHae40TiIrQXp98SIT257oQeUO9NplaXeUK5K_KgXd4a8et6uH8HBXrZ1oodQh5wy2A9scl41grJKGfHAXPWzo0GyGsE1I4YUnI2pBACeG1QfL4mQDjJ:1nzAGe:G0Wtiz9MguvnVSOrIiLUSLuOzePMS7L_pDyNka8MWC8','2022-06-23 04:59:36.043605'),('qvpoq7a3wnpcfhr2qnfvinefhal1ri4w','.eJxVjMEOwiAQRP-FsyFbCHXx6N1vIAu7SNVAUtqT8d9tkx70OPPezFsFWpcS1i5zmFhdFKrTbxcpPaXugB9U702nVpd5inpX9EG7vjWW1_Vw_w4K9bKtiYX4nFw2iS2kLAB5dMYaTzLaDFtmceQzD-gBwaEfMGJ0xicU9OrzBRGOOEU:1nyqaT:JNAODt7Vj3XlYfnOWVkaj-tcj_r6nb2fG8FM7idRVVE','2022-06-22 07:58:45.023349'),('so3t7v5rwc1cqia3sqziutv5havqycjw','.eJxVjMsOwiAURP-FtSG8roBL934DgctFqgaS0q6M_26bdKGznHNm3izEdalhHTSHKbMLU5qdfssU8UltJ_kR271z7G2Zp8R3hR908FvP9Loe7t9BjaNu61LO2gltQCI4KlZnsJS0S14JBehjyQRgipECi9wSLQE6EEImlZ1nny_9szek:1nzVV1:GFHOD9lo4FZRJKJ6eCIRxJFe3mx7TeTOzoBAiXhbOVA','2022-06-24 03:39:51.172838'),('sr1lez7txkzs8uyeigjr5wrx0gq0k31y','.eJxVjMEOwiAQRP-FsyFbCHXx6N1vIAu7SNVAUtqT8d9tkx70OPPezFsFWpcS1i5zmFhdFKrTbxcpPaXugB9U702nVpd5inpX9EG7vjWW1_Vw_w4K9bKtiYX4nFw2iS2kLAB5dMYaTzLaDFtmceQzD-gBwaEfMGJ0xicU9OrzBRGOOEU:1nyqMt:viKsp2h0jViIqM6gtx9cUMCoFLyawg66t9J8JvGXcT0','2022-06-22 07:44:43.861155'),('w7b41rc847vd9tbe4y9wv1qwnlhnwc7j','.eJxVjMEOwiAQRP-FsyHQgoBH734D2WUXqRpISnsy_rtt0oOeJpn3Zt4iwrqUuHae40TiIrQXp98SIT257oQeUO9NplaXeUK5K_KgXd4a8et6uH8HBXrZ1oodQh5wy2A9scl41grJKGfHAXPWzo0GyGsE1I4YUnI2pBACeG1QfL4mQDjJ:1nz8wq:8EHpET0oZmlyzTR32DZmTjsUzPCITuOthpgzuDCQjT8','2022-06-23 03:35:04.076893'),('xhz2m95o52fd09caat3jnqpn1fmgjak7','.eJxVjEEOwiAQAP_C2ZCyQMt69N43EFgWqRqalPZk_Lsh6UGvM5N5Cx-Ovfij8eaXJK4CrLj8whjoybWb9Aj1vkpa674tUfZEnrbJeU38up3t36CEVvoXOUw2aqPIOMoA7LJCHVVC4BEgTeQYKWRkOxg0bsDRqaiBXI5aK_H5AgXMN7o:1o0dh2:zV4tB81Dhty811O3i_C6ucfnTLEdZxNACSZo7Hg-mac','2022-06-27 06:36:56.406170'),('xjsnarecyt20hcb2cie8a876hta4ywn2','.eJxVjDsOwjAQBe_iGllef2NKes5grXdtHECxlE-FuDtESgHtm5n3Egm3taVtKXMaWZyFNuL0O2akR5l2wnecbl1Sn9Z5zHJX5EEXee1cnpfD_TtouLRvXVW1jpUeTPBeF9A5gjaViHN0GXggQBVdqIwAyMplWykWgoLe2mDF-wMHLzhV:1o1G3W:j0li3RKKAonjfi4M4FlYPSPNs_eWZICJdJtuS4Mblx4','2022-06-28 23:34:42.598315'),('zulutczo02unwa3iurdkc4fo473tmuxb','.eJxVjDsOwjAQBe_iGln2-rMOJX3OYK1_OIAcKU4qxN2RpRTQvpl5b-bp2Ks_et78ktiVSXb53QLFZ24DpAe1-8rj2vZtCXwo_KSdz2vKr9vp_h1U6nXUBidICYNEYW1RmKUr2hVliRBRBdLGFgNgsyAAEBiRjKOEahJaIPt8Ac3ONus:1nylsq:SPoeckXeWm35FbI0ZfruwURfv30pP3ko-i1Zbr9svFw','2022-06-22 02:57:24.211712');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_bodypart`
--

DROP TABLE IF EXISTS `exercise_bodypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_bodypart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_bodypart`
--

LOCK TABLES `exercise_bodypart` WRITE;
/*!40000 ALTER TABLE `exercise_bodypart` DISABLE KEYS */;
INSERT INTO `exercise_bodypart` VALUES (1,'복근'),(2,'등'),(3,'어깨'),(4,'엉덩이'),(5,'이두'),(6,'삼두'),(7,'종아리'),(8,'허벅지'),(9,'가슴'),(10,'승모근');
/*!40000 ALTER TABLE `exercise_bodypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_recommendsession`
--

DROP TABLE IF EXISTS `exercise_recommendsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_recommendsession` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_recommendsession`
--

LOCK TABLES `exercise_recommendsession` WRITE;
/*!40000 ALTER TABLE `exercise_recommendsession` DISABLE KEYS */;
INSERT INTO `exercise_recommendsession` VALUES (1,'초보자 전신 루틴'),(2,'집에서 지방 불태우기'),(3,'터미네이터와 같은 가슴과 등! 아놀드 슈워제네거의 루틴'),(4,'터미네이터와 같은 어깨와 팔! 아놀드 슈워제네거의 루틴'),(5,'터미네이터와 같은 다리와 코어! 아놀드 슈워제네거의 루틴'),(6,'내일은 나도 액션 스타!드웨인 존슨의 루틴 1일차'),(7,'내일은 나도 액션 스타!드웨인 존슨의 루틴 2일차'),(8,'내일은 나도 액션 스타!드웨인 존슨의 루틴 3일차'),(9,'내일은 나도 액션 스타!드웨인 존슨의 루틴 4일차'),(10,'내일은 나도 액션 스타!드웨인 존슨의 루틴 5일차'),(11,'내일은 나도 액션 스타!드웨인 존슨의 루틴 6일차');
/*!40000 ALTER TABLE `exercise_recommendsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_recommendsession_session`
--

DROP TABLE IF EXISTS `exercise_recommendsession_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_recommendsession_session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recommendsession_id` bigint NOT NULL,
  `session_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exercise_recommendsessio_recommendsession_id_sess_44e37a80_uniq` (`recommendsession_id`,`session_id`),
  KEY `exercise_recommendse_session_id_2de4bb33_fk_exercise_` (`session_id`),
  CONSTRAINT `exercise_recommendse_recommendsession_id_a9ac4e99_fk_exercise_` FOREIGN KEY (`recommendsession_id`) REFERENCES `exercise_recommendsession` (`id`),
  CONSTRAINT `exercise_recommendse_session_id_2de4bb33_fk_exercise_` FOREIGN KEY (`session_id`) REFERENCES `exercise_session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_recommendsession_session`
--

LOCK TABLES `exercise_recommendsession_session` WRITE;
/*!40000 ALTER TABLE `exercise_recommendsession_session` DISABLE KEYS */;
INSERT INTO `exercise_recommendsession_session` VALUES (3,1,8),(4,1,10),(6,1,20),(2,1,34),(1,1,41),(5,1,42),(9,2,2),(11,2,3),(7,2,17),(8,2,43),(10,2,44),(16,3,7),(12,3,45),(13,3,46),(14,3,47),(15,3,48),(22,4,1),(18,4,10),(17,4,12),(19,4,20),(20,4,26),(21,4,42),(27,5,1),(26,5,7),(24,5,15),(23,5,34),(25,5,38),(32,6,7),(28,6,15),(31,6,34),(29,6,35),(33,6,37),(30,6,50),(34,7,8),(35,7,49),(36,7,51),(37,7,52),(38,7,53),(39,8,10),(40,8,11),(41,8,12),(42,8,54),(43,8,55),(49,9,1),(48,9,3),(44,9,23),(47,9,28),(46,9,42),(45,9,56),(50,9,57),(55,10,7),(51,10,15),(54,10,34),(52,10,35),(56,10,38),(53,10,50),(57,11,45),(58,11,56),(59,11,58);
/*!40000 ALTER TABLE `exercise_recommendsession_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_session`
--

DROP TABLE IF EXISTS `exercise_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `count` int NOT NULL,
  `set` int NOT NULL,
  `bodyPart_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exercise_session_bodyPart_id_0dcec1e7_fk_exercise_bodypart_id` (`bodyPart_id`),
  CONSTRAINT `exercise_session_bodyPart_id_0dcec1e7_fk_exercise_bodypart_id` FOREIGN KEY (`bodyPart_id`) REFERENCES `exercise_bodypart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_session`
--

LOCK TABLES `exercise_session` WRITE;
/*!40000 ALTER TABLE `exercise_session` DISABLE KEYS */;
INSERT INTO `exercise_session` VALUES (1,'크런치',30,3,1),(2,'바이시클크런치',30,3,1),(3,'레그레이즈',30,3,1),(4,'싯업',30,3,1),(5,'플랭크',30,3,1),(6,'풀업',18,3,2),(7,'데드리프트',18,3,2),(8,'케이블랫풀다운',18,3,2),(9,'케이블시티드로우',18,3,2),(10,'숄더프레스',20,3,3),(11,'프론트레이즈',20,3,3),(12,'사이드레터럴레이즈',20,3,3),(13,'벤트오버레터럴레이즈',20,3,3),(14,'스쿼트',30,3,4),(15,'런지',30,3,4),(16,'힙어브덕션',30,3,4),(17,'동키킥',30,3,4),(18,'클램쉘',30,3,4),(19,'브릿지',30,3,4),(20,'바벨컬',20,3,5),(21,'프론트 인클라인 컬',20,3,5),(22,'케이블컬',20,3,5),(23,'덤벨컬',20,3,5),(24,'리버스컬',20,3,5),(25,'케이블 익스텐션',20,3,6),(26,'내로우 그립 벤치',20,3,6),(27,'디클라인 트라이셉스',20,3,6),(28,'바벨 익스텐션',20,3,6),(29,'시티드 케이블 익스텐션',20,3,6),(30,'스탠딩 카프 레이즈',20,3,7),(31,'싱글 레그 카프 레이즈',20,3,7),(32,'머신 카프 프레스',20,3,7),(33,'시티드 카프 레이즈',20,3,7),(34,'바벨 스쿼트',30,3,8),(35,'레그 프레스',30,3,8),(37,'스탠딩 레그 컬',30,3,8),(38,'라잉 레그 컬',30,3,8),(39,'덤벨 스쿼트',30,3,8),(40,'덤벨 스텝업',30,3,8),(41,'머신 체스트 프레스',20,3,3),(42,'케이블 푸시 다운',20,3,6),(43,'푸시업',30,3,9),(44,'슈퍼맨',30,3,2),(45,'벤치 프레스',25,3,9),(46,'인클라인 벤치 프레스',25,3,9),(47,'라잉 덤벨 풀오버',25,3,9),(48,'친업',25,3,2),(49,'바벨 로우',25,3,2),(50,'레그 익스텐션',25,3,8),(51,'싱글 암 덤벨 로우',30,3,2),(52,'덤벨 쉬러그',30,3,10),(53,'인버티드 로우',30,3,2),(54,'머신 리버스 플라이',25,3,3),(55,'덤벨 리어 델트 레이즈',25,3,3),(56,'덤벨 해머 컬',25,3,5),(57,'웨이티드 러시안 트위스트',30,3,1),(58,'딥스',25,3,6);
/*!40000 ALTER TABLE `exercise_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_feed`
--

DROP TABLE IF EXISTS `feed_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_feed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `createdTime` datetime(6) DEFAULT NULL,
  `updatedTime` datetime(6) DEFAULT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_feed_author_id_d5076ae2_fk_user_user_id` (`author_id`),
  CONSTRAINT `feed_feed_author_id_d5076ae2_fk_user_user_id` FOREIGN KEY (`author_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_feed`
--

LOCK TABLES `feed_feed` WRITE;
/*!40000 ALTER TABLE `feed_feed` DISABLE KEYS */;
INSERT INTO `feed_feed` VALUES (29,'농담곰이 짱이다 쉐이덜아ㅋ','농담곰이 짱이다 쉐이덜아ㅋ','2022-06-10 01:50:57.411379','2022-06-20 05:58:42.480729',23),(30,'시카마로가 짱이거든여 ㅇㅅㅇ?','시카마로가 짱이거든여 ㅇㅅㅇ?ㅋㅋㅋㅋㅋㅋㅋㅋ','2022-06-10 01:51:13.338723','2022-06-20 08:06:30.966259',24),(31,'치이카와 미만잡ㅋ ㅇㅈ?ㅇㅇㅈ!','치이카와 미만잡ㅋ ㅇㅈ?ㅇㅇㅈ!','2022-06-10 01:51:34.755818','2022-06-20 05:57:32.964298',25),(33,'zzz','zzz','2022-06-20 02:17:54.340281','2022-06-20 02:17:54.340281',24),(34,'','','2022-06-20 03:15:07.266605','2022-06-20 03:15:07.266605',24),(35,'','','2022-06-20 03:29:39.229206','2022-06-20 03:29:39.229206',24),(36,'zz','zzz','2022-06-20 03:39:41.145523','2022-06-20 03:39:41.145523',24),(37,'zxzx','zxzxzx','2022-06-20 03:44:28.499720','2022-06-20 03:44:28.499720',24),(38,'ㅁㄴㅇㄻㅇㄴㄹ','ㅁㄴㅇㄻㄴㅇㄹ','2022-06-20 07:50:54.564801','2022-06-20 07:50:54.564801',24),(39,'ㅁㄴㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㄴㅁㅇㅁㄴㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇ','2022-06-20 08:03:14.151108','2022-06-20 08:06:14.648005',24),(40,'ㅋㅋㅋ','ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2022-06-21 00:45:15.598621','2022-06-21 00:45:15.598621',24);
/*!40000 ALTER TABLE `feed_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_feed_like`
--

DROP TABLE IF EXISTS `feed_feed_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_feed_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `feed_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `feed_feed_like_feed_id_user_id_cbfccfff_uniq` (`feed_id`,`user_id`),
  KEY `feed_feed_like_user_id_552a7567_fk_user_user_id` (`user_id`),
  CONSTRAINT `feed_feed_like_feed_id_f67d1525_fk_feed_feed_id` FOREIGN KEY (`feed_id`) REFERENCES `feed_feed` (`id`),
  CONSTRAINT `feed_feed_like_user_id_552a7567_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_feed_like`
--

LOCK TABLES `feed_feed_like` WRITE;
/*!40000 ALTER TABLE `feed_feed_like` DISABLE KEYS */;
INSERT INTO `feed_feed_like` VALUES (182,29,24),(124,29,25);
/*!40000 ALTER TABLE `feed_feed_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_group`
--

DROP TABLE IF EXISTS `group_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `memberCount` int NOT NULL,
  `startDay` date NOT NULL,
  `finishDay` date NOT NULL,
  `createdTime` datetime(6) DEFAULT NULL,
  `updatedTime` datetime(6) DEFAULT NULL,
  `groupPic` varchar(100) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_group_user_id_afece364_fk_user_user_id` (`user_id`),
  CONSTRAINT `group_group_user_id_afece364_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_group`
--

LOCK TABLES `group_group` WRITE;
/*!40000 ALTER TABLE `group_group` DISABLE KEYS */;
INSERT INTO `group_group` VALUES (1,'','zzz','zzzz',5,'2022-06-15','2022-06-16','2022-06-17 08:06:47.219849','2022-06-21 00:32:47.201552','images/muscle_pikachu_5u9OPZQ.jpg',23),(2,'','zzzzz','zzzz',5,'2022-06-01','2022-06-24','2022-06-17 08:08:50.963938','2022-06-20 08:40:04.488416','images/muscle_pikachu_z23xuOT.jpg',23),(3,'다이어트','피카츄와 함께 하는 찌릿찌릿 다요트','열심히 안 하면 10만 볼트로 지져버림ㅋ',5,'2022-06-01','2022-06-30','2022-06-17 08:30:10.797987','2022-06-20 10:23:54.701543','images/muscle_pikachu_XsPEScU.jpg',23),(5,'체력증가','zzz','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',5,'2022-06-01','2022-06-24','2022-06-20 10:25:39.330170','2022-06-20 10:25:39.330170','images/marin_ubuHux8.jpg',24);
/*!40000 ALTER TABLE `group_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_group_joineduser`
--

DROP TABLE IF EXISTS `group_group_joineduser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_group_joineduser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_group_joinedUser_group_id_user_id_e0515e40_uniq` (`group_id`,`user_id`),
  KEY `group_group_joinedUser_user_id_8f9858ee_fk_user_user_id` (`user_id`),
  CONSTRAINT `group_group_joinedUser_group_id_92b2072f_fk_group_group_id` FOREIGN KEY (`group_id`) REFERENCES `group_group` (`id`),
  CONSTRAINT `group_group_joinedUser_user_id_8f9858ee_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_group_joineduser`
--

LOCK TABLES `group_group_joineduser` WRITE;
/*!40000 ALTER TABLE `group_group_joineduser` DISABLE KEYS */;
INSERT INTO `group_group_joineduser` VALUES (17,2,24);
/*!40000 ALTER TABLE `group_group_joineduser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_group_like`
--

DROP TABLE IF EXISTS `group_group_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_group_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_group_like_group_id_user_id_45fee084_uniq` (`group_id`,`user_id`),
  KEY `group_group_like_user_id_310c5b04_fk_user_user_id` (`user_id`),
  CONSTRAINT `group_group_like_group_id_a3f3e122_fk_group_group_id` FOREIGN KEY (`group_id`) REFERENCES `group_group` (`id`),
  CONSTRAINT `group_group_like_user_id_310c5b04_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_group_like`
--

LOCK TABLES `group_group_like` WRITE;
/*!40000 ALTER TABLE `group_group_like` DISABLE KEYS */;
INSERT INTO `group_group_like` VALUES (12,1,24),(9,2,24);
/*!40000 ALTER TABLE `group_group_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_record`
--

DROP TABLE IF EXISTS `record_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `sessions` longtext NOT NULL,
  `bodyParts` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  `counts` longtext NOT NULL,
  `eachTimes` longtext NOT NULL,
  `sets` longtext NOT NULL,
  `totalTime` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `record_record_user_id_6860724c_fk_user_user_id` (`user_id`),
  CONSTRAINT `record_record_user_id_6860724c_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_record`
--

LOCK TABLES `record_record` WRITE;
/*!40000 ALTER TABLE `record_record` DISABLE KEYS */;
INSERT INTO `record_record` VALUES (54,'2022년 6월 17일 금요일','크런치,바이시클크런치','복근,복근',23,'30,30','00:00:00,00:00:00','3,3','00:00:00'),(55,'2022년 6월 17일 금요일','크런치,바이시클크런치,레그레이즈','복근,복근,복근',23,'30,30,30','00:00:00,00:00:01,00:00:00','3,3,3','00:00:01'),(56,'2022년 6월 17일 금요일','풀업,데드리프트,케이블랫풀다운','등,등,등',23,'18,18,18','00:00:00,00:00:02,00:00:00','3,3,3','00:00:02'),(57,'2022년 6월 17일 금요일','풀업,데드리프트','등,등',23,'18,18','00:00:01,00:00:02','3,3','00:00:03'),(58,'2022년 6월 17일 금요일','크런치,풀업,숄더프레스,스쿼트','복근,등,어깨,엉덩이',23,'30,18,20,30','00:00:01,00:00:02,00:00:01,00:00:03','3,3,1,1','00:00:07'),(59,'2022년 6월 20일 월요일','크런치,바이시클크런치,레그레이즈,싯업,플랭크','복근,복근,복근,복근,복근',24,'30,30,30,30,30','00:00:01,00:00:00,00:00:00,00:00:01,00:00:00','3,3,3,3,3','00:00:02'),(60,'2022년 6월 20일 월요일','풀업,데드리프트','등,등',24,'18,18','00:00:00,00:00:01','3,3','00:00:01'),(61,'2022년 6월 20일 월요일','크런치,바이시클크런치','복근,복근',24,'30,30','00:00:01,00:00:01','3,3','00:00:02');
/*!40000 ALTER TABLE `record_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `profilePic` varchar(100) DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user`
--

LOCK TABLES `user_user` WRITE;
/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
INSERT INTO `user_user` VALUES (23,'pbkdf2_sha256$320000$9moM7sBqhinQvO8GML6qp6$yIJFOMLKw8B0A0KiT9s11aMKZIfWH0vHrQ8lBp7ZiMc=','2022-06-17 04:47:06.207229',0,'kang','','','kang@gmail.com',0,1,'2022-06-10 01:50:05.680008','images/marin_0GL15ak.jpg','KangMyeongmo'),(24,'pbkdf2_sha256$320000$fXXriNn07A5WVE2LNJ01Xb$UeC5mfDbnzjShfvstPSmh2cCkEsAavk64Z8CJAMSQcM=','2022-06-20 06:23:43.480530',0,'kim','','','kim@gmail.com',0,1,'2022-06-10 01:50:21.502899','images/sikamaro_PSkvl5z.jpg','KimMinGwan'),(25,'pbkdf2_sha256$320000$PuZo9nczKMQFo7xY5DKG5U$pt1PoPULtDfAj4IV2crSUhrZ3tbsSAhFAb34Zjf+pyk=','2022-06-15 07:25:20.581202',0,'park','','','park@gmail.com',0,1,'2022-06-10 01:50:41.040201','images/chiikawa_0FEaiHU.jpg','ParkHyeWon');
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_follower`
--

DROP TABLE IF EXISTS `user_user_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_follower` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint NOT NULL,
  `to_user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_follower_from_user_id_to_user_id_9ca3bec6_uniq` (`from_user_id`,`to_user_id`),
  KEY `user_user_follower_to_user_id_fb9b58ff_fk_user_user_id` (`to_user_id`),
  CONSTRAINT `user_user_follower_from_user_id_357832ba_fk_user_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `user_user_follower_to_user_id_fb9b58ff_fk_user_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_follower`
--

LOCK TABLES `user_user_follower` WRITE;
/*!40000 ALTER TABLE `user_user_follower` DISABLE KEYS */;
INSERT INTO `user_user_follower` VALUES (423,23,24),(381,23,25),(430,24,23),(382,25,23),(407,25,24);
/*!40000 ALTER TABLE `user_user_follower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_following`
--

DROP TABLE IF EXISTS `user_user_following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_following` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint NOT NULL,
  `to_user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_following_from_user_id_to_user_id_4e32bac1_uniq` (`from_user_id`,`to_user_id`),
  KEY `user_user_following_to_user_id_c253713f_fk_user_user_id` (`to_user_id`),
  CONSTRAINT `user_user_following_from_user_id_9a644ffb_fk_user_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `user_user_following_to_user_id_c253713f_fk_user_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_following`
--

LOCK TABLES `user_user_following` WRITE;
/*!40000 ALTER TABLE `user_user_following` DISABLE KEYS */;
INSERT INTO `user_user_following` VALUES (430,23,24),(382,23,25),(423,24,23),(407,24,25),(381,25,23);
/*!40000 ALTER TABLE `user_user_following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_groups`
--

DROP TABLE IF EXISTS `user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_groups_user_id_group_id_bb60391f_uniq` (`user_id`,`group_id`),
  KEY `user_user_groups_group_id_c57f13c0_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_groups`
--

LOCK TABLES `user_user_groups` WRITE;
/*!40000 ALTER TABLE `user_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq` (`user_id`,`permission_id`),
  KEY `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_user_permissions`
--

LOCK TABLES `user_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 12:48:13
