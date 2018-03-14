-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: inventoryapp
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add inv_status',7,'add_inv_status'),(20,'Can change inv_status',7,'change_inv_status'),(21,'Can delete inv_status',7,'delete_inv_status'),(22,'Can add jts_employees',8,'add_jts_employees'),(23,'Can change jts_employees',8,'change_jts_employees'),(24,'Can delete jts_employees',8,'delete_jts_employees'),(25,'Can add inv_quantity',9,'add_inv_quantity'),(26,'Can change inv_quantity',9,'change_inv_quantity'),(27,'Can delete inv_quantity',9,'delete_inv_quantity'),(28,'Can add jts_products',10,'add_jts_products'),(29,'Can change jts_products',10,'change_jts_products'),(30,'Can delete jts_products',10,'delete_jts_products'),(31,'Can add inv_location',11,'add_inv_location'),(32,'Can change inv_location',11,'change_inv_location'),(33,'Can delete inv_location',11,'delete_inv_location'),(34,'Can add production',12,'add_production'),(35,'Can change production',12,'change_production'),(36,'Can delete production',12,'delete_production'),(37,'Can add jts_departments',13,'add_jts_departments'),(38,'Can change jts_departments',13,'change_jts_departments'),(39,'Can delete jts_departments',13,'delete_jts_departments'),(40,'Can add family_details',14,'add_family_details'),(41,'Can change family_details',14,'change_family_details'),(42,'Can delete family_details',14,'delete_family_details'),(43,'Can add inv_material type',15,'add_inv_materialtype'),(44,'Can change inv_material type',15,'change_inv_materialtype'),(45,'Can delete inv_material type',15,'delete_inv_materialtype'),(46,'Can add inv_warehouse',16,'add_inv_warehouse'),(47,'Can change inv_warehouse',16,'change_inv_warehouse'),(48,'Can delete inv_warehouse',16,'delete_inv_warehouse'),(49,'Can add emp_jobrole',17,'add_emp_jobrole'),(50,'Can change emp_jobrole',17,'change_emp_jobrole'),(51,'Can delete emp_jobrole',17,'delete_emp_jobrole'),(52,'Can add emp_location',18,'add_emp_location'),(53,'Can change emp_location',18,'change_emp_location'),(54,'Can delete emp_location',18,'delete_emp_location'),(55,'Can add requisition_details',19,'add_requisition_details'),(56,'Can change requisition_details',19,'change_requisition_details'),(57,'Can delete requisition_details',19,'delete_requisition_details'),(58,'Can add inv_ unit of measure',20,'add_inv_unitofmeasure'),(59,'Can change inv_ unit of measure',20,'change_inv_unitofmeasure'),(60,'Can delete inv_ unit of measure',20,'delete_inv_unitofmeasure'),(61,'Can add user_roles',21,'add_user_roles'),(62,'Can change user_roles',21,'change_user_roles'),(63,'Can delete user_roles',21,'delete_user_roles'),(64,'Can add requisition',22,'add_requisition'),(65,'Can change requisition',22,'change_requisition'),(66,'Can delete requisition',22,'delete_requisition'),(67,'Can add inv_products',23,'add_inv_products'),(68,'Can change inv_products',23,'change_inv_products'),(69,'Can delete inv_products',23,'delete_inv_products'),(70,'Can add inv_material category',24,'add_inv_materialcategory'),(71,'Can change inv_material category',24,'change_inv_materialcategory'),(72,'Can delete inv_material category',24,'delete_inv_materialcategory'),(73,'Can add user_menus',25,'add_user_menus'),(74,'Can change user_menus',25,'change_user_menus'),(75,'Can delete user_menus',25,'delete_user_menus'),(76,'Can add inv_position',26,'add_inv_position'),(77,'Can change inv_position',26,'change_inv_position'),(78,'Can delete inv_position',26,'delete_inv_position'),(79,'Can add session_history',27,'add_session_history'),(80,'Can change session_history',27,'change_session_history'),(81,'Can delete session_history',27,'delete_session_history'),(82,'Can add purchase_details',28,'add_purchase_details'),(83,'Can change purchase_details',28,'change_purchase_details'),(84,'Can delete purchase_details',28,'delete_purchase_details'),(85,'Can add purchase_requisition',29,'add_purchase_requisition'),(86,'Can change purchase_requisition',29,'change_purchase_requisition'),(87,'Can delete purchase_requisition',29,'delete_purchase_requisition');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(17,'InventoryApp','emp_jobrole'),(18,'InventoryApp','emp_location'),(14,'InventoryApp','family_details'),(11,'InventoryApp','inv_location'),(24,'InventoryApp','inv_materialcategory'),(15,'InventoryApp','inv_materialtype'),(26,'InventoryApp','inv_position'),(23,'InventoryApp','inv_products'),(9,'InventoryApp','inv_quantity'),(7,'InventoryApp','inv_status'),(20,'InventoryApp','inv_unitofmeasure'),(16,'InventoryApp','inv_warehouse'),(13,'InventoryApp','jts_departments'),(8,'InventoryApp','jts_employees'),(10,'InventoryApp','jts_products'),(12,'InventoryApp','production'),(28,'InventoryApp','purchase_details'),(29,'InventoryApp','purchase_requisition'),(22,'InventoryApp','requisition'),(19,'InventoryApp','requisition_details'),(27,'InventoryApp','session_history'),(25,'InventoryApp','user_menus'),(21,'InventoryApp','user_roles'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'InventoryApp','0001_initial','2018-02-16 12:31:19.439931'),(2,'contenttypes','0001_initial','2018-02-16 12:31:20.407789'),(3,'auth','0001_initial','2018-02-16 12:31:33.063483'),(4,'admin','0001_initial','2018-02-16 12:31:35.632024'),(5,'admin','0002_logentry_remove_auto_add','2018-02-16 12:31:35.943333'),(6,'contenttypes','0002_remove_content_type_name','2018-02-16 12:31:37.395802'),(7,'auth','0002_alter_permission_name_max_length','2018-02-16 12:31:37.547669'),(8,'auth','0003_alter_user_email_max_length','2018-02-16 12:31:37.708352'),(9,'auth','0004_alter_user_username_opts','2018-02-16 12:31:37.809260'),(10,'auth','0005_alter_user_last_login_null','2018-02-16 12:31:38.574272'),(11,'auth','0006_require_contenttypes_0002','2018-02-16 12:31:38.614689'),(12,'auth','0007_alter_validators_add_error_messages','2018-02-16 12:31:38.662992'),(13,'auth','0008_alter_user_username_max_length','2018-02-16 12:31:40.355918'),(14,'sessions','0001_initial','2018-02-16 12:31:41.132348'),(15,'InventoryApp','0002_auto_20180216_1253','2018-02-16 12:54:01.012079'),(16,'InventoryApp','0003_auto_20180226_1904','2018-02-26 19:04:33.618940'),(17,'InventoryApp','0004_auto_20180226_1945','2018-02-26 19:46:03.899327'),(18,'InventoryApp','0003_auto_20180228_1316','2018-02-28 13:17:05.123325'),(19,'InventoryApp','0003_auto_20180228_1317','2018-02-28 13:18:02.227683'),(20,'InventoryApp','0004_auto_20180302_1627','2018-03-02 16:27:32.303476');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_jobrole`
--

DROP TABLE IF EXISTS `emp_jobrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_jobrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobRole` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_jobrole`
--

LOCK TABLES `emp_jobrole` WRITE;
/*!40000 ALTER TABLE `emp_jobrole` DISABLE KEYS */;
INSERT INTO `emp_jobrole` VALUES (1,'store incharge'),(2,'production staff'),(3,'implementation staff'),(4,'R&D staff'),(5,'purchase incharge'),(6,'admin'),(7,'hr'),(8,'employee'),(9,'CEO'),(10,'GroupHead');
/*!40000 ALTER TABLE `emp_jobrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_location`
--

DROP TABLE IF EXISTS `emp_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_location`
--

LOCK TABLES `emp_location` WRITE;
/*!40000 ALTER TABLE `emp_location` DISABLE KEYS */;
INSERT INTO `emp_location` VALUES (1,'hyderabad'),(2,'kakinada');
/*!40000 ALTER TABLE `emp_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_details`
--

DROP TABLE IF EXISTS `family_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Relationship` varchar(25) NOT NULL,
  `employeeId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `family_details_employeeId_id_3fc64203_fk_jts_employees_id` (`employeeId_id`),
  CONSTRAINT `family_details_employeeId_id_3fc64203_fk_jts_employees_id` FOREIGN KEY (`employeeId_id`) REFERENCES `jts_employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_details`
--

LOCK TABLES `family_details` WRITE;
/*!40000 ALTER TABLE `family_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_UnitOfMeasure`
--

DROP TABLE IF EXISTS `inv_UnitOfMeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_UnitOfMeasure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measurementName` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_UnitOfMeasure`
--

LOCK TABLES `inv_UnitOfMeasure` WRITE;
/*!40000 ALTER TABLE `inv_UnitOfMeasure` DISABLE KEYS */;
INSERT INTO `inv_UnitOfMeasure` VALUES (1,'nos');
/*!40000 ALTER TABLE `inv_UnitOfMeasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_location`
--

DROP TABLE IF EXISTS `inv_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(15) NOT NULL,
  `locationAddress` varchar(50) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_location_statusId_id_1e00067b_fk_inv_status_id` (`statusId_id`),
  CONSTRAINT `inv_location_statusId_id_1e00067b_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_location`
--

LOCK TABLES `inv_location` WRITE;
/*!40000 ALTER TABLE `inv_location` DISABLE KEYS */;
INSERT INTO `inv_location` VALUES (1,'hyderabad','erragadda',1);
/*!40000 ALTER TABLE `inv_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_materialCategory`
--

DROP TABLE IF EXISTS `inv_materialCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_materialCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialCategory` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_materialCategory`
--

LOCK TABLES `inv_materialCategory` WRITE;
/*!40000 ALTER TABLE `inv_materialCategory` DISABLE KEYS */;
INSERT INTO `inv_materialCategory` VALUES (1,'consumable'),(2,'tools'),(3,'equipments');
/*!40000 ALTER TABLE `inv_materialCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_materialType`
--

DROP TABLE IF EXISTS `inv_materialType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_materialType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialType` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_materialType`
--

LOCK TABLES `inv_materialType` WRITE;
/*!40000 ALTER TABLE `inv_materialType` DISABLE KEYS */;
INSERT INTO `inv_materialType` VALUES (1,'raw material'),(2,'finished goods'),(3,'intermediate');
/*!40000 ALTER TABLE `inv_materialType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_position`
--

DROP TABLE IF EXISTS `inv_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Position` varchar(15) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  `warehouseId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_position_statusId_id_09e69e24_fk_inv_status_id` (`statusId_id`),
  KEY `inv_position_warehouseId_id_db546a53_fk_inv_warehouse_id` (`warehouseId_id`),
  CONSTRAINT `inv_position_statusId_id_09e69e24_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`),
  CONSTRAINT `inv_position_warehouseId_id_db546a53_fk_inv_warehouse_id` FOREIGN KEY (`warehouseId_id`) REFERENCES `inv_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_position`
--

LOCK TABLES `inv_position` WRITE;
/*!40000 ALTER TABLE `inv_position` DISABLE KEYS */;
INSERT INTO `inv_position` VALUES (1,'Tester',1,1),(2,'S6R1B1PX',1,1),(3,'S6R1B2PX',1,1),(4,'S6R2B1PX',1,1),(5,'S6R2B2PX',1,1),(6,'S6R3B1P1',1,1),(7,'S6R3B1P2',1,1),(8,'S8R1B1P1',1,1),(10,'S5R1B1P1',1,1),(13,'S5R1B2P1',1,1),(14,'S8R1B3P3',1,1),(15,'S6R3B1P3',1,1),(16,'S6R1B1P4',1,1),(17,'S6R3B1P5',1,1),(18,'S8R2B1P1',1,1),(20,'S6R3B1P6',1,1),(21,'S8R2B2P2',1,1),(22,'S6R3B1P7',1,1),(23,'S6R3B1P8',1,1),(24,'S6R3B1P9',1,1),(25,'S6R3B1P10',1,1),(26,'S5R2B1P1',1,1),(28,'S5R2B2P1',1,1),(29,'S5R2B3P1',1,1),(30,'S5R3B1P1',1,1),(31,'S5R3B1P2',1,1),(32,'S5R3B1P3',1,1),(33,'S5R3B1P1',1,1),(34,'S5R3B2P2',1,1),(35,'S5R3B2P3',1,1),(36,'S5R3B3P1',1,1),(37,'S5R3B3P2',1,1),(38,'S5R3B3P3',1,1),(39,'S6R3B1P11',1,1),(40,'S5R3B4P1',1,1),(41,'S5R3B4P2',1,1),(42,'S6R3B1P12',1,1),(43,'S5R4B1P1',1,1),(44,'S6R3B1P13',1,1),(45,'S5R4B4P1',1,1),(46,'S5R4B3P1',1,1),(47,'S8R2B3P3',1,1),(48,'S6R3B2P1',1,1),(49,'S6R3B2P2',1,1),(50,'S8R3B1P1',1,1),(51,'S6R3B2P3',1,1),(52,'S5R5B1P1',1,1),(53,'S6R3B2P4',1,1),(54,'S8R3B2P2',1,1),(55,'S5R5B1P2',1,1),(56,'S6R3B2P5',1,1),(57,'S5R5B1P3',1,1),(58,'S8R4B1P1',1,1),(59,'S6R3B2P6',1,1),(60,'S8R4B2P2',1,1),(61,'S5R5B1P4',1,1),(62,'S8R4B3P3',1,1),(63,'S5R5B1P5',1,1),(64,'S6R3B2P7',1,1),(65,'S5R5B2P1',1,1),(66,'S8R5B1P1',1,1),(67,'S6R3B2P8',1,1),(68,'S8R5B2P2',1,1),(69,'S5R5B2P2',1,1),(70,'S8R5B3P3',1,1),(71,'S5R5B2P3',1,1),(72,'S5R5B2P4',1,1),(73,'S8R6B1P1',1,1),(74,'S5R5B2P5',1,1),(75,'S8R6B3P3',1,1),(76,'S6R3B2P9',1,1),(77,'S5R5BcP1',1,1),(78,'S8R6BbP2',1,1),(79,'S5R5BdP1',1,1),(80,'S6R3B2P10',1,1),(81,'S5R5BdP2',1,1),(82,'S5R5BdP3',1,1),(83,'S6R3B2P11',1,1),(84,'S5R5BdP4',1,1),(85,'S5R5BdP5',1,1),(86,'S5R5BdP6',1,1),(87,'S7R1B1PX',1,1),(88,'S6R3B3P1',1,1),(89,'S6R3B3P2',1,1),(90,'S5R5BdP7',1,1),(91,'S6R3B3P3',1,1),(92,'S5R5BdP8',1,1),(93,'S5R5BdP9',1,1),(94,'S5R5BdP10',1,1),(95,'S5R5BdP11',1,1),(96,'S6R3B3P4',1,1),(97,'S7R1BaPX',1,1),(98,'S5R5BdP12',1,1),(99,'S6R3B3P5',1,1),(101,'S5R5BdP13',1,1),(102,'S5R5BdP14',1,1),(103,'S7R2BaPX',1,1),(104,'S6R3B3P6',1,1),(105,'S5R5BdP15',1,1),(106,'S5R5BdP16',1,1),(107,'S6R3B3P7',1,1),(108,'S7R2BbPX',1,1),(109,'S5R5BdP17',1,1),(110,'S5R5BdP18',1,1),(111,'S7R3BaP1',1,1),(112,'S6R3B3P8',1,1),(113,'S7R3BbP2',1,1),(114,'S5R6BaP1',1,1),(115,'S7R3BcP3',1,1),(116,'S5R6BbP1',1,1),(117,'S6R3B3P9',1,1),(118,'S5R6BbP2',1,1),(119,'S7R4BaPX',1,1),(120,'S5R6BcP1',1,1),(121,'S7R4BbPX',1,1),(122,'S5R6BcP2',1,1),(123,'S7R5BaPX',1,1),(124,'S5R7BaP1',1,1),(125,'S7R5BbPX',1,1),(126,'S5R7BbP1',1,1),(127,'S5R7BbP2',1,1),(128,'S5R7BcP1',1,1),(129,'S5R7BdP1',1,1),(130,'S7R5BcPX',1,1),(131,'S6R3B3P10',1,1),(132,'S5R7BdP2',1,1),(133,'S7R5BdPX',1,1),(134,'S5R8BaP1',1,1),(135,'S7R5BePX',1,1),(136,'S5R8BbP1',1,1),(137,'S7R6BaPX',1,1),(138,'S7R6BbPX',1,1),(139,'S7R6BcPX',1,1),(140,'S6R3B3P11',1,1),(141,'S7R6BdPX',1,1),(142,'S7R6BePX',1,1),(143,'S7R6BfPX',1,1),(144,'S7R7BaPX',1,1),(145,'S7R7BbPX',1,1),(146,'S7R7BcPX',1,1),(147,'S8(1)R1BaPX',1,1),(148,'S8(1)R3BaPX',1,1),(149,'S1R1BaP1',1,1),(150,'S1R1BaP2',1,1),(151,'S1R1BaP3',1,1),(152,'S1R1BbP1',1,1),(153,'S1R1BbP2',1,1),(154,'S1R1BcP1',1,1),(155,'S8R1BbP2',1,1),(156,'S1R1BcP2',1,1),(157,'S1R2BaP1',1,1),(158,'S1R2BaP2',1,1),(159,'S1R2BbP1',1,1),(160,'S1R2BbP2',1,1),(161,'S7R8BaPX',1,1),(162,'S6R3B3P12',1,1),(163,'S7R8BbPX',1,1),(164,'S1R2BaP3',1,1),(165,'S1R2BcP1',1,1),(166,'S7R8BcPX',1,1),(167,'S6R3B4P8',7,1),(168,'S7R8BdPX',1,1),(169,'S1R2BcP2',1,1),(170,'S7R8BePX',1,1),(171,'S1R2BcP3',1,1),(172,'S7R8BfPX',1,1),(173,'S7R8BgPX',1,1),(174,'S7R8BhPX',1,1),(175,'S7R8BjPX',1,1),(176,'S7R8BiPX',1,1),(177,'S1R5BaP1',1,1),(178,'S1R5BbP1',1,1),(179,'S1R5BcP1',1,1),(180,'S6R3B4P1',1,1),(181,'S4R5B1P1',1,1),(182,'S6R3B4P2',1,1),(183,'S1R3BaPX',1,1),(184,'S1R3BbPX',1,1),(185,'S6R3B4P3',1,1),(186,'S1R3BcPX',1,1),(187,'S6R3B4P4',1,1),(188,'S6R3B4P5',1,1),(189,'S1R3BdPX',1,1),(190,'S6R3B4P6',1,1),(191,'S1R4BaPX',1,1),(192,'S6R3B4P7',1,1),(193,'S1R4BbPX',1,1),(194,'S1R4BcPX',1,1),(195,'S1R6BaPX',1,1),(196,'S1R6BbPX',1,1),(197,'S1R6BcPX',1,1),(198,'S1R6BdPX',1,1),(199,'S1R6BePX',1,1),(200,'S1R6BfPX',1,1),(201,'S1R6BgPX',1,1),(202,'S1R8BaPX',1,1),(203,'S6R3B4P9',1,1),(204,'S1R8BbPX',1,1),(205,'S6R3B4P10',1,1),(206,'S1R8BcPX',1,1),(207,'S1R8BdPX',1,1),(208,'S1R8BePX',1,1),(209,'S1R8BfPX',1,1),(210,'S1R8BgPX',1,1),(211,'S1R9Ba(1)PX',1,1),(212,'S1R9Ba(2)PX',1,1),(213,'S1R9Ba(3)PX',1,1),(214,'S1R9Bb(1)PX',1,1),(215,'S1R9Bb(3)PX',1,1),(216,'S1R9Bb(2)PX',1,1),(217,'S1R9Bb(4)PX',1,1),(218,'S1R9Bb(5)PX',1,1),(219,'S1R9Bb(6)PX',1,1),(220,'S1R9Bb(7)PX',1,1),(221,'S1R9Bb(8)PX',1,1),(222,'S1R9Bb(9)PX',1,1),(223,'S1R9Bb(10)PX',1,1),(224,'S1R9Bb(11)PX',1,1),(225,'S1R9Bc1PX',1,1),(226,'S1R9Bc2PX',1,1),(227,'S1R9Bc3PX',1,1),(228,'S1R9Bc4PX',1,1),(229,'S1R9Bd1PX',1,1),(230,'S1R9Bd2PX',1,1),(231,'S6R3B4P11',1,1),(232,'S1R9Bd3PX',1,1),(233,'S1R9Bd4PX',1,1),(234,'S1R9Bd5PX',1,1),(235,'S1R9Be1PX',1,1),(236,'S1R9Be2PX',1,1),(237,'S1R9Be3PX',1,1),(238,'S1R9Be4PX',1,1),(239,'S1RXBXPX',1,1),(240,'S1R9Be5PX',1,1),(241,'S1R7BaPX',1,1),(242,'S6R3B4P12',1,1),(243,'S1R7BbPX',1,1),(244,'S1R7BcPX',1,1),(245,'S1R7BdPX',1,1),(246,'S6R3B5P1',1,1),(247,'S1R10BaP1',1,1),(248,'S1R10BaP2',1,1),(249,'S1R10BaP3',1,1),(250,'S6R3B5P2',1,1),(251,'S1R10BaP4',1,1),(252,'S1R10BaP5',1,1),(253,'S1R10BaP6',1,1),(254,'S1R10BbP1',1,1),(255,'S1R10BbP2',1,1),(256,'S1R10BbP3',1,1),(257,'S1R10BbP4',1,1),(258,'S6R3B5P3',1,1),(259,'S1R10BcP1',1,1),(260,'S6R3B5P4',1,1),(261,'S6R3B5P5',1,1),(262,'S6R3B5P6',1,1),(263,'S1R10BcP2',1,1),(264,'S1)R10BdP1',1,1),(265,'S1R10BdP2',1,1),(266,'S1R10BdP3',1,1),(267,'S1R10BdP4',1,1),(268,'S1R11BaP1',1,1),(269,'S1R11BaP2',1,1),(270,'S1R11BbP1',1,1),(271,'S1R11BbP2',1,1),(272,'S1R11BbP3',1,1),(273,'S1R11BbP4',1,1),(274,'S1R11BbP5',1,1),(275,'S1R11BbP6',1,1),(276,'S1R11BbP7',1,1),(277,'S1R11BcP1',1,1),(278,'S1R11BcP2',1,1),(279,'S1R11BcP3',1,1),(280,'S6R3B5P7',1,1),(281,'S6R3B5P8',1,1),(282,'S6R3B5P9',1,1),(283,'S6R3B5P10',1,1),(284,'S6R3B5P11',1,1),(285,'S6R3B5P12',1,1),(286,'S6R3B5P13',1,1),(287,'S6R3B5P14',1,1),(288,'S6R3B5P15',1,1),(289,'S6R3B5P16',1,1),(290,'S6R3B5P17',1,1),(291,'S6R3B6P1',1,1),(292,'S6R3B6P2',1,1),(293,'S6R3B6P3',1,1),(294,'S6R3B6P4',1,1),(295,'S6R3B6P5',1,1),(296,'S6R3B6P6',1,1),(297,'S6R3B6P7',1,1),(298,'S6R3B6P8',1,1),(299,'S6R3B6P9',1,1),(300,'S6R3B6P10',1,1),(301,'S6R3B6P11',1,1),(302,'S6R3B6P12',1,1),(303,'S6R3B6P13',1,1),(304,'S6R3B6P14',1,1),(305,'S6R3B6P15',1,1),(306,'S6R3B6P16',1,1),(307,'S6R4B1P1',1,1),(308,'S6R4B1P2',1,1),(309,'S6R4B1P3',1,1),(310,'S6R4B1P4',1,1),(311,'S6R6B1P1',1,1),(313,'S6R5B1P5',1,1),(314,'S6R5B1P6',1,1),(315,'S6R6B2P1',1,1),(316,'S6R6B3P1',1,1),(317,'S6R6B4P1',1,1),(318,'S6R6B5P1',1,1),(319,'S6R6B6P1',1,1),(320,'S6R7B1P1',1,1),(321,'S6R7B2P1',1,1),(322,'S6R7B3P1',1,1),(323,'S6R7B4P1',1,1),(324,'S6R7B5P1',1,1),(325,'S6R7B6P1',1,1),(326,'S6R7B7P1',1,1),(327,'S6R7B8P1',1,1),(328,'S6R8B1P1',1,1),(329,'S6R8B2P1',1,1),(330,'S6R8B3P1',1,1),(331,'S6R8B4P1',1,1),(332,'S2R1B1P1',1,1),(333,'S2R1B2P1',1,1),(334,'S2R1B3P1',1,1),(335,'S2R1B4P1',1,1),(336,'S2R1B5P1',1,1),(337,'S2R1B6P1',1,1),(338,'S2R2B1P1',1,1),(339,'S2R2B2P1',1,1),(340,'S2R2B3P1',1,1),(341,'S2R3B1P1',1,1),(342,'S2R3B2P1',1,1),(343,'S2R3B3P1',1,1),(344,'S2R3B4P1',1,1),(345,'S2R4B1Pq',1,1),(346,'S2RrB2P1',1,1),(347,'S2R4B3P1',1,1),(348,'S2R4B3P2',1,1),(349,'S2R4B3P3',1,1),(350,'S2R4B3P4',1,1),(351,'S2R4B4P1',1,1),(352,'S2R5B1P1',1,1),(353,'S2R5B2P1',1,1),(354,'S2R5B2P2',1,1),(355,'S2R5B3P1',1,1),(356,'S2R5B4P1',1,1),(357,'S2R5B5P1',1,1),(358,'S2R5B6P1',1,1),(359,'S2R5B7P1',1,1),(360,'S2R5B8P1',1,1),(361,'S2R5B9P1',1,1),(362,'S2R5B10P1',1,1),(363,'S2R5B11P1',1,1),(364,'S2R6B1P1',1,1),(365,'S2R6B2P1',1,1),(366,'S2R6B3P1',1,1),(367,'S2R5B12P1',1,1),(368,'S2R6B4P1',1,1),(369,'S2R6B5P1',1,1),(370,'S2R6B6P1',1,1),(371,'S4R1BaPX',1,1),(372,'S4R1BbPX',1,1),(373,'S4R1BcPX',1,1),(374,'S4R1BdPX',1,1),(375,'S4R1BePX',1,1),(376,'S4R2BaPX',1,1),(377,'S4R2BbPX',1,1),(378,'S4R2BcPX',1,1),(379,'S4R2BdPX',1,1),(380,'S4R2BePX',1,1),(381,'S4R2BfPX',1,1),(382,'S4R3BaPX',1,1),(383,'S4R3BbPX',1,1),(384,'S4R3BcPX',1,1),(385,'S4R4BaPX',1,1),(386,'S4R4BbPX',1,1),(387,'S4R5BbPX',1,1),(388,'S4R5BbPX',1,1),(389,'S4R6BaPX',1,1),(390,'S3R1BaPX',1,1),(391,'S4R6BbPX',1,1),(394,'S3R2BaPX',1,1),(395,'S3R2BbPX',1,1),(396,'S3R2BcPX',1,1),(397,'S3R3BbPX',1,1),(398,'S3R3BcPX',1,1),(399,'S3R4BaPX',1,1),(400,'S3R4BbPX',1,1),(401,'S3R4BcPX',1,1),(402,'S3R4BdPX',1,1),(403,'S3R4BePX',1,1),(404,'S3R5BaPX',1,1),(405,'S3R5BbPX',1,1),(406,'S3R5BcPX',1,1),(407,'S3R5BdPX',1,1),(408,'S3R5BePX',1,1),(409,'S3R5BfPX',1,1),(410,'S3R5BgPX',1,1),(411,'S3R5BhPX',1,1),(412,'S3R7BaPX',1,1),(413,'S3R6BaPX',1,1),(414,'S3R6BbPX',1,1),(415,'S3R6BcPX',1,1),(416,'S3R6BdPX',1,1),(417,'S3R7BbPX',1,1),(418,'S3R6BePX',1,1),(419,'S3R6BfPX',1,1),(420,'S3R7BcPX',1,1),(421,'S3R6BgPX',1,1),(422,'S3R7BdPX',1,1),(425,'S3R7BePX',1,1),(426,'S3R7BfPX',1,1),(427,'S3R7BgPX',1,1),(428,'S3R7BhPX',8,1),(430,'S4R1BbP2',1,1),(431,'S4R1BbP3',1,1),(432,'S3R8BaPX',1,1),(433,'S3R8BbPX',1,1),(434,'S3R8BcPX',1,1),(435,'S3R8BdPX',1,1),(436,'S3R8BePX',1,1),(437,'S3R1BaP1',1,1),(438,'S_3R8BfPX',1,1),(439,'S3R1BaP2',1,1),(440,'S3R8BgPX',1,1),(441,'S3R1BaP3',1,1),(442,'S3R8BhPX',1,1),(443,'SXRXBXPX',1,1),(444,'S3R9BaPX',1,1),(445,'S3R1BaP4',1,1),(446,'S3R1BcP1',1,1),(447,'S3R3BaP1',1,1),(448,'S3R3BaP2',1,1),(449,'S3R9BbPX',1,1),(450,'S3R3BbP1',1,1),(451,'S3R9BcPX',1,1),(452,'S3R3BbP2',1,1),(453,'S3R9BdPX',1,1),(454,'S3R3BcP1',1,1),(455,'S3R9BePX',1,1),(456,'S3R3BcP2',1,1),(457,'S3R9BfPX',1,1),(458,'S3R5BaP1',1,1),(459,'S3R5Ba2PX',1,1),(460,'S3R5BaP2',1,1),(461,'S3R11BaPX',1,1),(462,'S3R5BaP3',1,1),(463,'S3R5BbP1',1,1),(464,'S3R11BbPX',1,1),(465,'S3R5BbP2',1,1),(466,'S3R11BcPX',1,1),(467,'S3R5BcP1',1,1),(468,'S3R11BdPX',1,1),(469,'S3R11BePX',1,1),(470,'S3R5BcP2',1,1),(471,'S3R12BaPX',1,1),(472,'S3R5BdP1',1,1),(473,'S3R12BbPX',1,1),(474,'S3R5BdP2',1,1),(475,'S3R12BcPX',1,1),(476,'S3R12BdPX',1,1),(477,'S3R13BaPX',1,1),(478,'S3R12Bd1PX',1,1),(479,'S3R12Bd2PX',1,1),(480,'S3R12Bd3PX',1,1),(481,'S3R13Bb1PX',1,1),(482,'S3R13Bb2PX',1,1),(483,'S3R13Bb3PX',1,1),(484,'S3R13BcPX',1,1),(485,'S3R13BdPX',1,1),(486,'S3R5BfP1',1,1),(487,'S3R14BaPX',1,1),(488,'S3R14BbPX',1,1),(489,'S3R5BfP2',1,1),(490,'S3R5BgP1',1,1),(491,'S3R5BgP2',1,1),(492,'S3R5BhP1',1,1),(493,'S3R5BhP2',1,1),(494,'S3R6BaP1',1,1),(495,'S3R6BaP2',1,1),(496,'S3R6BbP1',1,1),(497,'S3R6BcP2',1,1),(498,'S3R6BdP1',1,1),(500,'S3R9B10PX',1,1),(501,'S3R10BbPX',1,1),(502,'S3R10BcPX',1,1),(505,'S3R13BbPX',1,1),(506,'S3R6BhPX',1,1),(507,'S3R6BiPX',1,1),(508,'S4R1Bb2PX',1,1),(509,'S4R1Bb3PX',1,1),(510,'S7R1BaP1',1,1),(511,'S7R1BbP2',1,1),(512,'S7R2BaP1',1,1),(513,'S7R2BbP2',1,1),(514,'S7R2BcP3',1,1),(515,'S7R3B1P1',1,1),(516,'S7R4BaP1',1,1),(517,'S7R4BbP2',1,1),(518,'S7R4BcP3',1,1),(519,'S7R5BaP1',1,1),(520,'S7R5BbP2',1,1),(521,'S7R5BcP3',1,1),(522,'S7R5BdP4',1,1),(523,'S7R5BeP5',1,1),(524,'S7R5BfP6',1,1),(525,'S7R6BaP1',1,1),(526,'S7R6BbP2',1,1),(527,'S4R2Bb2PX',1,1),(528,'S7R6BcP3',1,1),(529,'S7R7BaP1',1,1),(530,'S7R7BbP2',1,1),(531,'S7R7BcP3',1,1),(532,'S7R7BdP4',1,1),(533,'S7R7BeP5',1,1),(534,'S7R7BfP6',1,1),(535,'S7R7BgP7',1,1),(536,'S7R7BhP8',1,1),(537,'S7R7BiP9',1,1),(538,'S7R8BaP1',1,1),(539,'S7R8BbP2',1,1),(540,'S7R8BcP3',1,1),(541,'S7R8BdP4',1,1),(542,'S7R8BeP5',1,1),(543,'S7R8BfP6',1,1),(544,'S7R8BgP7',1,1);
/*!40000 ALTER TABLE `inv_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_products`
--

DROP TABLE IF EXISTS `inv_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productNo` varchar(50),
  `productName` varchar(100) NOT NULL,
  `productDescription` varchar(250),
  `productModel` varchar(100),
  `productCompany` varchar(100),
  `productPackage` varchar(100) DEFAULT NULL,
  `productPurchasable` varchar(5) NOT NULL,
  `productPurchaseListPrice` int(11) NOT NULL,
  `productPriceTolerancePercent` int(11) NOT NULL,
  `productSellable` varchar(5) NOT NULL,
  `productSerialControlled` varchar(5) NOT NULL,
  `productBatchTracked` varchar(5) NOT NULL,
  `standardCost` int(11) NOT NULL,
  `reorderLevel` int(11) NOT NULL,
  `reorderQty` int(11) NOT NULL,
  `productCategory_id` int(11) NOT NULL,
  `productType_id` int(11) NOT NULL,
  `productUOM_id` int(11) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_products_productCategory_id_f7842381_fk_inv_mater` (`productCategory_id`),
  KEY `inv_products_productType_id_202ff899_fk_inv_materialType_id` (`productType_id`),
  KEY `inv_products_productUOM_id_41a64a20_fk_inv_UnitOfMeasure_id` (`productUOM_id`),
  KEY `inv_products_statusId_id_6361b5df_fk_inv_status_id` (`statusId_id`),
  CONSTRAINT `inv_products_productCategory_id_f7842381_fk_inv_mater` FOREIGN KEY (`productCategory_id`) REFERENCES `inv_materialCategory` (`id`),
  CONSTRAINT `inv_products_productType_id_202ff899_fk_inv_materialType_id` FOREIGN KEY (`productType_id`) REFERENCES `inv_materialType` (`id`),
  CONSTRAINT `inv_products_productUOM_id_41a64a20_fk_inv_UnitOfMeasure_id` FOREIGN KEY (`productUOM_id`) REFERENCES `inv_UnitOfMeasure` (`id`),
  CONSTRAINT `inv_products_statusId_id_6361b5df_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_products`
--

LOCK TABLES `inv_products` WRITE;
/*!40000 ALTER TABLE `inv_products` DISABLE KEYS */;
INSERT INTO `inv_products` VALUES (1,'Etr','Tester','For Current Testing','null','Taparia','','yes',40,10,'yes','yes','yes',41,10,5,1,1,1,1),(2,'C8PMC','8 pin male connector','Simple and easy connection','','-','','yes',10,10,'no','no','no',10,10,50,1,1,1,1),(3,'C8PFC','8Pin female connctor','Simple and easy connection','','-jts','','yes',20,10,'no','no','no',20,10,50,1,1,1,1),(4,'C10PMC','10 Pin Male connect or','Simple and connection','','-','','yes',30,10,'no','no','no',30,10,50,1,1,1,1),(5,'C10PFC','10 Pin female connector','Simple and easy connection','-','-','','yes',30,10,'no','no','no',30,10,50,1,1,1,1),(6,'CGSME','GSM Module','GSM module is used to establish communication between a computer and a GSM System','','','','yes',500,10,'no','no','yes',500,10,30,1,1,1,1),(7,'CSIM8L','Sim 800L','The sim 800L module supports quada-band GSM/GPRS networks, available for GPRS and SMS messages data remote transmission','','','','no',350,10,'no','yes','yes',350,10,50,1,1,1,1),(8,'CDCPM','D.C Pin male ','DC connector is an electrical connector for supplying direct current ( d.c ) power.','','','','no',9,10,'no','no','no',9,30,100,1,1,1,1),(9,'CF2PRS','Female 2Pin Relement Big','For connecting pcb to switches and leds  ','ATTC','','','yes',5,10,'no','no','no',10,40,100,1,1,1,1),(10,'CF2PRB','Female 2pin Relement ','For connecting pcb\'s to switches and led\'s','2510','','','yes',10,10,'no','no','no',8,50,200,1,1,1,1),(11,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(12,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(13,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(14,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(15,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(16,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(17,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(18,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(19,'CF6PR','Female 6Pin Relement','For Connecting Pcb\' to Switches and Led\'s','2510','','','yes',30,10,'no','no','yes',20,30,100,1,1,1,1),(20,'CBB','Breadboard','A Breadboard is a construction base for prototyping of elecctrons','','','','yes',100,10,'yes','no','no',90,6,20,1,1,1,1),(21,'','Magnetic Door Sensors ','Magnetic Door Sensor is so intelligent that it sends an alert to your cell phone or email address in the event of a security breach','','','','yes',250,10,'yes','no','no',250,10,50,1,1,1,1),(22,'','120k resistor','1/4w leaded resistor','leaded','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(23,'','33 ohms resistor','Resistor','Leaded','','','yes',10,10,'no','yes','yes',10,10,10,1,1,1,1),(24,'','82 ohms resistor','Resistor','Leaded','','','yes',10,10,'no','yes','yes',10,10,10,1,1,1,1),(25,'','7Switch Module','switch modules','jts001','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(26,'','eurostar MCB distribution boards,8 way span','protection purpose ','','','','yes',10,10,'yes','yes','yes',10,10,20,1,1,1,1),(27,'','TVSR ASS CKTS','ckt','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,3),(28,'','philips lamps','lighting','','philips','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(29,'','Siddhex Multimedia Player','used to audio and video ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(30,'','9v/1Amp, 9v/2.25Amps adapter','converts 230v ac into 9v dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(31,'','crompton hpsv lamps','lighting','','crompton','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(32,'','Metal Boxes ','To avoid the short circuit ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(33,'','24v/1A, 24v/2A adapter','converts 230v ac into 24v dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(34,'','Metal Boxes Small ','To Avoid the short circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(36,'','27ohms resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(37,'','100ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(38,'','68ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(39,'','Door Lock Remote Box','security ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(40,'','power supply boards','for power supply (out side service)','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(41,'','electric motor asseroies','motar','','amzan','10','yes',20,10,'yes','yes','yes',10,10,10,1,1,1,1),(42,'','22ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(43,'','12V/2A Adapter ','it converts 230V AC to 12V DC ','FA 1202000ST','FOXLNK','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(44,'','15ohms resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(45,'','1.8k ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(46,'','Smoke detector alarm sensor ','security ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(47,'','10ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(48,'','5V/1A Adapter ','it converts 230v AC to 5V DC ','TA3061-UK','MITSUBISHI ELECTRIC ','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(49,'','4.7ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(50,'','1ohm resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(51,'','0.1ohm resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(52,'','eleetrick motar asseroies','product ranning prpog','','','','yes',10,10,'yes','yes','yes',10,20,10,1,1,1,1),(53,'','56ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(54,'','150M Wifi dongle receiver  802.11n','internet and signal ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(55,'','FRLSH-pvc insulated industrial cable 1.0 sq.mm','for connections','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(56,'','270ohms resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(57,'','220ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(58,'','180ohms resistor','leaded resistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(59,'','150ohms resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(60,'','yellow 2.5 sq mm cable','for connections','','finnolex','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(61,'','120ohms resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(62,'','330ohms resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(63,'','black 2.5 sq.mm cable','for connections','','finolex','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(64,'','470ohms resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(65,'','560ohms resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(66,'','red 2.5 sq.mm cable','for connections','','finolex','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(67,'','4Switch module','with box','switch module','jts','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(68,'','680ohms resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(69,'','electrical switches','use 4switch model or 7switch model','','','','yes',10,10,'yes','yes','yes',20,10,20,1,1,1,1),(70,'','820ohm resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(71,'','1k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(72,'','red 2.0 sqmm cable','for connections','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(73,'','2.0 sq.mm blue cable','for connections','','','','yes',20,10,'yes','yes','yes',10,10,10,1,1,1,1),(74,'','siren','use cars or programs','','','2','yes',10,10,'yes','yes','yes',500,2,2,1,1,1,1),(75,'','LED Adapters','conversation ac to dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(76,'','black 1.0 sq mm cable','for connections','','gold medal','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(77,'','strip lights with plug cables','Lighting for indication purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(78,'','0.75 sq.mm black','for connection','','gold medal','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(79,'','Multimeters ','multi meter','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(80,'','small manitar','use display program','','','1','yes',10,10,'yes','yes','yes',500,10,1,1,1,1,1),(81,'','2.0 sqmm black cable','for connections','','gold medal','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(82,'','4C relays','4channel relays with wires','4c','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(83,'','Philips 100 Watt\'s bulb\'s ','Lighting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(84,'','0.75 sq.mm yellow cable','for connections','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(85,'','Second version Boards ','with diodes & without diodes','HA','JTS','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(86,'','15V/1A adapter ','converts 230V AC to 15V DC ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(87,'','8c relay box','8 channel relay','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(88,'','0.75 sq.mm gray cable','for connections','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(89,'','4c relay box ','4 channel relay','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(90,'','esp pins jumper( female)','ckts','','','10','yes',10,10,'yes','yes','yes',50,10,20,1,1,1,1),(91,'','Multimeters probes ','multi meter ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(92,'','Switch board fram','protection purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(93,'','camares ','security purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(94,'','0.75 sq.mm red cable','for connections','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(95,'','monitor box','system monitor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(96,'','modem box ','Internet purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(97,'','Electrical switch board\'s frams','protection purpose','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(98,'','adopters ','5v/2amp ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(99,'','pcb boards','use voltage or current use','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(100,'','Igenetion lock ','locks','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(101,'','Emty box','protection purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(102,'','camera stand black colour','camares ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(103,'','6 pin wire connectors ','connectors','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(105,'','Digital door Locks','security','','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(106,'','lithium ion batteries ','batteries ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(107,'','Curtains board','curtain pcb','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(108,'','key switch ','switches','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(109,'','12v/1.5A adapters','converts 230v ac into 12v dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(110,'','Multi meter\'s','measuring various properties ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(111,'','AC adapter with USB slot ','adapters ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(112,'','12v/1A adapter ','converts 230v ac into 12v dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(113,'','3Relay pcb','pcb','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(114,'','power adaptor','usb cannecation or ckts','  ','','10','yes',10,10,'yes','no','yes',10,10,30,1,2,1,1),(115,'','8 switch module boxes','switch module ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(116,'','12v/3A adapter','converts 230v ac into 12vdc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(117,'','woer sleeves 5mm','slevees','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(118,'','woer sleeves 4mm','sleeves ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(119,'','woer sleeves 2mm ','sleeves ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(120,'','cutting mission box','to cut metal and wood','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(121,'','15v/1.0Amp adaptor\'s','converts 230v ac to 15v dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(122,'','woer sleeves 1mm ','sleeves ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(123,'','12v\'10a smps','ckts','','','10','yes',10,10,'yes','yes','yes',20,30,10,1,1,1,1),(124,'','Problematic   boards','pcbs','switch module','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(125,'','smart water saver one box ','water saving purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(126,'','hand held digital thermometer','calculate temperature','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(127,'','soldering rods','soldering ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(128,'','15v/0.13Amp adaptor','converts 230v ac to 15v/0.13Amp dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(129,'','3.7v lithium batteries ','storing purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(130,'','ribbon cables 1/022 wire bundle','cables','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(131,'','battery holders','1cell, 2cell, & 3cell holders','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(132,'','Multimeters cables','To used as medium for multimeter and component ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(133,'','15v/1amp boxes','adopter boxes','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(134,'','power suppy boards','power carring to board','','','10','yes',10,20,'yes','yes','yes',10,20,20,1,1,1,1),(135,'','Adapters','12v 2A','No FA 1202000ST','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(136,'','regulating testing board','step down the dc voltage','','','10','yes',10,10,'yes','yes','yes',20,10,20,1,1,1,1),(137,'','100k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(138,'','Clothliner boards','pcb','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(139,'','150k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(140,'','180k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(141,'','switch module empty bax','empty box','','','10','yes',10,10,'yes','yes','yes',20,10,2,1,1,1,1),(142,'','3Switch module','without','switch module','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(143,'','3.3k resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(144,'','Homi Extender Tx at 5e/6-568B full-HD-1080P 3D Box (DOPRI-12)','Extender purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(145,'','190k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(146,'','270k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(147,'','2.7k resistor ','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(148,'','ESP board','student boards','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(149,'','330k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(150,'','470k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(151,'','l type clamp','fixeing parpog','','','10','yes',10,10,'yes','yes','yes',20,10,2,1,1,1,1),(152,'','560k resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(153,'','2.2k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(154,'','HMPL USB 2.0 LAN Adapter','connecting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(155,'','680k resistors','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(156,'','1.5k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(157,'','1.2k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(158,'','220k resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(159,'','1M ohm resistor','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(160,'','820k resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(161,'','Shutter alaram','security alaram','Ha','jts','10','yes',10,10,'yes','no','yes',10,10,10,1,1,1,1),(162,'','750k resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(163,'','100M ohm resistor ','0.5w resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(164,'','10ohm resistor ','leaded resistor ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(165,'','Led drivers ','Led Drivers ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(166,'','2.7v Zenor diode ','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(167,'4.7 ohm leaded resistor','4.7k ohm resistor','1/4w leaded resistor','Leaded','','','no',10,10,'no','no','no',10,10,10,1,1,1,1),(168,'','speakers','sond or High frequency ','','','10','yes',10,10,'yes','yes','yes',20,10,3,1,1,1,1),(169,'','USB Ethernet 10/100 Base','To connect various computer to form a local area network ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(170,'','3.3v Zenor diode ','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(171,'','3.3v diode ','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(172,'','5.6k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(173,'','Automatic changeover with current limiter(ACCL)','To limiting current ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(174,'','47k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(175,'','8.2k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(176,'','4.7 ohms resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(177,'','4.7v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(178,'','5.7v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(179,'','1 ohm/0.25w leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(180,'','5.6v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(181,'','22k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(182,'','5.1v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(183,'','7.5v diode ','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(184,'','18k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(185,'','6.2v Zenor diode ','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(186,'','10k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(187,'','12k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(188,'','6.8v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(189,'','10v diode','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(190,'','15k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(191,'','indoor','door closed or open use passward ','','indoor',' identify the parsen','yes',10,10,'yes','yes','yes',10,20,1,1,1,1,1),(192,'','33k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(193,'','8.2v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(194,'','39k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(195,'','TAB ','To use TAB applications','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(196,'','9.1v diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(197,'','15v Zenor diode','leaded diode','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(198,'','HUB ','To connect various systems ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(199,'','56k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(200,'','27v Zenor diode','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(201,'','12v Zenor diode','leaded diode ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(202,'','mouse\'s ','pointing on the screen ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(203,'','68k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(204,'','27k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(205,'','indoor','use locking system','','','10','yes',10,10,'no','no','no',10,10,10,1,1,1,1),(206,'','82k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(207,'','Adaptors 5v/2Amp','converts 230v ac to 5v/2Amp dc','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(208,'','6.8k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(209,'','1k leaded resistor','to oppose electrons','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(210,'','soldering bit box','For soldering ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(211,'','soldering station\'s small ','For soldering purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(212,'','Ac Adaptors 90W.15v-5Amp','Regulating purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(213,'','3.3V  zener diodes','rectifier','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(214,'','USB female pins','connecting purpose ','','','','no',10,10,'no','no','no',10,10,10,1,1,1,1),(215,'','3.2768 crystal oscillator','it produce oscillation s','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(216,'','steppel motar','use motar cannecation working gate','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(217,'','10pin males','connecting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(218,'','ESP ','jumper male pins','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(219,'','metal baxes','gates used','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(220,'','Push buttons','buttons','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(221,'','LM317','linear voltage regulator','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(222,'','finolex wire yellow','cannecation','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(223,'','ESP pins','To connect ESP','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(224,'','SMD PNP ','4081BE','dip switch','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(225,'','all capacitors','ckts','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(226,'','Reverse horn ','5m','','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(227,'','PCF 847(23)\'B\'','PCF','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(228,'','water level indicator','ckts','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(229,'','USB males','usb ','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(230,'','PCF 847(24)\'A\'','pcf ','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(231,'','SMD PCB','PCB ','ha ','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(232,'','Ignetion lock','security','','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(233,'','330ohms resisters','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,2,1,1),(234,'','USB females','usb','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(235,'','33k ohms resistors','flow of current','','','1206','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(236,'','4.7k ohms resistors ','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(237,'','Moc 3021','optocouples','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(238,'','180k ohms rsistors','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(239,'','680 ohms resistors','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(240,'','ULN 2803 Ic\'s','uln','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(241,'','z o wire','cannecation','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(242,'','2.2k ohms resistors','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(243,'','router','Mobile wife use router','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(244,'','IR receiver','receiver','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(245,'','5.6v zener diode asemblye','voltage regulator','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(246,'','white board marker pen','white board marker pen use','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(247,'','IR receiver tsop 173','receiver','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(248,'','IC 7402','ic','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(249,'','pens ','writing use','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(250,'','10 pin male','male pins ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(251,'','pad','writing','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(252,'','jio dongle','it provides internet','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(253,'','Ic 7474','ic','10','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(254,'','All type capacitors','capacitors ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(255,'','1k ohms resistors','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(256,'','IC7402','IC','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(257,'','zipper cover','packing use','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(258,'','IC7474','IC','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(259,'','RJ11 pins male and female','used in communication network','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(260,'','IC CD 4050','ic','ha','jts ','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(261,'','2.7k ohms resistors','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(262,'','10k ohms resistors','flow of current','','','1206 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(263,'','split push to on/off switches ','switches','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(264,'','Water level VEGA Kit','water level controlled ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(265,'','6 pin connectors','it is used for base ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(266,'','ICS 5412','IC','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(267,'','I2C Interface','ic','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(268,'','6pin female wire connectors','connecting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(269,'','RF circuit with transmitter and receiver pair ','RF Module','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(270,'','I2c PCF ','8574 niterface','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(271,'','glue sticks ','it is uesd to stick two different materialsor same','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(272,'','s111733 regulators','regulates the voltage','','','1206','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(273,'','A6 GSM module','GSM module','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(274,'','neon lamps','lighting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(275,'','big rokers','rokers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(276,'','cloth liner motor boxes','to place boxes','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(277,'','Magnetic sensors','sensoes','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(278,'','GSM','gsm','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(279,'','RJ45 couplers','pin connectors ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(280,'','relays 12v 10 a','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(281,'','Audio jack','adiao','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(282,'','plastic tape','adhesive purpose','','','','yes',100,10,'no','no','yes',10,10,10,1,1,1,1),(283,'','empty boxes','empty boxes','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(284,'','wire connectors','wire connectors ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(285,'','12v 16a  relays','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(286,'','Mikes condenser micro phone','mikes','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(287,'','12v ,30a relays','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(288,'','female jumpers','female jumpers ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(289,'','RFID Readers','card readers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(290,'','Audio amplifiers','amplifiers','ha','10','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(291,'','2 pin cables','2 pin cables ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(292,'','12v ,10 A relay transparrent','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(293,'','small locks','locks','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(294,'','ic bases 14','ic bases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(295,'','cello type tape','cannecation use','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(296,'','5v,10A  relay ','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(297,'','12 module frames','12 module frames','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(298,'','security alarm ','security alarm ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(299,'','8&6pins strips','strips','ha','jts ','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(300,'','LM1117 regulators','to varying the voltage(tested) ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(301,'','Relays ','relay','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(302,'','wood pices ','wood pices','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(303,'','12v ,30A dc relay','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(304,'','yonaha mixer ','mixer','10','10','10','yes',10,10,'no','yes','yes',10,10,10,1,1,1,1),(305,'','big rockers','big rockers ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(306,'','LED','led','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(307,'','car drive inductor ','inductor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(308,'','12v ,7A relay','it trigs circuit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(309,'','tip 32c','tip 32c','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(310,'','sticker tags','sticker tags','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(311,'','sticker tags','sticker tags','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(312,'','wire cables','wire cables ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(313,'','diodes','diodes','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(314,'','insulation tape','it iused to insulate','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(315,'','tip 31c','tip 31c','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(316,'','audio video jacks','jacks','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(317,'','MICSET ','MICSET ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(318,'','tip 36c','tip 36c','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(319,'','relays cotton box ','to place relays','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(320,'','10 pin connectors ','10 pin connectors ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(321,'','tip 42c','tip 42c','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(322,'','Mike set cable ','Mike set cable ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(323,'','smoke detector ','security ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(324,'','pots/presets 1k','pots/presets 1k','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(325,'','pots/presets 2k','pots/presets 2k','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(326,'','3pin plugs','connecting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(327,'','papertypeplaster','use table or board','','10','10','yes',10,10,'yes','yes','yes',10,10,100,1,1,1,1),(328,'','current sensor ','sensing the current ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(329,'','pots/presets 10k','pots/presets 10k','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(330,'','door lock ','door lick','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(331,'','gas leak detector ','security ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(332,'','pots/presets 20k','pots/presets 20k','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(333,'','ductlietape','cannecation','','','10','yes',10,10,'yes','yes','yes',10,10,100,1,1,1,1),(334,'','pots/presets 100k','pots/presets 100k','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(335,'','RF ID module remote PCB','RF ID module remote PCB','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(336,'','pots/presets 5k ldrs','pots/presets 5k ldrs','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(337,'','motor starter ','starting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(338,'','two way plaster','use board cannecation','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(339,'','pots/presets o led','pots/presets o led','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(340,'','cd 4060be','cd 4060be','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(341,'','out door','lacking system use Mobil operating ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(342,'','lugs','lugs','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(343,'','pots/presets 4 pin-15','pots/presets 4 pin-15','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(344,'','biometric ','biometric ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(345,'','10 a big fuse 250v','10 a big fuse 250v','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(346,'','74L547n','74L547n','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(347,'','BNC pins','connecting purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(348,'','PERT home automation ','home automation ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(349,'','4411','4411','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(350,'','dimmer circuit ','dimmer circuit ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(351,'','10 a fuse (a, b) ','10 a fuse (a, b) ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(352,'','security systems ','security ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(353,'','4040','4040','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(354,'','ic bases 16','ic bases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(355,'','5 a fuse ','5 a fuse ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(356,'','slide gate remots','controlling purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(357,'','adopter UK plugs','plugs','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(358,'','mouses ','mouses ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(359,'','Lm358','regulates the voltage','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(360,'','ic bases 18','ic bases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(361,'','photo cells ','security purpose ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(362,'','Magnets','magnet','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(363,'','7809 Regulators ','regulates power ','','JTS','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(364,'','Lm 7815','regulates the voltage','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(365,'','ic bases 20','ic bases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(366,'','NSB 455j fuses 1 a','nsb 455j fuses 1 a','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(367,'','3d over cable ','3d over cable','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(368,'','Lm7806','regulates the voltage','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(369,'','ic bases 8','ic bases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(370,'','blostor','blostor','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(371,'','75A4CRM IC','75A4CRM IC','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(372,'','nsb 455j fuses 2a','nsb 455j fuses 2a','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(373,'','ic bases 6','ic bases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(374,'','Lm7915 regulator','regulates the voltages','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(375,'','radio shack ','radio shack ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(376,'','66AM8 IC','66AM8 IC','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(377,'','nsb 455j fuses 3a','nsb 455j fuses 3a','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(378,'','Bt 136','Bt 136','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(379,'','ESP (46)shutter alarm chennal','shutter alarm','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(380,'','PCF 8574','PCF 8574','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(381,'','nsb 455j fuses 6a','nsb 455j fuses 6a','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(382,'','Bd 677','Bd 677','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(383,'','Bu 505','Bu 505','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(384,'','range pi boards','boards ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(385,'','nsb 455j fuses small 10a','nsb 455j fuses small 10a','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(386,'','Bc548','Bc548','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(387,'','ESP jumper pins','student board','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(388,'','74138','74138','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(389,'','Bc558','Bc558','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(390,'','pq736AB','pq736AB','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(391,'','pendrives','pendrives ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(392,'','2222A','2222A','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(393,'','irf 3205','irf 3205','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(394,'','HDMA cable','HDMA cable','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(395,'','Heat sinks','heat sink','','JTS','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(396,'','Bs170','Bs170','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(397,'','lm 1117','lm 1117','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(398,'','gsm modules','gsm modules','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(399,'','lm 356','lm 356','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(400,'','cpfe 9918','cpfe 9918','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(401,'','power unit components','power unit','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(402,'','Feed back circuits ','ckts','','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(403,'','2n4918','2n4918','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(404,'','sim cards','sim cards','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(405,'','USB male and female - ale pins','USB male and female -ale pins ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(406,'','pn2907a','pn2907a','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(407,'','8550','8550','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(408,'','ic 7473','ic 7473','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(409,'','sata cables','sata cables','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(410,'','JTS printer 03','printer','','JST','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(411,'','s8050','s8050','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(412,'','memory cards','memory cards','','','','yes',19,10,'yes','yes','yes',10,10,10,1,1,1,1),(413,'','uln 2005','uln 2005','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(414,'','Rk Sir components ','components ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(415,'','c33740','c33740','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(416,'','ESP jumper male (small pins)','student board','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(417,'','bc pin round mount ','bc pin round mount ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(418,'','Ir blaster extenders, batteries, RTC','ir blaster ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(419,'','Lm393p regulator','regulates the voltage','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(420,'','rockers small ','rockers small ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(421,'','Twezzers','Twezzers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(422,'','CD 40106 BE','cd','ha','jts ','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(423,'','gps trakers','gps trakers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(424,'','2.2ohms','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(425,'','2n5551 transistors','transistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(426,'','unusefull coponemt box','nor working components','','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(427,'','10k ','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(428,'','3.3k','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(429,'','TSop 1738','Tsop 1738','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(430,'','gps adaptors','gps adaptors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(431,'','882-y transistor','transistor','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(432,'','Athyc 1504','Athyc 1504','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(433,'','330ohms ','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(434,'','HI-LINK 230-3.3V','HI-LINK 230-3.3V','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(435,'','ic 747','ic','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(436,'','GSM circuit modules','GSM circuit modules','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(437,'','15ohms ','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(438,'','GPS circuit module ','GPS circuit module ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(439,'','key pads','key pads','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(440,'','VJ cables','VJ cables','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(441,'','1k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(442,'','56k','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(443,'','330 ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(444,'','75ER ','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(445,'','12V 1-channel Relay','12V 1-channel Relay','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(446,'','4.7k ','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(447,'','33k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(448,'','220 ohms','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(449,'','5V 1-Chanel Relay','5V 1-Chanel Relay','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(450,'','22k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(451,'','26k','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(452,'','4.7k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(453,'','port VGA switch ','port VGA switch ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(454,'','880ohms','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(455,'','390ohms','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(456,'','2.7k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(457,'','15 watts','lights ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(458,'','560 ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(459,'','rj 45 sockets','rj 45 sokets','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(460,'','RE Rx-Tx Reader','RE Rx-Tx Reader','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(461,'','68k','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(462,'','10k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(463,'','1.5k ','resistor ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(464,'','ic 7400','ic','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(465,'','56k ohms resistor','flow of current','','','0603 smd','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(466,'','4N35 opto','opto ','','','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(467,'','7408','7408','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(468,'','SFH 615A2','SFH 615A2','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(469,'','BA5406','BA5406','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(470,'','PT2262','PT2262','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(471,'','PT2272','PT2272','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(472,'','NE556','NE556','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(473,'','8432GU','8432GU','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(474,'','CD4050','CD4050','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(475,'','CD4017','CD4017','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(476,'','B8641','B8641','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(477,'','SN74L847N','SN74L847N','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(478,'','IQL74','IQL74','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(479,'','LM339N','LM339N','','','','no',10,10,'no','no','no',10,10,10,1,1,1,1),(480,'','HEF 4071BP','HEF 4071BP','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(481,'','IC7400','IC7400','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(482,'','MC74HC574AN','MC74HC574AN','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(483,'','555 IC SOT23 package','555 IC SOT23 package','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(484,'','LM324N','LM324N','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(485,'','UM3561','UM3561','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(486,'','PCF8574AN','PCF8574AN','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(487,'','OP-AMP741','OP-AMP741','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(488,'','LA4445','LA4445','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(489,'','PIC 16F M/C','PIC 16F M/C','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(490,'','DC Pins Mount','A pin mounted in the socket makes contact with a second internal contact','','','','yes',10,10,'no','no','no',8,50,100,1,1,1,1),(491,'','DC Pins Round','DC Pins Round','','','','yes',10,10,'no','no','no',10,50,100,1,1,1,1),(492,'','soldering flux','soldering flux','','','','yes',10,10,'no','no','no',10,50,100,1,1,1,1),(493,'','lock','lock','','','','yes',10,10,'no','no','no',10,50,100,1,1,1,1),(494,'','Female&Male plugs','plugs','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(495,'','2pinsockets','socket','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(496,'','3pinfemale','coneeter','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(497,'','Dummy switchs','switch','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(498,'','2way switchs','switchs','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(499,'','1way switchs','(Legrand)switch','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(500,'','2wayswitchs','switchs','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(501,'','let bj8','let bj8','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(502,'','8 pin male connectors','connector','','JTS','10','yes',10,10,'yes','yes','yes',10,10,102,1,1,1,1),(503,'','push batton screw','push batton screw','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(504,'','soldring leads','soldring leads','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(505,'','Batter holders','holder','ha','jta','10','yes',10,10,'yes','yes','yes',10,10,50,1,1,1,1),(506,'','door small clamps','door small clamps','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(507,'','door big clamps','door big clamps','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(508,'','8 pin female connectors','connect','','JTS','10','yes',10,10,'yes','yes','yes',10,10,28,1,1,1,1),(509,'','10 pin female connectors','connector','','JTS','10','yes',10,10,'yes','yes','yes',10,10,30,1,1,1,1),(510,'','multi parpose carry cases','multi parpose carry cases','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(511,'','10 pin male connectors','connector ','','JTS','10','yes',10,10,'yes','yes','yes',10,10,102,1,1,1,1),(512,'','locks','locks','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(513,'','LED\'s','led','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(514,'','gold medal','gold medal','','JTS','10','yes',10,10,'yes','yes','yes',10,10,1,1,1,1,1),(515,'','12V/7A H','12v.7A','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(516,'','battery connectors','battery connectors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(517,'','smart passive intrared detectors','detector ','','JTS','10','yes',10,10,'yes','yes','yes',10,10,8,1,1,1,1),(518,'','patch cables','patch cables','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(519,'','2switch Frame','boards','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(520,'','usb connectors ','usb connectors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(521,'','Servo motors','motor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,90,1,1,1,1),(522,'','ardino cables (black)','ardino cables (black)','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(523,'','DC pins male','pins','','JTS','10','yes',10,10,'yes','yes','yes',10,10,280,1,1,1,1),(524,'','wire strippers','strippers','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,5,1,1,1,1),(525,'','ardino cables (blue)','ardino cables (blue)','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(526,'','screws big','screws big','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(527,'','Female 2 pins big','pins','','JTS','10','yes',10,10,'yes','yes','yes',10,10,610,1,1,1,1),(528,'','scrwes small','scrwes small','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(529,'','wire nippers','wire cotting','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,11,1,1,1,1),(530,'','Female 2 pins small ','pins','','JTS','10','yes',10,10,'yes','yes','yes',10,10,120,1,1,1,1),(531,'','2pis male small','2pis male small','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(532,'','solinoids','solinoids','','JTS','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(533,'','2pin male big','2pin male big','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(534,'','DC motors big','motor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,2,1,1,1,1),(535,'','4pin male','4pin male','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(536,'','RJ45 couputer socket','socket','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,43,1,1,1,1),(537,'','4 pin female connectors','connector','','JTS','10','yes',10,10,'yes','yes','yes',10,10,486,1,1,1,1),(538,'','single stane wire (banches)','single stane wire (banches)','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(539,'','speaker connectors ','speaker connectors ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(540,'','6 pin female connectors ','connector','','JTS','10','yes',10,10,'yes','yes','yes',10,10,30,1,1,1,1),(541,'','RF module','empty','ha','jts','10','yes',10,0,'yes','yes','yes',10,10,7,1,1,1,1),(542,'','heate smks','heate smks','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(543,'','bread board ','ckt base','','JTS','10','yes',10,10,'yes','yes','yes',10,10,20,1,1,1,1),(544,'','lead acid batterys ','lead acid batterys ','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(545,'','esp (with out pins)','esp (with out pins)','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(546,'','red leds','red leds','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(547,'','1module switch frame','switch','gold meday','jts','10','yes',10,10,'yes','yes','yes',10,10,3,1,1,1,1),(548,'','DC pin round','supply','','JTS','10','yes',10,10,'yes','yes','yes',10,10,500,1,1,1,1),(549,'','10e/5w (resistors)','10e/5w (resistors)','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(550,'','panic buttons','button','','JTS','10','yes',10,10,'yes','yes','yes',10,10,216,1,1,1,1),(551,'','2k2/10w resistors','2k2/10w resistors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(552,'','aurdino boards','aurdino boards','','','','yes',10,10,'yes','yes','yes',19,10,10,1,1,1,1),(553,'','MCB\'s','3A , 40A','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,2,1,1,1,1),(554,'','15 v batteries','charging purpose','','JTS','10','yes',10,10,'yes','yes','yes',10,10,34,1,1,1,1),(555,'','ir transmet recevers','ir transmet recevers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(556,'','9 v batteries','charging purpose','','JTS','10','yes',10,10,'yes','yes','yes',10,10,57,1,1,1,1),(557,'','buzzers','buzzers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(558,'','mq3','mq3','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(559,'','12 v mobile batteries','charging purpose','','JTS','10','yes',10,10,'yes','yes','yes',10,10,1,1,1,1,1),(560,'','temparature lm35pz sensors','temparature lm35pz sensors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(561,'','heat sinks big ','ckt protection','','JTS','10','yes',10,10,'yes','yes','yes',10,10,100,1,1,1,1),(562,'','Cable testes','cable testes','RJ45+RJ11','jts','10','yes',10,10,'yes','yes','yes',10,10,2,1,1,1,1),(563,'','heat sinks small','ckt protection','','JTS','10','yes',10,10,'yes','yes','yes',10,10,69,1,1,1,1),(564,'','Esps with code','student board','','JTS','10','yes',10,10,'yes','yes','yes',10,10,20,1,1,1,1),(565,'','Esps without codes','student board','','JTS','10','yes',10,10,'yes','yes','yes',10,10,83,1,1,1,1),(566,'','male esp jampers','male esp jampers','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(567,'','moiture sensores','moiture sensores','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(568,'','RJ45 pins','pin','','JTS','10','yes',10,10,'yes','yes','yes',10,10,75,1,1,1,1),(569,'','rain sensors','rain sensors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(570,'','RJ45 sockets','socket','','JTS','10','yes',10,10,'yes','yes','yes',10,10,57,1,1,1,1),(571,'','small l shape clamps','small l shape clamps','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(572,'','current sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,95,1,1,1,1),(573,'','Bullte normal camers','camers','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,15,1,1,1,1),(574,'','100e/5w resistors','100e/5w resistors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(575,'','soldering silicon past','soldring purpose','','JTS','10','yes',10,10,'yes','yes','yes',10,10,20,1,1,1,1),(576,'','Bullte I.P camerd','camers','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,5,1,1,1,1),(577,'','220e/5w resistors','220e/5w resistors','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(578,'','soldering leds','soldering purpose','','JTS','10','yes',10,10,'yes','yes','yes',10,10,7,1,1,1,1),(579,'','vga pins','vga pins','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(580,'','IC sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,25,1,1,1,1),(581,'','Doom wormay','doom wormay','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,1,1,1,1,1),(582,'','Ultra sonic sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,12,1,1,1,1),(583,'','soldering flex','soldering flex','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(584,'','motion sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,26,1,1,1,1),(585,'','Havlls 12v LED\'s','led','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,2,1,1,1,1),(586,'','Light sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,6,1,1,1,1),(587,'','Gas sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,24,1,1,1,1),(588,'','video door phones','phone\'s','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,6,1,1,1,1),(589,'','Temperature sensors','sensor','','JTS','10','yes',10,10,'yes','yes','yes',10,10,15,1,1,1,1),(590,'','4.7mf','4.7mf','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(591,'','3300mf/25v','3300mf/25v','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(592,'','2200mf/25v','2200mf/25v','','','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(593,'','IR Blastes','broad link','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,12,1,1,1,1),(594,'','Router\'s box','wi-fi router','DIR-600M','Dlink','','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(595,'','IR Blaster','broad link','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,12,1,1,1,1),(596,'','RFID','signalchannel','','jts','03','yes',20,50,'no','no','no',20,20,50,1,1,1,1),(597,'','Greenled.s','ledlights','','jts','1115','no',50,1120,'no','no','yes',30,203,100,1,1,1,1),(598,'','Small.Lugs','Lugs','','jts','2037','yes',200,400,'no','no','no',100,150,400,1,1,1,1),(599,'','motion sensor big type H','sensor','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,17,1,1,1,1),(600,'','door sensor','sensor','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,10,1,1,1,1),(601,'','curtain motor boxes','motor','ha','jts','10','yes',10,10,'yes','yes','yes',10,10,30,1,1,1,1),(602,'','pushbuttons,small','4 channel buttons','','jts','','no',200,180,'no','no','no',150,200,200,1,1,1,1),(603,'','pushbottons,big','4 çhannel','','jts','200','no',200,140,'no','no','no',50,60,200,1,1,1,1);
/*!40000 ALTER TABLE `inv_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_quantity`
--

DROP TABLE IF EXISTS `inv_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_quantity` (
  `quantityId` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `locationId_id` int(11) DEFAULT NULL,
  `positionId_id` int(11) NOT NULL,
  `productId_id` int(11) NOT NULL,
  `warehouseId_id` int(11),
  PRIMARY KEY (`quantityId`),
  KEY `inv_quantity_locationId_id_ffc215c2_fk_inv_location_id` (`locationId_id`),
  KEY `inv_quantity_positionId_id_bcce642a_fk_inv_position_id` (`positionId_id`),
  KEY `inv_quantity_productId_id_bb1e4054_fk_inv_products_id` (`productId_id`),
  KEY `inv_quantity_warehouseId_id_7485c128_fk_inv_warehouse_id` (`warehouseId_id`),
  CONSTRAINT `inv_quantity_locationId_id_ffc215c2_fk_inv_location_id` FOREIGN KEY (`locationId_id`) REFERENCES `inv_location` (`id`),
  CONSTRAINT `inv_quantity_positionId_id_bcce642a_fk_inv_position_id` FOREIGN KEY (`positionId_id`) REFERENCES `inv_position` (`id`),
  CONSTRAINT `inv_quantity_productId_id_bb1e4054_fk_inv_products_id` FOREIGN KEY (`productId_id`) REFERENCES `inv_products` (`id`),
  CONSTRAINT `inv_quantity_warehouseId_id_7485c128_fk_inv_warehouse_id` FOREIGN KEY (`warehouseId_id`) REFERENCES `inv_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_quantity`
--

LOCK TABLES `inv_quantity` WRITE;
/*!40000 ALTER TABLE `inv_quantity` DISABLE KEYS */;
INSERT INTO `inv_quantity` VALUES (1,10,NULL,1,1,NULL),(2,100,NULL,7,24,NULL),(3,80,NULL,6,23,NULL),(4,85,NULL,15,36,NULL),(5,80,NULL,16,37,NULL),(6,80,NULL,17,38,NULL),(7,75,NULL,20,42,NULL),(8,75,NULL,22,44,NULL),(9,75,NULL,23,45,NULL),(10,70,NULL,24,47,NULL),(11,75,NULL,25,49,NULL),(12,70,NULL,39,50,NULL),(13,70,NULL,42,51,NULL),(14,75,NULL,44,53,NULL),(15,75,NULL,48,56,NULL),(16,95,NULL,49,57,NULL),(17,85,NULL,51,58,NULL),(18,11,NULL,8,25,NULL),(19,72,NULL,53,59,NULL),(20,83,NULL,56,61,NULL),(21,120,NULL,59,62,NULL),(22,28,NULL,8,25,NULL),(23,28,NULL,8,25,NULL),(24,28,NULL,8,25,NULL),(25,90,NULL,64,64,NULL),(26,85,NULL,67,65,NULL),(27,12,NULL,14,67,NULL),(28,68,NULL,76,68,NULL),(29,82,NULL,80,70,NULL),(30,200,NULL,83,71,NULL),(31,33,NULL,58,107,NULL),(32,75,NULL,88,143,NULL),(33,70,NULL,89,261,NULL),(34,80,NULL,91,153,NULL),(35,18,NULL,66,135,NULL),(36,35,NULL,68,138,NULL),(37,15,NULL,60,113,NULL),(38,465,NULL,53,156,NULL),(39,65,NULL,73,148,NULL),(40,75,NULL,96,156,NULL),(41,21,NULL,75,379,NULL),(42,85,NULL,99,157,NULL),(43,100,NULL,104,167,NULL),(44,75,NULL,107,203,NULL),(45,70,NULL,112,172,NULL),(46,2,NULL,372,495,NULL),(47,22,NULL,373,498,NULL),(48,11,NULL,508,496,NULL),(49,20,NULL,509,497,NULL),(50,50,NULL,375,505,NULL),(51,16,NULL,374,498,NULL),(52,3,NULL,376,515,NULL),(53,5,NULL,377,524,NULL),(54,43,NULL,378,570,NULL),(55,11,NULL,527,529,NULL),(56,6,NULL,390,588,NULL),(57,80,NULL,117,175,NULL),(58,60,NULL,180,181,NULL),(59,4,NULL,381,165,NULL),(60,75,NULL,182,184,NULL),(61,100,NULL,185,186,NULL),(62,2,NULL,380,562,NULL),(63,80,NULL,187,187,NULL),(64,80,NULL,188,190,NULL),(65,80,NULL,190,192,NULL),(66,80,NULL,192,194,NULL),(67,65,NULL,167,174,NULL),(68,17,NULL,387,599,NULL);
/*!40000 ALTER TABLE `inv_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_status`
--

DROP TABLE IF EXISTS `inv_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_status`
--

LOCK TABLES `inv_status` WRITE;
/*!40000 ALTER TABLE `inv_status` DISABLE KEYS */;
INSERT INTO `inv_status` VALUES (1,'active'),(2,'inactive'),(3,'rejected'),(4,'refunded'),(5,'test'),(6,'Not Issued'),(7,'Partially Issued'),(8,'Issued'),(9,'Not Ordered'),(10,'Ordered'),(11,'received'),(12,'Order complete');
/*!40000 ALTER TABLE `inv_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_warehouse`
--

DROP TABLE IF EXISTS `inv_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouseName` varchar(15) NOT NULL,
  `locationId_id` int(11) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_warehouse_locationId_id_aef589f6_fk_inv_location_id` (`locationId_id`),
  KEY `inv_warehouse_statusId_id_79f1bf60_fk_inv_status_id` (`statusId_id`),
  CONSTRAINT `inv_warehouse_locationId_id_aef589f6_fk_inv_location_id` FOREIGN KEY (`locationId_id`) REFERENCES `inv_location` (`id`),
  CONSTRAINT `inv_warehouse_statusId_id_79f1bf60_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_warehouse`
--

LOCK TABLES `inv_warehouse` WRITE;
/*!40000 ALTER TABLE `inv_warehouse` DISABLE KEYS */;
INSERT INTO `inv_warehouse` VALUES (1,'jts1',1,1);
/*!40000 ALTER TABLE `inv_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jts_departments`
--

DROP TABLE IF EXISTS `jts_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jts_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(30) NOT NULL,
  `departmentHead_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jts_departments_departmentHead_id_8d5cc55c_fk_jts_employees_id` (`departmentHead_id`),
  CONSTRAINT `jts_departments_departmentHead_id_8d5cc55c_fk_jts_employees_id` FOREIGN KEY (`departmentHead_id`) REFERENCES `jts_employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jts_departments`
--

LOCK TABLES `jts_departments` WRITE;
/*!40000 ALTER TABLE `jts_departments` DISABLE KEYS */;
INSERT INTO `jts_departments` VALUES (1,'stores',4),(2,'R&D',1),(3,'admin',2),(4,'production',1),(5,'Implementation',1),(6,'Purchase',1);
/*!40000 ALTER TABLE `jts_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jts_employees`
--

DROP TABLE IF EXISTS `jts_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jts_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `emailId` varchar(30) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `bloodGroup` varchar(3) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `dateOfJoining` date DEFAULT NULL,
  `dateOfExit` date DEFAULT NULL,
  `departmentId` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `managerId_id` int(11) DEFAULT NULL,
  `reportingHr_id` int(11) DEFAULT NULL,
  `workLocation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jts_employees_managerId_id_cd1ab273_fk_jts_employees_id` (`managerId_id`),
  KEY `jts_employees_reportingHr_id_4ad180e7_fk_jts_employees_id` (`reportingHr_id`),
  KEY `jts_employees_workLocation_id_7c791a00_fk_emp_location_id` (`workLocation_id`),
  CONSTRAINT `jts_employees_managerId_id_cd1ab273_fk_jts_employees_id` FOREIGN KEY (`managerId_id`) REFERENCES `jts_employees` (`id`),
  CONSTRAINT `jts_employees_reportingHr_id_4ad180e7_fk_jts_employees_id` FOREIGN KEY (`reportingHr_id`) REFERENCES `jts_employees` (`id`),
  CONSTRAINT `jts_employees_workLocation_id_7c791a00_fk_emp_location_id` FOREIGN KEY (`workLocation_id`) REFERENCES `emp_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jts_employees`
--

LOCK TABLES `jts_employees` WRITE;
/*!40000 ALTER TABLE `jts_employees` DISABLE KEYS */;
INSERT INTO `jts_employees` VALUES (1,'johneda','johneda','john.eda@jochebedtech.com','$5$rounds=535000$mE7N0Yczwffgfuud$6/2/sAA58A4J9OVvTiL56UrzjIw4Fl0e/fwjKVFALs3','male','B+','1980-01-01','2018-02-16',NULL,'1','Erragadda',NULL,NULL,1),(2,'ramya','ramya','ramya.hr@jochebedtech.com','$5$rounds=535000$wIWq2LsgJzSUeotR$.4FqvTzTnY6NSDKjrT38UhM1CJBv..Il916/RAy6B4D','female','B+','1980-01-01','2018-02-16',NULL,'1','Erragadda',1,NULL,1),(3,'chanti','chanti','chanti@jochebedtech.com','$5$rounds=535000$9XPQo5tBfQ3K2P30$OL4GuJDo7cEVde9nw22pVrGcLVFrVhyT5toJ3LXUdEA','male','O+','1980-01-01','2018-02-16',NULL,'1','Erragadda',1,2,1),(4,'davidraju','davidraju','davidraju@jochebedtech.com','$5$rounds=535000$060sMDvAsqf2iAS0$FzHv1hQ8Gk08j7NoEIVQaJTg8bgy6JIFXtq0Vs2WFVB','male','O+','1980-01-01','2018-02-16',NULL,'1','Erragadda',1,2,1),(5,'admin','admin','admin@jochebedtech.com','$5$rounds=535000$y0b1bAK24WFiU67T$e4frKwh/KLIPuHOsocdQUymjuw0C/6Uao.Dc7dGf5AB','male','O+','1980-01-01','2018-02-16',NULL,'1','Erragadda',1,2,1);
/*!40000 ALTER TABLE `jts_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jts_products`
--

DROP TABLE IF EXISTS `jts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jts_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jts_products`
--

LOCK TABLES `jts_products` WRITE;
/*!40000 ALTER TABLE `jts_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `jts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseQuantity` int(11) NOT NULL,
  `jts_products_id` int(11) NOT NULL,
  `productId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `production_jts_products_id_3f2ed008_fk_jts_products_id` (`jts_products_id`),
  KEY `production_productId_id_d160760f_fk_inv_products_id` (`productId_id`),
  CONSTRAINT `production_jts_products_id_3f2ed008_fk_jts_products_id` FOREIGN KEY (`jts_products_id`) REFERENCES `jts_products` (`id`),
  CONSTRAINT `production_productId_id_d160760f_fk_inv_products_id` FOREIGN KEY (`productId_id`) REFERENCES `inv_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantityrequested` int(11) NOT NULL,
  `quantityreceived` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `purchaseorderId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_details_productId_ed3bc827_fk_inv_products_id` (`productId`),
  KEY `purchase_details_purchaseorderId_e7433add_fk_purchase_` (`purchaseorderId`),
  KEY `purchase_details_statusId_42158684_fk_inv_status_id` (`statusId`),
  CONSTRAINT `purchase_details_productId_ed3bc827_fk_inv_products_id` FOREIGN KEY (`productId`) REFERENCES `inv_products` (`id`),
  CONSTRAINT `purchase_details_purchaseorderId_e7433add_fk_purchase_` FOREIGN KEY (`purchaseorderId`) REFERENCES `purchase_requisition` (`orderId`),
  CONSTRAINT `purchase_details_statusId_42158684_fk_inv_status_id` FOREIGN KEY (`statusId`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_details`
--

LOCK TABLES `purchase_details` WRITE;
/*!40000 ALTER TABLE `purchase_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_requisition`
--

DROP TABLE IF EXISTS `purchase_requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_requisition` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `requestedDate` date DEFAULT NULL,
  `dueDate` date NOT NULL,
  `sessionId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `purchase_requisition_sessionId_cce9a3b7_fk_session_h` (`sessionId`),
  KEY `purchase_requisition_statusId_15938568_fk_inv_status_id` (`statusId`),
  CONSTRAINT `purchase_requisition_sessionId_cce9a3b7_fk_session_h` FOREIGN KEY (`sessionId`) REFERENCES `session_history` (`sessionId`),
  CONSTRAINT `purchase_requisition_statusId_15938568_fk_inv_status_id` FOREIGN KEY (`statusId`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_requisition`
--

LOCK TABLES `purchase_requisition` WRITE;
/*!40000 ALTER TABLE `purchase_requisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_requisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition`
--

DROP TABLE IF EXISTS `requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requisitionDate` date DEFAULT NULL,
  `duedate` date NOT NULL,
  `productCategory_id` int(11) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  `userID_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requisition_productCategory_id_18909e90_fk_inv_mater` (`productCategory_id`),
  KEY `requisition_statusId_id_32ac3b36_fk_inv_status_id` (`statusId_id`),
  KEY `requisition_userID_id_35efa324_fk_jts_employees_id` (`userID_id`),
  CONSTRAINT `requisition_productCategory_id_18909e90_fk_inv_mater` FOREIGN KEY (`productCategory_id`) REFERENCES `inv_materialCategory` (`id`),
  CONSTRAINT `requisition_statusId_id_32ac3b36_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`),
  CONSTRAINT `requisition_userID_id_35efa324_fk_jts_employees_id` FOREIGN KEY (`userID_id`) REFERENCES `jts_employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition`
--

LOCK TABLES `requisition` WRITE;
/*!40000 ALTER TABLE `requisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_details`
--

DROP TABLE IF EXISTS `requisition_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantityRequested` int(11) NOT NULL,
  `quantityIssued` int(11) NOT NULL,
  `productId_id` int(11) NOT NULL,
  `requisitionId_id` int(11) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requisition_details_productId_id_94c0521b_fk_inv_products_id` (`productId_id`),
  KEY `requisition_details_requisitionId_id_3c742733_fk_requisition_id` (`requisitionId_id`),
  KEY `requisition_details_statusId_id_f965bbef_fk_inv_status_id` (`statusId_id`),
  CONSTRAINT `requisition_details_productId_id_94c0521b_fk_inv_products_id` FOREIGN KEY (`productId_id`) REFERENCES `inv_products` (`id`),
  CONSTRAINT `requisition_details_requisitionId_id_3c742733_fk_requisition_id` FOREIGN KEY (`requisitionId_id`) REFERENCES `requisition` (`id`),
  CONSTRAINT `requisition_details_statusId_id_f965bbef_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_details`
--

LOCK TABLES `requisition_details` WRITE;
/*!40000 ALTER TABLE `requisition_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_history`
--

DROP TABLE IF EXISTS `session_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_history` (
  `sessionId` int(11) NOT NULL AUTO_INCREMENT,
  `loginTime` datetime(6) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`sessionId`),
  KEY `session_history_userId_0704baba_fk_jts_employees_id` (`userId`),
  CONSTRAINT `session_history_userId_0704baba_fk_jts_employees_id` FOREIGN KEY (`userId`) REFERENCES `jts_employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_history`
--

LOCK TABLES `session_history` WRITE;
/*!40000 ALTER TABLE `session_history` DISABLE KEYS */;
INSERT INTO `session_history` VALUES (1,'2018-03-02 17:02:38.000000',5),(2,'2018-03-02 18:01:42.000000',5),(3,'2018-03-02 18:03:29.000000',1),(4,'2018-03-02 18:03:51.000000',4),(5,'2018-03-02 18:08:15.000000',3),(6,'2018-03-02 18:11:06.000000',3),(7,'2018-03-02 18:28:15.000000',3),(8,'2018-03-02 18:29:05.000000',3),(9,'2018-03-02 18:33:46.000000',3),(10,'2018-03-02 18:33:47.000000',3),(11,'2018-03-02 18:36:43.000000',3),(12,'2018-03-02 18:43:41.000000',3),(13,'2018-03-02 18:48:11.000000',4),(14,'2018-03-02 18:52:41.000000',3),(15,'2018-03-02 18:58:18.000000',3),(16,'2018-03-02 18:58:50.000000',3),(17,'2018-03-02 18:58:53.000000',3),(18,'2018-03-02 19:00:30.000000',3),(19,'2018-03-02 19:16:13.000000',3),(20,'2018-03-02 19:24:15.000000',3),(21,'2018-03-05 11:22:23.000000',3),(22,'2018-03-05 11:25:19.000000',3),(23,'2018-03-05 11:39:25.000000',3),(24,'2018-03-05 11:41:26.000000',3),(25,'2018-03-05 11:42:03.000000',3),(26,'2018-03-05 11:52:48.000000',3),(27,'2018-03-05 11:54:38.000000',3),(28,'2018-03-05 12:38:06.000000',3),(29,'2018-03-05 12:39:12.000000',3),(30,'2018-03-05 12:41:21.000000',3),(31,'2018-03-05 12:41:33.000000',3),(32,'2018-03-05 12:46:07.000000',3),(33,'2018-03-05 12:47:13.000000',3),(34,'2018-03-05 12:49:58.000000',3),(35,'2018-03-05 12:53:59.000000',3),(36,'2018-03-05 12:54:36.000000',3),(37,'2018-03-05 12:55:45.000000',3),(38,'2018-03-05 12:55:45.000000',3),(39,'2018-03-05 12:55:46.000000',3),(40,'2018-03-05 12:55:49.000000',3),(41,'2018-03-05 12:55:49.000000',3),(42,'2018-03-05 12:55:50.000000',3),(43,'2018-03-05 12:55:54.000000',3),(44,'2018-03-05 12:55:54.000000',3),(45,'2018-03-05 12:56:56.000000',3),(46,'2018-03-05 12:58:44.000000',3),(47,'2018-03-05 13:02:27.000000',3),(48,'2018-03-05 13:07:02.000000',3),(49,'2018-03-05 13:07:48.000000',3),(50,'2018-03-05 13:20:59.000000',3),(51,'2018-03-05 13:21:00.000000',3),(52,'2018-03-05 13:21:00.000000',3),(53,'2018-03-05 13:21:00.000000',3),(54,'2018-03-05 13:21:00.000000',3),(55,'2018-03-05 13:21:01.000000',3),(56,'2018-03-05 13:29:36.000000',3),(57,'2018-03-05 14:02:56.000000',3),(58,'2018-03-05 14:04:05.000000',3),(59,'2018-03-05 14:04:48.000000',3),(60,'2018-03-05 14:16:24.000000',3),(61,'2018-03-05 14:22:50.000000',3),(62,'2018-03-05 14:56:24.000000',3),(63,'2018-03-05 15:11:01.000000',3),(64,'2018-03-05 15:21:12.000000',3),(65,'2018-03-05 15:22:16.000000',3),(66,'2018-03-05 15:37:58.000000',3),(67,'2018-03-05 15:38:01.000000',3),(68,'2018-03-05 15:43:22.000000',3),(69,'2018-03-05 15:59:57.000000',3),(70,'2018-03-05 16:00:30.000000',4),(71,'2018-03-05 16:11:33.000000',3),(72,'2018-03-05 17:01:10.000000',3),(73,'2018-03-05 17:29:30.000000',3),(74,'2018-03-05 17:29:30.000000',3),(75,'2018-03-05 17:33:26.000000',3),(76,'2018-03-05 18:19:19.000000',3),(77,'2018-03-05 18:19:19.000000',3),(78,'2018-03-05 18:20:13.000000',3),(79,'2018-03-05 18:20:14.000000',3),(80,'2018-03-05 18:20:14.000000',3),(81,'2018-03-05 18:20:14.000000',3),(82,'2018-03-05 18:20:15.000000',3),(83,'2018-03-05 18:53:10.000000',3),(84,'2018-03-05 19:19:35.000000',3),(85,'2018-03-05 19:31:45.000000',3),(86,'2018-03-05 19:38:28.000000',3),(87,'2018-03-06 11:43:59.000000',3),(88,'2018-03-06 11:44:13.000000',3),(89,'2018-03-06 11:44:27.000000',4),(90,'2018-03-06 11:45:26.000000',3),(91,'2018-03-06 11:55:24.000000',3),(92,'2018-03-06 11:56:35.000000',4),(93,'2018-03-06 11:59:16.000000',3),(94,'2018-03-06 11:59:36.000000',3),(95,'2018-03-06 12:01:32.000000',3),(96,'2018-03-06 12:01:41.000000',3),(97,'2018-03-06 12:01:41.000000',3),(98,'2018-03-06 12:04:34.000000',3),(99,'2018-03-06 12:08:25.000000',3),(100,'2018-03-06 12:11:46.000000',3);
/*!40000 ALTER TABLE `session_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menus`
--

DROP TABLE IF EXISTS `user_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(30) NOT NULL,
  `jobRole_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_menus_jobRole_id_d722fbfe_fk_emp_jobrole_id` (`jobRole_id`),
  CONSTRAINT `user_menus_jobRole_id_d722fbfe_fk_emp_jobrole_id` FOREIGN KEY (`jobRole_id`) REFERENCES `emp_jobrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menus`
--

LOCK TABLES `user_menus` WRITE;
/*!40000 ALTER TABLE `user_menus` DISABLE KEYS */;
INSERT INTO `user_menus` VALUES (1,'locations',1),(2,'warehouse',1),(3,'products',1),(4,'positions',1),(5,'requisition',1),(6,'issue',1),(7,'requisition',2),(8,'requisition',3),(9,'requisition',4),(10,'requisition',5),(11,'requisition',8),(12,'grouphead',10),(13,'production',2);
/*!40000 ALTER TABLE `user_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobRole_id` int(11) NOT NULL,
  `userId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_jobRole_id_e4fb3ebb_fk_emp_jobrole_id` (`jobRole_id`),
  KEY `user_roles_userId_id_00da4eeb_fk_jts_employees_id` (`userId_id`),
  CONSTRAINT `user_roles_jobRole_id_e4fb3ebb_fk_emp_jobrole_id` FOREIGN KEY (`jobRole_id`) REFERENCES `emp_jobrole` (`id`),
  CONSTRAINT `user_roles_userId_id_00da4eeb_fk_jts_employees_id` FOREIGN KEY (`userId_id`) REFERENCES `jts_employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,3),(2,1,4),(3,8,3),(4,8,4),(5,8,5),(6,7,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 12:46:26
