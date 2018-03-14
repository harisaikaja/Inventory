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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add inv_status',7,'add_inv_status'),(20,'Can change inv_status',7,'change_inv_status'),(21,'Can delete inv_status',7,'delete_inv_status'),(22,'Can add jts_employees',8,'add_jts_employees'),(23,'Can change jts_employees',8,'change_jts_employees'),(24,'Can delete jts_employees',8,'delete_jts_employees'),(25,'Can add inv_quantity',9,'add_inv_quantity'),(26,'Can change inv_quantity',9,'change_inv_quantity'),(27,'Can delete inv_quantity',9,'delete_inv_quantity'),(28,'Can add jts_products',10,'add_jts_products'),(29,'Can change jts_products',10,'change_jts_products'),(30,'Can delete jts_products',10,'delete_jts_products'),(31,'Can add inv_location',11,'add_inv_location'),(32,'Can change inv_location',11,'change_inv_location'),(33,'Can delete inv_location',11,'delete_inv_location'),(34,'Can add production',12,'add_production'),(35,'Can change production',12,'change_production'),(36,'Can delete production',12,'delete_production'),(37,'Can add jts_departments',13,'add_jts_departments'),(38,'Can change jts_departments',13,'change_jts_departments'),(39,'Can delete jts_departments',13,'delete_jts_departments'),(40,'Can add family_details',14,'add_family_details'),(41,'Can change family_details',14,'change_family_details'),(42,'Can delete family_details',14,'delete_family_details'),(43,'Can add inv_material type',15,'add_inv_materialtype'),(44,'Can change inv_material type',15,'change_inv_materialtype'),(45,'Can delete inv_material type',15,'delete_inv_materialtype'),(46,'Can add inv_warehouse',16,'add_inv_warehouse'),(47,'Can change inv_warehouse',16,'change_inv_warehouse'),(48,'Can delete inv_warehouse',16,'delete_inv_warehouse'),(49,'Can add emp_jobrole',17,'add_emp_jobrole'),(50,'Can change emp_jobrole',17,'change_emp_jobrole'),(51,'Can delete emp_jobrole',17,'delete_emp_jobrole'),(52,'Can add emp_location',18,'add_emp_location'),(53,'Can change emp_location',18,'change_emp_location'),(54,'Can delete emp_location',18,'delete_emp_location'),(55,'Can add requisition_details',19,'add_requisition_details'),(56,'Can change requisition_details',19,'change_requisition_details'),(57,'Can delete requisition_details',19,'delete_requisition_details'),(58,'Can add inv_ unit of measure',20,'add_inv_unitofmeasure'),(59,'Can change inv_ unit of measure',20,'change_inv_unitofmeasure'),(60,'Can delete inv_ unit of measure',20,'delete_inv_unitofmeasure'),(61,'Can add user_roles',21,'add_user_roles'),(62,'Can change user_roles',21,'change_user_roles'),(63,'Can delete user_roles',21,'delete_user_roles'),(64,'Can add requisition',22,'add_requisition'),(65,'Can change requisition',22,'change_requisition'),(66,'Can delete requisition',22,'delete_requisition'),(67,'Can add inv_products',23,'add_inv_products'),(68,'Can change inv_products',23,'change_inv_products'),(69,'Can delete inv_products',23,'delete_inv_products'),(70,'Can add inv_material category',24,'add_inv_materialcategory'),(71,'Can change inv_material category',24,'change_inv_materialcategory'),(72,'Can delete inv_material category',24,'delete_inv_materialcategory'),(73,'Can add user_menus',25,'add_user_menus'),(74,'Can change user_menus',25,'change_user_menus'),(75,'Can delete user_menus',25,'delete_user_menus'),(76,'Can add inv_position',26,'add_inv_position'),(77,'Can change inv_position',26,'change_inv_position'),(78,'Can delete inv_position',26,'delete_inv_position');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(17,'InventoryApp','emp_jobrole'),(18,'InventoryApp','emp_location'),(14,'InventoryApp','family_details'),(11,'InventoryApp','inv_location'),(24,'InventoryApp','inv_materialcategory'),(15,'InventoryApp','inv_materialtype'),(26,'InventoryApp','inv_position'),(23,'InventoryApp','inv_products'),(9,'InventoryApp','inv_quantity'),(7,'InventoryApp','inv_status'),(20,'InventoryApp','inv_unitofmeasure'),(16,'InventoryApp','inv_warehouse'),(13,'InventoryApp','jts_departments'),(8,'InventoryApp','jts_employees'),(10,'InventoryApp','jts_products'),(12,'InventoryApp','production'),(22,'InventoryApp','requisition'),(19,'InventoryApp','requisition_details'),(25,'InventoryApp','user_menus'),(21,'InventoryApp','user_roles'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'InventoryApp','0001_initial','2018-02-16 12:31:19.439931'),(2,'contenttypes','0001_initial','2018-02-16 12:31:20.407789'),(3,'auth','0001_initial','2018-02-16 12:31:33.063483'),(4,'admin','0001_initial','2018-02-16 12:31:35.632024'),(5,'admin','0002_logentry_remove_auto_add','2018-02-16 12:31:35.943333'),(6,'contenttypes','0002_remove_content_type_name','2018-02-16 12:31:37.395802'),(7,'auth','0002_alter_permission_name_max_length','2018-02-16 12:31:37.547669'),(8,'auth','0003_alter_user_email_max_length','2018-02-16 12:31:37.708352'),(9,'auth','0004_alter_user_username_opts','2018-02-16 12:31:37.809260'),(10,'auth','0005_alter_user_last_login_null','2018-02-16 12:31:38.574272'),(11,'auth','0006_require_contenttypes_0002','2018-02-16 12:31:38.614689'),(12,'auth','0007_alter_validators_add_error_messages','2018-02-16 12:31:38.662992'),(13,'auth','0008_alter_user_username_max_length','2018-02-16 12:31:40.355918'),(14,'sessions','0001_initial','2018-02-16 12:31:41.132348'),(15,'InventoryApp','0002_auto_20180216_1253','2018-02-16 12:54:01.012079'),(16,'InventoryApp','0003_auto_20180226_1904','2018-02-26 19:04:33.618940'),(17,'InventoryApp','0004_auto_20180226_1945','2018-02-26 19:46:03.899327'),(18,'InventoryApp','0003_auto_20180228_1316','2018-02-28 13:17:05.123325'),(19,'InventoryApp','0003_auto_20180228_1317','2018-02-28 13:18:02.227683');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_position`
--

LOCK TABLES `inv_position` WRITE;
/*!40000 ALTER TABLE `inv_position` DISABLE KEYS */;
INSERT INTO `inv_position` VALUES (1,'tester',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_products`
--

LOCK TABLES `inv_products` WRITE;
/*!40000 ALTER TABLE `inv_products` DISABLE KEYS */;
INSERT INTO `inv_products` VALUES (1,'Etr','Tester','For Current Testing','null','Taparia','','yes',40,10,'yes','yes','yes',41,10,5,1,1,1,1),(2,'C8PMC','8 pin male connector','Simple and easy connection','','-','','yes',10,10,'no','no','no',10,10,50,1,1,1,1),(3,'C8PFC','8Pin female connctor','Simple and easy connection','','-','','yes',20,10,'no','no','no',20,10,50,1,1,1,1),(4,'C10PMC','10 Pin Male connect or','Simple and connection','','-','','yes',30,10,'no','no','no',30,10,50,1,1,1,1),(5,'C10PFC','10 Pin female connector','Simple and easy connection','-','-','','yes',30,10,'no','no','no',30,10,50,1,1,1,1),(6,'CGSME','GSM Module','GSM module is used to establish communication between a computer and a GSM System','','','','yes',500,10,'no','no','yes',500,10,30,1,1,1,1),(7,'CSIM8L','Sim 800L','The sim 800L module supports quada-band GSM/GPRS networks, available for GPRS and SMS messages data remote transmission','','','','yes',350,10,'no','yes','yes',350,10,50,1,1,1,1),(8,'CDCPM','D.C Pin male ','DC connector is an electrical connector for supplying direct current ( d.c ) power.','','','','no',9,10,'no','no','no',9,30,100,1,1,1,1),(9,'CF2PRS','Female 2Pin Relement Big','For connecting pcb to switches and leds  ','ATTC','','','yes',5,10,'no','no','no',10,40,100,1,1,1,1),(10,'CF2PRB','Female 2pin Relement ','For connecting pcb\'s to switches and led\'s','2510','','','yes',10,10,'no','no','no',8,50,200,1,1,1,1),(11,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(12,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(13,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(14,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(15,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(16,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(17,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(18,'CF4PR','Female 4pin Relement','For Connecting Pcb\'s to switches and Led\'s','2510','','','yes',15,10,'no','no','no',12,30,100,1,1,1,1),(19,'CF6PR','Female 6Pin Relement','For Connecting Pcb\' to Switches and Led\'s','2510','','','yes',30,10,'no','no','yes',20,30,100,1,1,1,1),(20,'CBB','Breadboard','A Breadboard is a construction base for prototyping of elecctrons','','','','yes',100,10,'yes','no','no',90,6,20,1,1,1,1),(21,'','Magnetic Door Sensors ','Magnetic Door Sensor is so intelligent that it sends an alert to your cell phone or email address in the event of a security breach','','','','yes',250,10,'yes','no','no',250,10,50,1,1,1,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_quantity`
--

LOCK TABLES `inv_quantity` WRITE;
/*!40000 ALTER TABLE `inv_quantity` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_status`
--

LOCK TABLES `inv_status` WRITE;
/*!40000 ALTER TABLE `inv_status` DISABLE KEYS */;
INSERT INTO `inv_status` VALUES (1,'active'),(2,'inactive'),(3,'rejected'),(4,'refunded'),(5,'test'),(6,'Not Issued'),(7,'Partially Issued'),(8,'Issued');
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

-- Dump completed on 2018-02-28 14:21:47
